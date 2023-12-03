package org.example;

public class Contador {
    private int contador;

    public Contador(int contador) {
        this.contador = contador;
    }

    public Contador() {
    }

    public int getContador() {
        return contador;
    }

    public void setContador(int contador) {
        this.contador = contador;
    }

    public synchronized int sumar(){
        contador = contador+1;
        try {
            Thread.sleep(100);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        return contador;
    }



}
