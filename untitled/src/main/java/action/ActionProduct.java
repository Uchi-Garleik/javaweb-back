package action;

import com.google.gson.Gson;
import dao.DAOProduct;
import model.Producto;
import org.apache.commons.io.IOUtils;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Base64;

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
                answer = addProduct(request, response);
                break;
            case "FILTER":
                answer = listProducts(request, response);
                break;
            default:
                answer = "nothing found";
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


        System.out.println("CATEGORIA::" + producto.getCategoria());
        producto.setCategoria(request.getParameter("categoria"));

        // STRING ARRAY FROM "CATEGORIA" PARAMETER

        if (request.getParameter("nombre") != null){
            producto.setNombre(request.getParameter("nombre"));
        }

// Check and set "descripcion" parameter
        if (request.getParameter("descripcion") != null) {
            producto.setDescripcion(request.getParameter("descripcion"));
        }

// Check and set "categoria" parameter
//        if (request.getParameter("categoria") != null) {
//            producto.setCategoria(request.getParameter("categoria"));
//        }

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
        System.out.println("producots a listar");
        System.out.println(json);
        return json;
    }

    private String addProduct(HttpServletRequest request, HttpServletResponse response) {
        String imagePath = "/content/images/" + request.getParameter("idUser") + request.getParameter("nombre") + ".png";
        try{
            Part imagePart = request.getPart("image");

            InputStream imageInputStream = imagePart.getInputStream();
            byte[] imageBytes = IOUtils.toByteArray(imageInputStream);
            imageInputStream.close();

            String encodedString = new String(imageBytes, StandardCharsets.UTF_8);
            encodedString = encodedString.replace("\n","");
            byte[] decodedBytes = Base64.getDecoder().decode(encodedString);
            System.out.println("http://192.168.104.75:8080"+imagePath);
            FileOutputStream fileOutputStream = new FileOutputStream("http://192.168.104.75:8080" + imagePath);
            fileOutputStream.write(decodedBytes);
            fileOutputStream.close();
        }catch(FileNotFoundException e){
            System.out.println("file not found" + e.getMessage());
        }catch(IOException e){
            System.out.println("IO Exception" + e.getMessage());
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }


        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String categoria = request.getParameter("categoria");
        String marca = request.getParameter("marca");
        String talla = request.getParameter("talla");
        String estado = request.getParameter("estado");
        double precio = Double.parseDouble(request.getParameter("precio"));
        String moneda = request.getParameter("moneda");
        int idUser = Integer.parseInt(request.getParameter("idUser"));

        Producto producto = new Producto(nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser, imagePath);
        daoProduct.add(producto);
        return "";
    }
}
