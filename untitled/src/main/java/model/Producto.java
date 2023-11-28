package model;

import java.util.ArrayList;

public class Producto {
    private String nombre;
    private String descripcion;
    //    private String howToStoreAnImage;
    private String categoria;
    private String marca;
    private String talla;
    private String estado;
    private double precio;
    private ArrayList<String> categoriaArray;
    private String moneda;
    private int idUser;
    private String imagePath;
    private boolean enVenta;

    public boolean isEnVenta() {
        return enVenta;
    }

    public void setEnVenta(boolean enVenta) {
        this.enVenta = enVenta;
    }

    public Producto() {

    }

    public Producto(String nombre, String descripcion, String categoria, String marca, String talla, String estado, double precio, String moneda, int idUser, String imagePath) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.categoria = categoria;
        this.marca = marca;
        this.talla = talla;
        this.estado = estado;
        this.precio = precio;
        this.moneda = moneda;
        this.idUser = idUser;
        this.imagePath = imagePath;
        categoriaArray = new ArrayList<>();
        //  TODO: Could maybe add a default path to a default product icon to the imagepath
    }

    public ArrayList<String> getCategoriaArray() {
        return categoriaArray;
    }

    public void setCategoriaArray(ArrayList<String> categoriaArray) {
        this.categoriaArray = categoriaArray;
    }

    public void addCategoryToCategoryArray(String category){
        getCategoriaArray().add(category);
    }

    @Override
    public String toString() {
        return "Producto{" +
                "nombre='" + nombre + '\'' +
                ", descripcion='" + descripcion + '\'' +
                ", categoria='" + categoria + '\'' +
                ", marca='" + marca + '\'' +
                ", talla=" + talla +
                ", estado='" + estado + '\'' +
                ", precio=" + precio +
                ", moneda='" + moneda + '\'' +
                ", idUser=" + idUser +
                '}';
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getTalla() {
        return talla;
    }

    public void setTalla(String talla) {
        this.talla = talla;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getMoneda() {
        return moneda;
    }

    public void setMoneda(String moneda) {
        this.moneda = moneda;
    }
}

