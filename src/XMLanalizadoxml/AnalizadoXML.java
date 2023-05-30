/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package XMLanalizadoxml;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import javax.swing.text.html.HTMLEditorKit;
import javax.swing.text.html.HTMLEditorKit.Parser;

/**
 *
 * @author HP
 */
public class AnalizadoXML {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            /* Crear el analizador léxico */
            Scanner scanner = new Scanner(new FileReader("C:\\Users\\HP\\Desktop\\prueba.xml"));

            /* Crear el analizador sintáctico */
            Parser parser = new Parser(scanner, new DefaultParserCallback(), true) {

                @Override
                public void parse(Reader r, HTMLEditorKit.ParserCallback cb, boolean ignoreCharSet) throws IOException {
                    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                }
            };

            /* Ejecutar el análisis sintáctico */
            parser.parse();

            /* Si el análisis finaliza correctamente, puedes realizar cualquier acción adicional aquí */

        } catch (FileNotFoundException e) {
            System.err.println("Archivo no encontrado: " + e.getMessage());
        } catch (Exception e) {
            System.err.println("Error durante el análisis sintáctico: " + e.getMessage());
        }
       }

    private static class DefaultParserCallback {

        public DefaultParserCallback() {
        }
    }
}
