package action;

import com.google.gson.Gson;
import dao.DAOProduct;
import model.Producto;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class ActionProduct {
    DAOProduct daoProduct;

    public ActionProduct(){
        daoProduct = new DAOProduct();
    }

    public String execute(HttpServletRequest request, HttpServletResponse response){
        String answer = "";

        String action = request.getParameter("ACTION");
        String[] method = action.split("\\.");

        switch(method[1]){
            case "ADD":
                System.out.println("{adding articles...}");
                answer = addProduct(request, response);
                break;
            case "FILTER":
                System.out.println("{filtering articles...}");
                answer = listProducts(request, response);
                break;
            default:
                System.out.println("no method found");
                break;
        }
        return answer;
    }

    private String listProducts(HttpServletRequest request, HttpServletResponse response){
        ArrayList<Producto> productsList = new ArrayList<>();
        Producto producto = new Producto();
        producto.setNombre("");
        producto.setDescripcion("");
        producto.setCategoria("");
        producto.setMarca("");
        producto.setTalla("");
        producto.setEstado("");
        producto.setPrecio(-1);
        producto.setMoneda("");
        producto.setIdUser(-1);

        if (request.getParameter("nombre") != null){
            producto.setNombre(request.getParameter("nombre"));
        }

// Check and set "descripcion" parameter
        if (request.getParameter("descripcion") != null) {
            System.out.println("LINEA 60");
            producto.setDescripcion(request.getParameter("descripcion"));
        }

// Check and set "categoria" parameter
        if (request.getParameter("categoria") != null) {
            producto.setCategoria(request.getParameter("categoria"));
        }

// Check and set "marca" parameter
        if (request.getParameter("marca") != null) {
            producto.setMarca(request.getParameter("marca"));
        }

// Check and set "talla" parameter
        if (request.getParameter("talla") != null) {
            producto.setTalla(request.getParameter("talla"));
        }

// Check and set "estado" parameter
        if (request.getParameter("estado") != null) {
            producto.setEstado(request.getParameter("estado"));
        }

// Check and set "precio" parameter
        if (request.getParameter("precio") != null) {
            producto.setPrecio(Double.parseDouble(request.getParameter("precio")));
        }

// Check and set "moneda" parameter
        if (request.getParameter("moneda") != null) {
            producto.setMoneda(request.getParameter("moneda"));
        }

// Check and set "idUser" parameter
        if (request.getParameter("idUser") != null) {
            System.out.println("huh");
            producto.setIdUser(Integer.parseInt(request.getParameter("idUser")));
        }
        productsList = new DAOProduct().findAll(producto);

        Gson gson = new Gson();
        String json = "";
        json += "{\"message\": \"Esto es un mensaje de prueba\",\"productsList\": [";

        for (Producto productoAux:productsList) {
            json += gson.toJson(productoAux) + ", ";
        }
        json = json.substring(0, json.length()-2);
        json += "]}";
        return json;
    }

    private String addProduct(HttpServletRequest request, HttpServletResponse response) {
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String categoria = request.getParameter("categoria");
        String marca = request.getParameter("marca");
        String talla = request.getParameter("talla");
        String estado = request.getParameter("estado");
        System.out.println(request.getParameter("estado"));
        double precio = Double.parseDouble(request.getParameter("precio"));
        String moneda = request.getParameter("moneda");
        int idUser = Integer.parseInt(request.getParameter("idUser"));

        Producto producto = new Producto(nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser);
        daoProduct.add(producto);

        /*String jsonResponseObject= "{\n" +
                "    \"message\": \"Este es un mensaje de ejemplo\",\n" +
                "    \"productList\": [\n" +
                "        {\n" +
                "            \"username\": \"username1\",\n" +
                "            \"token\": \"token1\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"username\": \"username2\",\n" +
                "            \"token\": \"token2\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"username\": \"username3\",\n" +
                "            \"token\": \"token3\"\n" +
                "        }\n" +
                "    ]\n" +
                "}";*/
        return "";
    }
}
