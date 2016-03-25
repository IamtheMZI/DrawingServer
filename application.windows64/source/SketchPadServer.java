import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.net.*; 
import java.io.BufferedWriter; 
import java.io.FileWriter; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class SketchPadServer extends PApplet {





Server serv;
String[] list={""};
String str="";
int MX=0, MY=0;
int c = color(255,0,0);

public void setup(){
  
  background(255);
}

public void draw(){
  if(mousePressed){
     noStroke();
     fill(255,0,0);
     ellipse(mouseX,mouseY,10,10);
     noFill();
     str = str(mouseX)+" "+str(mouseY);
     //list=append(list,str);
     list[0]=str;
     saveStrings("Data.txt", list); 
     //write_file(str);
  }
}
public void write_file(String str){
  BufferedWriter output = null;
try {
  output = new BufferedWriter(new FileWriter("Data.txt", true)); //the true will append the new data
  output.write(str+"\n");
}
catch (IOException e) {
  println("It Broke");
  e.printStackTrace();
}
finally {
  if (output != null) {
    try {
      output.close();
    } catch (IOException e) {
      println("Error while closing the writer");
    }
  }
}
}
public void mouseDragged() 
{
  
} 
  public void settings() {  size(600,600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "SketchPadServer" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
