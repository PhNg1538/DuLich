// co sua
package database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.DanhSachTourThamGia;

public class TourDAO implements DAOInterface<DanhSachTourThamGia> {

    public ArrayList<DanhSachTourThamGia> data = new ArrayList<>();

    @Override
    public int insert(DanhSachTourThamGia t) {
        int ketQua = 0;
        try {
            // Bước 1: tạo kết nối đến CSDL
            Connection con = JDBCUtil.getConnection();

            // Bước 2: tạo ra đối tượng statement
            String sql = "INSERT INTO danhsachtour (nametour, tourID, ngaykhoihanh, thoigian, lichtrinh,giatour) "
                    + " VALUES (?,?,?,?,?,?)";

            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, t.getNameTour());
            st.setString(2, t.getID());
            st.setString(3, t.getNgayKhoiHanh());
            st.setString(4, t.getThoiGian());
            st.setString(5, t.getLichTrinhTour());
            st.setInt(6, t.getGiaTour());

            // Bước 3: thực thi câu lệnh SQL
            ketQua = st.executeUpdate();

            // Bước 4:
            System.out.println("Bạn đã thực thi: " + sql);
            System.out.println("Có " + ketQua + " dòng bị thay đổi!");

            // Bước 5:
            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return ketQua;
    }

    @Override
    public ArrayList<DanhSachTourThamGia> selectAll() {
        ArrayList<DanhSachTourThamGia> ketQua = new ArrayList<DanhSachTourThamGia>();
        try {
            // Bước 1: tạo kết nối đến CSDL
            Connection con = JDBCUtil.getConnection();

            // Bước 2: tạo ra đối tượng statement
            String sql = "SELECT * FROM danhsachtour";
            PreparedStatement st = con.prepareStatement(sql);

            // Bước 3: thực thi câu lệnh SQL
            System.out.println(sql);
            ResultSet rs = st.executeQuery();

            // Bước 4:
            while (rs.next()) {
                String nametour = rs.getString("nametour");
                String tourId = rs.getString("tourID");
                String ngaykhoihanh = rs.getString("ngaykhoihanh");
                String thoiGian = rs.getString("thoigian");
                String lichtrinh = rs.getString("lichtrinh");
                int giatour = rs.getInt("giatour");

                DanhSachTourThamGia tour = new DanhSachTourThamGia(nametour, tourId, ngaykhoihanh, thoiGian, lichtrinh, giatour);

                ketQua.add(tour);
            }

            // Bước 5:
            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return ketQua;
    }

    public boolean checkTourExists(String tourID) {
        boolean exists = false;
        String sql = "SELECT COUNT(*) FROM danhsachtour WHERE tourID = ?";

        try (Connection conn = JDBCUtil.getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, tourID);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next() && rs.getInt(1) > 0) {
                    exists = true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return exists;
    }

    @Override
    public DanhSachTourThamGia selectById(DanhSachTourThamGia t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insertAll(ArrayList<DanhSachTourThamGia> arr) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int delete(DanhSachTourThamGia t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int deleteAll(ArrayList<DanhSachTourThamGia> arr) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int update(DanhSachTourThamGia t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
