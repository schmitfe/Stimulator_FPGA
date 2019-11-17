#pragma once

#include "JsonListener.h"


class Listener: public JsonListener {
  private:
    bool *WriteWF;
    String *Description;
    bool WFPassed;
    bool WriteDescription;

    unsigned int PWrite; 
    unsigned int PWrite2;
    unsigned int PWrite3; 
    unsigned int PWriteConfig;
    unsigned int N;
    const unsigned int *PWaveAddr;

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
    
    Listener(bool *pointerWriteFlag, String *DescriptionPnt, unsigned int PWriteC, unsigned int PWrite2C, unsigned int PWrite3C, unsigned int PWriteConfigC, const unsigned int *PWaveAddrC, unsigned int DelayC);
};
