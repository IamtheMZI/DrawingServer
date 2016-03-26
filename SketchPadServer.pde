import processing.net.*;
import java.net.HttpURLConnection;
import java.io.*;
import java.net.*;


Client cl;
String data;
String[] list={""};
String str="";
int MX=0, MY=0;
int r=0, g=0, b=0;
int stroke = 1;

void setup(){
  size(600,600);
  background(255);
  //cl = new Client(this, "iamthemzi.net16.net/", 80);  // Connect to server on port 80 
  //cl.write("GET / HTTP/1.0\n");  // Use the HTTP "GET" command to ask for a webpage
  //cl.write("Host: my_domain_name.com\n\n"); // Be polite and say who we are
}

void draw(){
  if(mousePressed){
     stroke(r,g,b);
     strokeWeight(stroke);
     line(mouseX,mouseY,pmouseX,pmouseY);
     str = str(mouseX)+" "+str(mouseY)+" "+str(pmouseX)+" "+str(pmouseY)+" "+str(r)+" "+str(g)+" "+str(b)+" "+str(stroke);
     //list=append(list,str);
     list[0]=str;
     saveStrings("Data.txt", list); 
     
//     if (cl.available() > 0) {    // If there's incoming data from the client...
//    data += cl.readString();   // ...then grab it and print it 
//    println(data); 
//  } 
    // write_file();
  }
}

void write_file(){
  try{
        URL oracle = new URL("http://iamthemzi.net16.net/default.php?x="+mouseX+"&y="+mouseY);
        BufferedReader in = new BufferedReader(
        new InputStreamReader(oracle.openStream()));
        in.close();
  } catch (Exception e){
    
  }
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if(stroke > 0 && stroke <6){
  if(e == -1){
    stroke--;
  }else{
    stroke++;
  }
  }
}