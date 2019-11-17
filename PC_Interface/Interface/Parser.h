#pragma once

#include "JsonListener.h"


class Listener: public JsonListener {
  private:
    bool *WriteWF;
    String *Description;
    bool WFPassed;
    bool WriteDescription;

    unsigned int PinWrite; 
    unsigned int PinWrite2;
    unsigned int PinWrite3; 
    unsigned int PinStoreChan;
    unsigned int N;
    const unsigned int *PinsWaveadress;

    unsigned int Delay;

  public:
    virtual void whitespace(char c);
  
    virtual void startDocument();

    virtual void key(String key);

    virtual void value(String value);

    virtual void endArray();

    virtual void endObject();

    virtual void endDocument();

    virtual void startArray();

    virtual void startObject();

    virtual void WriteDout(String value);
    
    Listener(bool *pointerWriteFlag, String *DescriptionPnt, unsigned int PinWriteC, unsigned int PinWrite2C, unsigned int PinWrite3C, unsigned int PinStoreChanC, const unsigned int *PinsWaveadressC, unsigned int DelayC);
};
