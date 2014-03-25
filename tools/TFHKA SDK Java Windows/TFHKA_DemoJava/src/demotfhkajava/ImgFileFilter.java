

package demotfhkajava;

import java.io.*;
import javax.swing.filechooser.FileFilter;

public class ImgFileFilter extends FileFilter{
public boolean accept(File f) {
if (f.getPath().endsWith(".txt") ||
f.getPath().endsWith(".dat")||
f.isDirectory()) return true;
else return false;
}
public String getDescription() {
return "Archivos de texto"; } }