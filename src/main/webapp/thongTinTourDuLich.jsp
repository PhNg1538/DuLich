<%@page import="model.KhachHang"%>
<%@page import="model.DiaDiem"%>
<%@page import="database.DAODiaDiem"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath();
%> 

<%
    // Lấy ID địa điểm từ tham số request
    String diaDiemId = request.getParameter("id");

    // Kiểm tra ID có hợp lệ không
    DiaDiem diaDiem = null;
    if (diaDiemId != null && !diaDiemId.isEmpty()) {
        // Sử dụng DAO để lấy thông tin địa điểm từ CSDL
        DAODiaDiem daoDiaDiem = new DAODiaDiem();
        diaDiem = daoDiaDiem.selectById(new DiaDiem(diaDiemId));
    }

    // Nếu không tìm thấy thông tin, báo lỗi
    if (diaDiem == null) {
        out.println("<h3>Không tìm thấy thông tin địa điểm!</h3>");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Bookstore</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    </head>
    <body>
        <!-- header -->
        <jsp:include page="header.jsp" />

        <!-- Page content -->
        <div class="container mt-4">
            <div class="row">


                <!-- Slider and Products -->
                <div class="col-lg-9">
                    <!-- Slider -->
                    <div id="carouselExampleIndicators" class="carousel slide mb-4"
                         data-bs-ride="true">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleIndicators"
                                    data-bs-slide-to="0" class="active" aria-current="true"
                                    aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators"
                                    data-bs-slide-to="1" aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators"
                                    data-bs-slide-to="2" aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="<%= diaDiem.getImg1()%>" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="<%= diaDiem.getImg3()%>" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="<%= diaDiem.getImg2()%>" class="d-block w-100" alt="...">
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button"
                                data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button"
                                data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>




                    <div class="container mt-5"> 
                        <h3 class="text-center mb-4">Thông tin chi tiết về: <%= diaDiem.getName()%></h3>
                        <div class="card shadow">
                            <div class="card-body">
                                <h5 class="card-title mb-4">Thông tin chung</h5>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <strong>Giá tour:</strong> <%= diaDiem.getGiaTour()%> VND
                                    </li>
                                    <li class="list-group-item">
                                        <strong>Ngày khả dụng:</strong> <%= diaDiem.getThoiGianDienRa()%>
                                    </li>
                                    <li class="list-group-item">
                                        <strong>Thời lượng:</strong> <%= diaDiem.getThoiLuong()%> giờ
                                    </li>
                                    <li class="list-group-item">
                                        <strong>Địa chỉ:</strong> 
                                        <a href="<%= diaDiem.getLinkGGmap()%>" target="_blank" rel="noopener noreferrer">
                                            <%= diaDiem.getDiaDiem()%>
                                        </a>
                                    </li>
                                </ul>
                                <button id="bookTourBtn" class="btn btn-primary mt-4">Đặt tour</button>
                            </div>
                        </div>
                    </div>



                    <!-- End Products -->
                </div>
                <!-- End Slider and Products -->
            </div>
        </div>
        <!-- End Page content -->

        <!-- footer -->
        <%@include file="footer.jsp" %>

    </body>
</html>