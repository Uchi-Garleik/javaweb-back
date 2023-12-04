package org.example;

public class Contador {
    private int cuenta;

    public Contador() {

    }

    public Contador(int cuenta) {
        this.cuenta = cuenta;
    }

    public int getCuenta() {
        return cuenta;
    }

    public void setCuenta(int cuenta) {
        this.cuenta = cuenta;
    }

    public  int suma(){
        cuenta += 1;
//        try {
//            Thread.sleep(100);
//        } catch (InterruptedException e) {
//            throw new RuntimeException(e);
//        }
        return cuenta;
    }

}
