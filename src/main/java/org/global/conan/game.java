package org.global.conan;

public class game {

    public static void main(String[] args) {
        HelloBean hello = new HelloBean();
        System.out.println(hello.getName());
        hello.setName("org/global/conan");
        hello.getName();
    }
}
