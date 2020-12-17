import java.util.Date;

interface BarangInterface{
public void check () ;
}

    class ManajemenInventori implements BarangInterface{
    protected String idBarang;  
    protected String nama;
    protected int harga;
    protected int jumlahBarangMasuk; 
    protected int jumlahBarangKeluar;
    protected int jumlah;

    public ManajemenInventori(String idBarang, String nama, int harga, int jumlahBarangMasuk, int jumlahBarangKeluar){ 
        this.idBarang = idBarang;
        this.nama = nama;
        this.harga = harga;
        this.jumlahBarangMasuk = jumlahBarangMasuk; 
        this.jumlahBarangKeluar = jumlahBarangKeluar;

    }
    
    public void check(){
        if(this.idBarang == this.idBarang){
            System.out.println("Id = B2656");
        }
        if(this.nama == this.nama){
            System.out.println("Barang = Kopi");
        }
        if(this.harga == this.harga){
            System.out.println("Harga = 4000");
        }
        if(this.jumlahBarangMasuk == this.jumlahBarangMasuk){
            System.out.println("Jumlah Barang Masuk = 100 ");
        }
        if(this.jumlahBarangKeluar == this.jumlahBarangKeluar){
            System.out.println("Jumlah Barang Keluar = 50 ");
        }
            jumlah = jumlahBarangMasuk - jumlahBarangKeluar;
            System.out.println("Jumlah = " + jumlah );
    }
}


    public class Barang {  
    public static void main(String[] args){ 

        Date date = new Date();
        System.out.println(date.toString());

        String idBarang = "B2656"; 
        String nama = "Kopi";
        int harga = 4000;
        int jumlahBarangMasuk = 100;
        int jumlahBarangKeluar = 50;

        ManajemenInventori MI = new ManajemenInventori(idBarang, nama, harga, jumlahBarangMasuk, jumlahBarangKeluar);
        MI.check();
    }
}
