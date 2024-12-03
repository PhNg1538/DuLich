<%-- 
    Document   : DanhSachTour
    Created on : Nov 30, 2024, 2:34:50 PM
    Author     : phat
--%>
<%@page import="database.TourDAO"%>
<%@page import="model.DanhSachTourThamGia"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Danh Sách Tour Đã Đặt</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
        <script
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
            integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
        crossorigin="anonymous"></script>
        <style>
            table {
                border-collapse: collapse;
                width: 100%;
            }
            th, td {
                border: 1px solid #ddd;
                text-align: left;
                padding: 8px;
            }
            th {
                background-color: #f2f2f2;
            }
        </style>
    </head>
    <body>

<jsp:include page="../header.jsp" />

        <h3>Danh Sách Tour Đã Đặt</h3>

        <table>
            <thead>
                <tr>
                    <th>Tên Tour</th>
                    <th>Mã Tour</th>
                    <th>Thời gian</th>
                    <th>Thời Lượng ( ngày)</th>
                    <th>Lịch Trình</th>
                    <th>Giá Tour</th>
                </tr>
            </thead>
            <tbody>
                <%

                    TourDAO tourDAO = new TourDAO();
                    ArrayList<DanhSachTourThamGia> bookedTours = tourDAO.selectAll();
                    if (bookedTours != null && !bookedTours.isEmpty()) {
                        for (model.DanhSachTourThamGia tour : bookedTours) {
                %>
                <tr>
                    <td><%= tour.getNameTour()%></td>
                    <td><%= tour.getID()%></td>
                    <td><%= tour.getNgayKhoiHanh()%></td>
                    <td><%= tour.getThoiGian()%></td>
                    <td><%= tour.getLichTrinhTour()%></td>
                    <td><%= tour.getGiaTour()%></td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="6" style="text-align: center;">Không có tour nào đã được đặt.</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>

        <a href="/index.jsp">Quay lại đặt tour</a>
        
        <jsp:include page="../footer.jsp" />
    </body>
</html>
