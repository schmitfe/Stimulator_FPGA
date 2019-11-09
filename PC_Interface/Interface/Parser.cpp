#include "Parser.h"
#include "JsonListener.h"
#include "Arduino.h"

void WriteDout(String value);
const unsigned int PinWrite = 63;
const unsigned int PinStoreChan = 65;

Listener::Listener(bool *pointerWriteFlag, String *DescriptionPnt) {
    WriteWF=pointerWriteFlag;
    Description=DescriptionPnt;
    WFPassed=false;
    WriteDescription=false;
}

void Listener::whitespace(char c) {
  //Serial.println("whitespace");
}

void Listener::startDocument() {
  //Serial.println("start document");
}

void Listener::key(String key) {
  const unsigned int PinsWaveadress[] = {64};
  unsigned long curTime;
  Serial.println("key: " + key);
  if(key=="WF1"){
    WFPassed=true;
    if(*WriteWF==true){
      digitalWrite(*PinsWaveadress, LOW);
      digitalWrite(PinStoreChan, LOW);
      curTime=micros();
      while(micros()-curTime <20);
      digitalWrite(PinStoreChan, HIGH);
    }
  }else if(key=="WF2"){
    WFPassed=true;
    if(*WriteWF==true){
      digitalWrite(*PinsWaveadress, HIGH);
      digitalWrite(PinStoreChan, LOW);
      curTime=micros();
      while(micros()-curTime <20);
      digitalWrite(PinStoreChan, HIGH);
    }
  } else {
    WFPassed=false;
  }
  if(key=="description"){
    WriteDescription=true;
    Serial.println("WD set!");
  }
}

void Listener::value(String value) {
  if(WriteDescription==true){
    *Description+=value;
    WriteDescription=false;   
  }else if(*WriteWF==true and WFPassed==true){
    Serial.println("value: " + value);
    WriteDout(value);
  } 
}

void Listener::endArray() {
  //Serial.println("end array. ");
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

void WriteDout(String value)
{
  unsigned long curTime;
  PIOD->PIO_SODR= value.toInt();
  PIOD->PIO_CODR=~value.toInt()&0x00FF;
  digitalWrite(PinWrite, LOW);
  PIOD->PIO_SODR= value.toInt();          //two times to ensure data
  PIOD->PIO_CODR=~value.toInt()&0x00FF;
  digitalWrite(PinWrite, LOW);
  
  curTime=micros();
  while(micros()-curTime <50);
  digitalWrite(PinWrite, HIGH);
  curTime=micros();
  digitalWrite(PinWrite, HIGH);
  while(micros()-curTime <50); 
}
