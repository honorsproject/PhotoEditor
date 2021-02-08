import java.awt.event.*;
import javax.swing.event.*;
import java.awt.*;
import javax.swing.*;
import javax.imageio.*;

JFrame frame;

void setup() {
  //styling
  com.formdev.flatlaf.FlatDarkLaf.install();

  //hook into Processing frame and setup
  //fullScreen();
  //surface.setSize(800, 600);
  JFrame frame = (JFrame) ((processing.awt.PSurfaceAWT.SmoothCanvas) surface.getNative()).getFrame();
  //frame.getRootPane().setWindowDecorationStyle(JRootPane.FRAME);
  frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
  frame.setResizable(true);
  frame.setTitle("Photo Editor");

  Model m = new Model();
  View v = new View(frame);
  Controller c = new Controller(m, v);

  //temporary icon
  surface.setIcon(loadImage("https://image.flaticon.com/icons/png/512/196/196278.png"));

  noLoop();
}
