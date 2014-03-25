/*
 * Main.java
 *
 * Created on 28 de abril de 2009, 05:52 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package demotfhkajava;

/**
 *
 * @author The Factory
 */
public class Main {
    
    /** Creates a new instance of Main */
    public Main() {
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
         java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Form1().setVisible(true);
            }
        });
    }
    
}
