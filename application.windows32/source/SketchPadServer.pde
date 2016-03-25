import processing.net.*;
import java.io.BufferedWriter;
import java.io.FileWriter;

Server serv;
String[] list={""};
String str="";
int MX=0, MY=0;
color c = color(255,0,0);

void setup(){
  size(600,600);
  background(255);
}

void draw(){
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
void write_file(String str){
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
void mouseDragged() 
{
  
} 