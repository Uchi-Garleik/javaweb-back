import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.URL;

@WebServlet("/MyServlet")
@MultipartConfig
public class MyServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String apiKey = "RGAPI-83c9b63c-206b-4e47-b3db-9f8aa40c80ba"; // Replace with a secure method to obtain the API key
        String apiUrl = "https://europe.api.riotgames.com/riot/account/v1/accounts/by-riot-id/uchi/bigd?api_key=" + apiKey;
        HttpURLConnection connection = null;
        System.out.println("1");
        try {
            // Create a URL object
            URL url = new URL(apiUrl);

            // Open a connection to the URL
            connection = (HttpURLConnection) url.openConnection();
            System.out.println("2");
            // Set the "Accept" header to accept any media type
            connection.setRequestProperty("Accept", "*/*");

            // Set the request method to GET
            connection.setRequestMethod("GET");
            System.out.println("3");
            // Get the response code
            connection.connect();
            System.out.println("5");
            int responseCode = connection.getResponseCode();
            System.out.println("4");
            // Check if the request was successful (status code 200)
            if (responseCode == HttpURLConnection.HTTP_OK) {
                // Read the response from the input stream
                BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                String line;
                StringBuilder res = new StringBuilder();
                System.out.println("5");
                while ((line = reader.readLine()) != null) {
                    res.append(line);
                }

                reader.close();

                // Print the response
                System.out.println("Response: " + res.toString());
            } else {
                System.out.println("Error: " + responseCode);
            }

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            // Close the connection in a finally block to ensure cleanup
            if (connection != null) {
                connection.disconnect();
            }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // Handle POST requests if needed
    }
}
