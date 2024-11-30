/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author phat
 */
public class DanhSachTourThamGia {

    private String nameTour;
    private String ID;
    private String ngayKhoiHanh;
    private String thoiGian;
    private String lichTrinhTour;
    private int giaTour;

    public DanhSachTourThamGia(String nameTour, String ID, String ngayKhoiHanh, String thoiGian, String lichTrinhTour, int giaTour) {
        this.nameTour = nameTour;
        this.ID = ID;
        this.ngayKhoiHanh = ngayKhoiHanh;
        this.thoiGian = thoiGian;
        this.lichTrinhTour = lichTrinhTour;
        this.giaTour = giaTour;
    }

    public String getNameTour() {
        return nameTour;
    }

    public void setNameTour(String nameTour) {
        this.nameTour = nameTour;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getNgayKhoiHanh() {
        return ngayKhoiHanh;
    }

    public void setNgayKhoiHanh(String ngayKhoiHanh) {
        this.ngayKhoiHanh = ngayKhoiHanh;
    }

    public String getThoiGian() {
        return thoiGian;
    }

    public void setThoiGian(String thoiGian) {
        this.thoiGian = thoiGian;
    }

    public String getLichTrinhTour() {
        return lichTrinhTour;
    }

    public void setLichTrinhTour(String lichTrinhTour) {
        this.lichTrinhTour = lichTrinhTour;
    }

    public int getGiaTour() {
        return giaTour;
    }

    public void setGiaTour(int giaTour) {
        this.giaTour = giaTour;
    }

}
