/*
 Universidad Da Vinci De Guatemala 
 Campus Central Huehuetenango
 Curso: Compiladores 
 Analizador XML
 */
package XMLanalizadoxml;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import javax.swing.text.html.HTMLEditorKit;
import javax.swing.text.html.HTMLEditorKit.Parser;
import javax.swing.text.html.HTMLEditorKit.ParserCallback;

/**
 *
 * @author Ignacio Ambrocio
 */
public class AnalizadoXML {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws FileNotFoundException {
        Parser parser = new Parser(); // Constructor sin argumentos
        parser.parse(new FileReader("C:\\Users\\HP\\Desktop\\prueba.xml"), new DefaultParserCallback(), true);
    }

    static class Parser extends ParserCallback {
        // Implementar métodos de la interfaz ParserCallback
        public void parse(Reader reader, ParserCallback callback, boolean ignoreWhitespace) {
            // Implementación del método parse
        }
    }
}
//