#include "Parser.h"
#include "JsonListener.h"
#include "Arduino.h"

void WriteDout(String value);


Listener::Listener(bool *pointerWriteFlag, String *DescriptionPnt, unsigned int PWriteC, unsigned int PWrite2C, unsigned int PWrite3C, unsigned int PWriteConfigC, const unsigned int *PWaveAddrC, unsigned int DelayC) {
    WriteWF=pointerWriteFlag;
    Description=DescriptionPnt;
    WFPassed=false;
    WriteDescription=false;
    
    PWrite = PWriteC;
    PWrite2 = PWrite2C;
    PWrite3 = PWrite3C;
    PWriteConfig = PWriteConfigC;
    N=0;
    Delay=DelayC;
    PWaveAddr=PWaveAddrC;
    
}

void Listener::whitespace(char c) {
  //Serial.println("whitespace");
}

void Listener::startDocument() {
  //Serial.println("start document");
}

void Listener::key(String key) {
  unsigned long curTime;
 // Serial.println("key: " + key);
  N=0;
  if(key=="WF1"){
    WFPassed=true;
    if(*WriteWF==true){
      digitalWrite(*PWaveAddr, LOW);
      digitalWrite(PWriteConfig, LOW);
      curTime=micros();
      while(micros()-curTime <Delay);
      digitalWrite(PWriteConfig, HIGH);
    }
  }else if(key=="WF2"){
    WFPassed=true;
    if(*WriteWF==true){
      digitalWrite(*PWaveAddr, HIGH);
      digitalWrite(PWriteConfig, LOW);
      curTime=micros();
      while(micros()-curTime <Delay);
      digitalWrite(PWriteConfig, HIGH);
    }
  } else {
    WFPassed=false;
  }
  if(key=="description"){
    WriteDescription=true;
    //Serial.println("WD set!");
  }
}

void Listener::value(String value) {
  N++;
  if(WriteDescription==true){
    *Description+=value;
    WriteDescription=false;   
  }else if(*WriteWF==true and WFPassed==true){
    //Serial.println("value: " + value);
    WriteDout(value);
  } 
}

void Listener::endArray() {
  Serial.println(N);
}

void Listener::endObject() {
  //Serial.println("end object. ");
}

void Listener::endDocument() {
//  Serial.println("end document. ");
  WFPassed=false;
}

void Listener::startArray() {
   //Serial.println("start array. ");
}

void Listener::startObject() {
   //Serial.println("start object. ");
}

void Listener::WriteDout(String value)
{
  unsigned long curTime;
  PIOD->PIO_SODR= value.toInt();
  PIOD->PIO_CODR=~value.toInt()&0x00FF;
  digitalWrite(PWrite, LOW);
  digitalWrite(PWrite2, LOW);
  digitalWrite(PWrite3, LOW);
  PIOD->PIO_SODR= value.toInt();          //two times to ensure data
  PIOD->PIO_CODR=~value.toInt()&0x00FF;
  digitalWrite(PWrite, LOW);
  digitalWrite(PWrite2, LOW);
  digitalWrite(PWrite3, LOW);
  
  curTime=micros();
  while(micros()-curTime <Delay);        //to do: initalize waitting time in constructor
  digitalWrite(PWrite, HIGH);
  digitalWrite(PWrite2, HIGH);
  digitalWrite(PWrite3, HIGH);
  curTime=micros();
  digitalWrite(PWrite, HIGH);
  digitalWrite(PWrite2, HIGH);
  digitalWrite(PWrite3, HIGH);
  while(micros()-curTime <Delay); 
}
