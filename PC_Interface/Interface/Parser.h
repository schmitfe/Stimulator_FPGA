#pragma once

#include "JsonListener.h"


class Listener: public JsonListener {
  private:
    bool *WriteWF;
    String *Description;
    bool WFPassed;
    bool WriteDescription;

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
    
    Listener(bool *pointerWriteFlag, String *DescriptionPnt);
};
