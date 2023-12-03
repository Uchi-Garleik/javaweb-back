package org.example;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public synchronized static void main(String[] args) {
        Contador contador = new Contador(0);

        for (int i = 0; i<100; i++){
            Hilo hilo = new Hilo(contador);
            hilo.start();
        }
    }
}