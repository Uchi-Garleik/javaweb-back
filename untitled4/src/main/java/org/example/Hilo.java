package org.example;

public class Hilo extends Thread {

    Contador contador;

    public Hilo(Contador contador) {
        this.contador = contador;
    }

    public Hilo() {
    }

    @Override
    public void run(){
        int v = contador.suma();
        System.out.println("Hilo numero: " + v);
    }
}
