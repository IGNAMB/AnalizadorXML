/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package XMLanalizadoxml;
import java.io.FileReader;
import javax.swing.text.html.HTMLEditorKit.ParserCallback;
/**
 *
 * @author HP
 */
public class MyParser {

    static void parse(FileReader fileReader, DefaultParserCallback defaultParserCallback, boolean b) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    private Scanner scanner;
    private ParserCallback callback;
    private boolean ignoreCharSet;

    public MyParser(Scanner scanner, ParserCallback callback, boolean ignoreCharSet) {
        this.scanner = scanner;
        this.callback = callback;
        this.ignoreCharSet = ignoreCharSet;
    }

    public void parse() {
        // Lógica del análisis sintáctico
    }
}
