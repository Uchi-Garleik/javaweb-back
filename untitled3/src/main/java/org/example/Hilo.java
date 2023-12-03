package org.example;

public class Hilo extends Thread{

    private Contador contador;

    public Hilo(Contador contador) {
        this.contador = contador;
    }

    public Hilo() {
    }

    @Override
    public void run() {
        int valor = contador.sumar();
        System.out.println("hola: " + valor);
    }
}
