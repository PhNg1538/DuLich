//co sua
package database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.DiaDiem;
import model.TacGia;
import model.TheLoai;

public class DAODiaDiem implements DAOInterface<DiaDiem> {

	@Override
//	public ArrayList<DiaDiem> selectAll() {
//		ArrayList<DiaDiem> ketQua = new ArrayList<DiaDiem>();
//		try {
//			// Bước 1: tạo kết nối đến CSDL
//			Connection con = JDBCUtil.getConnection();
//
//			// Bước 2: tạo ra đối tượng statement
//			String sql = "SELECT * FROM sanpham";
//			PreparedStatement st = con.prepareStatement(sql);
//
//			// Bước 3: thực thi câu lệnh SQL
//			System.out.println(sql);
//			ResultSet rs = st.executeQuery();
//
//			// Bước 4:
//			while (rs.next()) {
//				String masanpham = rs.getString("masanpham");
//				String tensanpham = rs.getString("tensanpham");
//				String matacgia = rs.getString("matacgia");
//				int namxuatban = rs.getInt("namxuatban");
//				double gianhap = rs.getDouble("gianhap");
//				double giagoc = rs.getDouble("giagoc");
//				double giaban = rs.getDouble("giaban");
//				int soluong = (int) rs.getDouble("soluong");
//				String matheloai = rs.getString("matheloai");
//				String ngonngu = rs.getString("ngonngu");
//				String mota = rs.getString("mota");
//
//				TacGia tacGia = (new TacGiaDAO().selectById(new TacGia(matacgia, "", null, "")));
//				TheLoai theLoai = (new TheLoaiDAO().selectById(new TheLoai(matheloai, "")));
//
//				DiaDiem sp = new DiaDiem(masanpham, tensanpham, tacGia, namxuatban, gianhap, giagoc, giaban, soluong,
//						theLoai, ngonngu, mota);
//				ketQua.add(sp);
//			}
//
//			// Bước 5:
//			JDBCUtil.closeConnection(con);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//		return ketQua;
//	}

	
	public DiaDiem selectById(DiaDiem t) {

		DiaDiem ketQua = null;
		try {
			Connection con = JDBCUtil.getConnection();

			String sql = "SELECT * FROM diadiem WHERE ID=?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, t.getID());

			ResultSet rs = st.executeQuery();
			while (rs.next()) {
                            String id= rs.getString("ID");
				String name= rs.getString("name");
                                int giaTour= rs.getInt("giatour");
                                String thoiGian= rs.getString("thoigian");
                                float thoiLuong= rs.getFloat("thoiluong");
                                String diaDiem= rs.getString("diadiem");
                                String linkggMap=rs.getString("linkggmap");
                                String img= rs.getString("img");
                                String img2= rs.getString("img2");
                                String img3= rs.getString("img3");

				ketQua = new DiaDiem(id, name, giaTour, thoiGian, thoiLuong, diaDiem, linkggMap, img, img2, img3);
				break;
			}

			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ketQua;
	}

//	@Override
//	public int insert(DiaDiem t) {
//		int ketQua = 0;
//		try {
//			// Bước 1: tạo kết nối đến CSDL
//			Connection con = JDBCUtil.getConnection();
//
//			// Bước 2: tạo ra đối tượng statement
//			String sql = "INSERT INTO sanpham (masanpham,tensanpham, matacgia, namxuatban,"
//					+ " gianhap, giagoc, giaban, soluong, matheloai, ngonngu, mota) "
//					+ " VALUES (?,?,?,?,?,?,?,?,?,?,?)";
//
//			PreparedStatement st = con.prepareStatement(sql);
//			st.setString(1, t.getMaDiaDiem());
//			st.setString(2, t.getTenDiaDiem());
//			st.setString(3, t.getTacGia().getMaTacGia());
//			st.setInt(4, t.getNamXuatBan());
//			st.setDouble(5, t.getGiaNhap());
//			st.setDouble(6, t.getGiaGoc());
//			st.setDouble(7, t.getGiaBan());
//			st.setInt(8, t.getSoLuong());
//			st.setString(9, t.getTheLoai().getMaTheLoai());
//			st.setString(10, t.getNgonNgu());
//			st.setString(11, t.getMoTa());
//
//			// Bước 3: thực thi câu lệnh SQL
//			ketQua = st.executeUpdate();
//
//			// Bước 4:
//			System.out.println("Bạn đã thực thi: " + sql);
//			System.out.println("Có " + ketQua + " dòng bị thay đổi!");
//
//			// Bước 5:
//			JDBCUtil.closeConnection(con);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//		return ketQua;
//	}
//
//	@Override
//	public int insertAll(ArrayList<DiaDiem> arr) {
//		int dem = 0;
//		for (DiaDiem DiaDiem : arr) {
//			dem += this.insert(DiaDiem);
//		}
//		return dem;
//	}
//
//	@Override
//	public int delete(DiaDiem t) {
//		int ketQua = 0;
//		try {
//			// Bước 1: tạo kết nối đến CSDL
//			Connection con = JDBCUtil.getConnection();
//
//			// Bước 2: tạo ra đối tượng statement
//			String sql = "DELETE from sanpham " + " WHERE masanpham=?";
//
//			PreparedStatement st = con.prepareStatement(sql);
//			st.setString(1, t.getMaDiaDiem());
//
//			// Bước 3: thực thi câu lệnh SQL
//			System.out.println(sql);
//			ketQua = st.executeUpdate();
//
//			// Bước 4:
//			System.out.println("Bạn đã thực thi: " + sql);
//			System.out.println("Có " + ketQua + " dòng bị thay đổi!");
//
//			// Bước 5:
//			JDBCUtil.closeConnection(con);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//		return ketQua;
//	}

//	@Override
//	public int deleteAll(ArrayList<DiaDiem> arr) {
//		int dem = 0;
//		for (DiaDiem DiaDiem : arr) {
//			dem += this.delete(DiaDiem);
//		}
//		return dem;
//	}
//
//	@Override
//	public int update(DiaDiem t) {
//		int ketQua = 0;
//		try {
//			// Bước 1: tạo kết nối đến CSDL
//			Connection con = JDBCUtil.getConnection();
//
//			// Bước 2: tạo ra đối tượng statement
//			String sql = "UPDATE sanpham " + " SET " + "tensanpham=?, matacgia=?, namxuatban=?, gianhap=?, giagoc=?, "
//					+ "giaban=?, soluong=?, matheloai=?, ngonngu=?, mota=?" + " WHERE masanpham=?";
//
//			PreparedStatement st = con.prepareStatement(sql);
//			st.setString(1, t.getTenDiaDiem());
//			st.setString(2, t.getTacGia().getMaTacGia());
//			st.setInt(3, t.getNamXuatBan());
//			st.setDouble(4, t.getGiaNhap());
//			st.setDouble(5, t.getGiaGoc());
//			st.setDouble(6, t.getGiaBan());
//			st.setInt(7, t.getSoLuong());
//			st.setString(8, t.getTheLoai().getMaTheLoai());
//			st.setString(9, t.getNgonNgu());
//			st.setString(10, t.getMoTa());
//			st.setString(11, t.getMaDiaDiem());
//			// Bước 3: thực thi câu lệnh SQL
//
//			System.out.println(sql);
//			ketQua = st.executeUpdate();
//
//			// Bước 4:
//			System.out.println("Bạn đã thực thi: " + sql);
//			System.out.println("Có " + ketQua + " dòng bị thay đổi!");
//
//			// Bước 5:
//			JDBCUtil.closeConnection(con);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//		return ketQua;
//	}

    @Override
    public ArrayList<DiaDiem> selectAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insert(DiaDiem t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insertAll(ArrayList<DiaDiem> arr) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int delete(DiaDiem t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int deleteAll(ArrayList<DiaDiem> arr) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int update(DiaDiem t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}