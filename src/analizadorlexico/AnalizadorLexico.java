/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizadorlexico;

import java.io.File;

/**
 *
 * @author yeisonfernando
 */
public class AnalizadorLexico {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String path = "D:/yeisonfernando/Documents/NetBeansProjects/AnalizadorLexico/src/analizadorlexico/Lex.flex";
        File file=new File(path);
        jflex.Main.generate(file);
        
    }
    
}
