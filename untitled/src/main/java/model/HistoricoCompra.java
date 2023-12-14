package model;

public class HistoricoCompra {
    private int idUsuario;
    private int idProducto;
    private String nombreProducto;
    private String nombreUsuario;
    private String fechaCompra;
    private double precioCompra;
    private int id;
    private String descripcionProducto;
    private String imagePath;



    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public HistoricoCompra(String nombreProducto, String nombreUsuario, String fechaCompra, int precioCompra) {
        this.nombreProducto = nombreProducto;
        this.nombreUsuario = nombreUsuario;
        this.fechaCompra = fechaCompra;
        this.precioCompra = precioCompra;
    }

    public String getDescripcionProducto() {
        return descripcionProducto;
    }

    public void setDescripcionProducto(String descripcionProducto) {
        this.descripcionProducto = descripcionProducto;
    }

    public HistoricoCompra() {

    }

/*              historicoCompraAux.setId(resultSet.getInt(1));
                historicoCompraAux.setNombreProducto(resultSet.getString(2));
                historicoCompraAux.setDescripcionProducto(resultSet.getString(3));
                historicoCompraAux.setFechaCompra(resultSet.getString(4));
                historicoCompraAux.setPrecioCompra(resultSet.getDouble(5));
    * */

    @Override
    public String toString() {
        return "HistoricoCompra{" +
                "nombreProducto='" + nombreProducto + '\'' +
                ", fechaCompra='" + fechaCompra + '\'' +
                ", precioCompra=" + precioCompra +
                ", imagePath='" + imagePath + '\'' +
                '}';
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getFechaCompra() {
        return fechaCompra;
    }

    public void setFechaCompra(String fechaCompra) {
        this.fechaCompra = fechaCompra;
    }

    public double getPrecioCompra() {
        return precioCompra;
    }

    public void setPrecioCompra(double precioCompra) {
        this.precioCompra = precioCompra;
    }
}

