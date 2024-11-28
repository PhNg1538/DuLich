/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author phat
 */
public class DiaDiem {
    private String ID;
    private String name;
    private int giaTour;
    private String  thoiGianDienRa;
    private float thoiLuong;
    private String diaDiem;
    private String linkGGmap;
    private String img1;
    private String img2;
    private String img3;

    

   

    public DiaDiem(String ID, String name, int giaTour, String thoiGianDienRa, float thoiLuong, String diaDiem, String linkGGmap, String img1, String img2, String img3) {
        this.ID = ID;
        this.name = name;
        this.giaTour = giaTour;
        this.thoiGianDienRa = thoiGianDienRa;
        this.thoiLuong = thoiLuong;
        this.diaDiem = diaDiem;
        this.linkGGmap = linkGGmap;
        this.img1 = img1;
        this.img2 = img2;
        this.img3 = img3;
    }
    

    public DiaDiem(String ID) {
        this.ID = ID;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getGiaTour() {
        return giaTour;
    }

    public void setGiaTour(int giaTour) {
        this.giaTour = giaTour;
    }

    public String getThoiGianDienRa() {
        return thoiGianDienRa;
    }

    public void setThoiGianDienRa(String thoiGianDienRa) {
        this.thoiGianDienRa = thoiGianDienRa;
    }

    public float getThoiLuong() {
        return thoiLuong;
    }

    public void setThoiLuong(float thoiLuong) {
        this.thoiLuong = thoiLuong;
    }

    public String getDiaDiem() {
        return diaDiem;
    }

    public void setDiaDiem(String diaDiem) {
        this.diaDiem = diaDiem;
    }

    public String getLinkGGmap() {
        return linkGGmap;
    }

    public void setLinkGGmap(String linkGGmap) {
        this.linkGGmap = linkGGmap;
    }

    
    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    public String getImg3() {
        return img3;
    }

    public void setImg3(String img3) {
        this.img3 = img3;
    }
    
}
