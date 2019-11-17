#include "Parser.h"
#include "JsonListener.h"
#include "Arduino.h"

void WriteDout(String value);


Listener::Listener(bool *pointerWriteFlag, String *DescriptionPnt, unsigned int PinWriteC, unsigned int PinWrite2C, unsigned int PinWrite3C, unsigned int PinStoreChanC, const unsigned int *PinsWaveadressC, unsigned int DelayC) {
    WriteWF=pointerWriteFlag;
    Description=DescriptionPnt;
    WFPassed=false;
    WriteDescription=false;
    
    PinWrite = PinWriteC;
    PinWrite2 = PinWrite2C;
    PinWrite3 = PinWrite3C;
    PinStoreChan = PinStoreChanC;
    N=0;
    Delay=DelayC;
    PinsWaveadress=PinsWaveadressC;
    
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
      digitalWrite(*PinsWaveadress, LOW);
      digitalWrite(PinStoreChan, LOW);
      curTime=micros();
      while(micros()-curTime <Delay);
      digitalWrite(PinStoreChan, HIGH);
    }
  }else if(key=="WF2"){
    WFPassed=true;
    if(*WriteWF==true){
      digitalWrite(*PinsWaveadress, HIGH);
      digitalWrite(PinStoreChan, LOW);
      curTime=micros();
      while(micros()-curTime <Delay);
      digitalWrite(PinStoreChan, HIGH);
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
  digitalWrite(PinWrite, LOW);
  digitalWrite(PinWrite2, LOW);
  digitalWrite(PinWrite3, LOW);
  PIOD->PIO_SODR= value.toInt();          //two times to ensure data
  PIOD->PIO_CODR=~value.toInt()&0x00FF;
  digitalWrite(PinWrite, LOW);
  digitalWrite(PinWrite2, LOW);
  digitalWrite(PinWrite3, LOW);
  
  curTime=micros();
  while(micros()-curTime <Delay);        //to do: initalize waitting time in constructor
  digitalWrite(PinWrite, HIGH);
  digitalWrite(PinWrite2, HIGH);
  digitalWrite(PinWrite3, HIGH);
  curTime=micros();
  digitalWrite(PinWrite, HIGH);
  digitalWrite(PinWrite2, HIGH);
  digitalWrite(PinWrite3, HIGH);
  while(micros()-curTime <Delay); 
}
