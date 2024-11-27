package controller;

import database.DonHangDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import model.DonHang;
import model.KhachHang;

@WebServlet("/don-hang")
public class DonHangController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DonHangController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");

        if (khachHang == null) {
            response.sendRedirect("khachhang/dangnhap.jsp");
            return;
        }

        DonHangDAO donHangDAO = new DonHangDAO();
        ArrayList<DonHang> allDonHang = donHangDAO.selectAll();
        ArrayList<DonHang> donHangCuaKhach = new ArrayList<>();

        for (DonHang dh : allDonHang) {
            if (dh.getKhachHang().getMaKhachHang().equals(khachHang.getMaKhachHang())) {
                donHangCuaKhach.add(dh);
            }
        }

        request.setAttribute("danhSachDonHang", donHangCuaKhach);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/donhang/danhSachDonHang.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
