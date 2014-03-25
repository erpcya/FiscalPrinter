

package demotfhkajava;
import org.jdesktop.layout.*;
public class dlgInput extends javax.swing.JDialog {
private javax.swing.JButton btnAceptar;
//private javax.swing.JTextField input;
private javax.swing.JScrollPane jScrollPane1;
private javax.swing.JTextArea txtInformacion;
public dlgInput(java.awt.Frame parent, boolean modal, String texto, String titulo) {
super(parent, modal);
initComponents();
txtInformacion.setText(texto);
setTitle(titulo);
setLocationRelativeTo(null);
setVisible(true);
}
public dlgInput(java.awt.Dialog parent, boolean modal, String texto, String titulo) {
super(parent, modal);
initComponents();
txtInformacion.setText(texto);
setTitle(titulo);
setLocationRelativeTo(null);
setVisible(true);

}
//public String getResponse(){
//return this.input.getText();
//}       
private void initComponents() {

jScrollPane1 = new javax.swing.JScrollPane();
txtInformacion = new javax.swing.JTextArea();
btnAceptar = new javax.swing.JButton();
//input = new javax.swing.JTextField();

setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
setResizable(false);

txtInformacion.setBackground(new java.awt.Color(240, 240, 240));
txtInformacion.setColumns(20);
txtInformacion.setEditable(false);
txtInformacion.setFont(new java.awt.Font("Tahoma", 0, 12));
txtInformacion.setLineWrap(true);
txtInformacion.setRows(3);
txtInformacion.setWrapStyleWord(true);
jScrollPane1.setViewportView(txtInformacion);

btnAceptar.setText("Aceptar");
btnAceptar.addActionListener(new java.awt.event.ActionListener() {
public void actionPerformed(java.awt.event.ActionEvent evt) {
    btnAceptarActionPerformed(evt);
}
});

GroupLayout layout = new GroupLayout(getContentPane());
getContentPane().setLayout(layout);
layout.setHorizontalGroup(
layout.createParallelGroup(GroupLayout.LEADING)
.add(layout.createSequentialGroup()
    .add(layout.createParallelGroup(GroupLayout.LEADING)
        .add(layout.createSequentialGroup()
            .addContainerGap()
            .add(jScrollPane1, GroupLayout.DEFAULT_SIZE, 265, Short.MAX_VALUE))
        .add(layout.createSequentialGroup()
            .addContainerGap()
//            .addComponent(input, javax.swing.GroupLayout.DEFAULT_SIZE, 265, Short.MAX_VALUE))
//        .addGroup(layout.createSequentialGroup()
//            .addGap(94, 94, 94)
            .add(btnAceptar)))
    .addContainerGap())
);
layout.setVerticalGroup(
layout.createParallelGroup(GroupLayout.LEADING)
.add(layout.createSequentialGroup()
    .addContainerGap()
    .add(jScrollPane1, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
    .addPreferredGap(LayoutStyle.RELATED)
    .add(btnAceptar)
    .addContainerGap(GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
);

pack();
}
private void btnAceptarActionPerformed(java.awt.event.ActionEvent evt) {                               
  this.setVisible(false);
}                                              
}
