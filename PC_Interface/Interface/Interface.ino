

/*
   Copyright (c) 2019 Stefan Kremser
   This software is licensed under the MIT License. See the license file for details.
   Source: github.com/spacehuhn/SimpleCLI
*/

/*
   This is an example with all types of arguments and commands, error check and help command.
   No callbacks are used here, you can check the callback example for that.

   PLEASE NOTE: 115200 is the baud rate and Newline is enabled in the serial monitor
*/



// Inlcude Library Command Line
#include <SimpleCLI.h>
#include <SPI.h>
#include "SdFat.h"
#include "sdios.h"
//#include "Pins.h"


#include "JsonStreamingParser.h"
#include "JsonListener.h"
#include "Parser.h"


#define Channels 2


// Create CLI Object
SimpleCLI cli;

// Commands
Command cmdLs;
Command cmdRm;
Command cmdStore;
Command cmdReset;
Command cmdWF;
Command cmdTrig;
Command cmdHelp;
Command cmdDesc;
Command cmdAmpli;
Command cmdInterIv;
Command cmdInterPer;
Command cmdWave;


// set up variables using the SD utility library functions:
// File system object.
SdFat sd;


// Directory file.
SdFile root;
// Use for file creation in folders.
SdFile file;



//----------Pins---------------//
const unsigned int trig[] = {49, 51, 53};    //trig all, ch0 -x

const unsigned int PinRESET = 68;
const unsigned int PinRESET_CH = 69;

const unsigned int PinsInterPeriod[] = {54, 55, 56, 57, 58, 59, 60, 61};
const unsigned int PinsInterInterval[] = {3, 4, 5, 6, 7,8,9,10};

const unsigned int PinsAmplitude[] = {18, 19, 20, 21};

const unsigned int PinWrite = 63;
const unsigned int PinWriteEn = 62;
const unsigned int PinsWaveadress[] = {64};
const unsigned int PinStoreChan = {65};
const unsigned int PinsChanAdress[] = {66};

const unsigned int PinsDout[] = {25, 25, 27, 28, 14, 15, 29, 11};  // Has to be on same port of SAM, Arduino ports are not ordered!

const unsigned int chipSelect = 52;    //SD-Card



//---------------buffers---------------------//
char bufferJson[40];



//-------Configurations of channels----------//

//-------struct to store data of channels----//
typedef struct {
  int amplitude;
  int iinterval;
  int iperiod;
  int waveadress;
} SChannelSet;

SChannelSet *ChannelSet = NULL;


void setup() {
  int ii;

  for ( ii = 0; ii < sizeof(trig) / sizeof(trig[0]); ii = ii + 1 ) {
    pinMode(trig[ii], OUTPUT);
    digitalWrite(trig[ii], LOW);
  }


  for ( ii = 0; ii < sizeof(PinsInterPeriod) / sizeof(PinsInterPeriod[0]); ii = ii + 1 ) {
    pinMode(PinsInterPeriod[ii], OUTPUT);
    digitalWrite(PinsInterPeriod[ii], LOW);
  }

  for ( ii = 0; ii < sizeof(PinsInterInterval) / sizeof(PinsInterInterval[0]); ii = ii + 1 ) {
    pinMode(PinsInterInterval[ii], OUTPUT);
    digitalWrite(PinsInterInterval[ii], LOW);
  }

  for ( ii = 0; ii < sizeof(PinsWaveadress) / sizeof(PinsWaveadress[0]); ii = ii + 1 ) {
    pinMode(PinsWaveadress[ii], OUTPUT);
    digitalWrite(PinsWaveadress[ii], LOW);
  }

  for ( ii = 0; ii < sizeof(PinsAmplitude) / sizeof(PinsAmplitude[0]); ii = ii + 1 ) {
    pinMode(PinsAmplitude[ii], OUTPUT);
    digitalWrite(PinsAmplitude[ii], LOW);
  }

  for ( ii = 0; ii < sizeof(PinsChanAdress) / sizeof(PinsChanAdress[0]); ii = ii + 1 ) {
    pinMode(PinsChanAdress[ii], OUTPUT);
    digitalWrite(PinsChanAdress[ii], LOW);
  }

  for ( ii = 0; ii < sizeof(PinsDout) / sizeof(PinsDout[0]); ii = ii + 1 ) {
    pinMode(PinsDout[ii], OUTPUT);
    digitalWrite(PinsDout[ii], LOW);
  }

  pinMode(PinRESET, OUTPUT);
  digitalWrite(PinRESET, LOW);

  pinMode(PinRESET_CH, OUTPUT);
  digitalWrite(PinRESET_CH, LOW);

  
  pinMode(PinWrite, OUTPUT);
  digitalWrite(PinWrite, LOW);

  pinMode(PinWriteEn, OUTPUT);
  digitalWrite(PinWriteEn, LOW);

  pinMode(PinStoreChan, OUTPUT);
  digitalWrite(PinStoreChan, LOW);


  Serial.begin(115200);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }
  Serial.println("\nInitializing SD card...");

  // we'll use the initialization code from the utility libraries
  // since we're just testing if the card is working!
  // Initialize at the highest speed supported by the board that is
  // not over 50 MHz. Try a lower speed if SPI errors occur.

  if (!sd.begin(chipSelect, SD_SCK_MHZ(50))) {
    sd.initErrorHalt();
  }

  ChannelSet = (SChannelSet*) malloc(sizeof * ChannelSet * (Channels + 1));

  //Channel zero contains defaultvalues
  ChannelSet[0].amplitude = 1;
  ChannelSet[0].iinterval = 0;
  ChannelSet[0].iperiod = 0;
  ChannelSet[0].waveadress = 0;

  for ( ii = 1; ii < Channels + 1 ; ii = ii + 1 ) {
    ChannelSet[ii].amplitude = ChannelSet[0].amplitude;
    ChannelSet[ii].iinterval = ChannelSet[0].iinterval;
    ChannelSet[ii].iperiod = ChannelSet[0].iperiod;
    ChannelSet[ii].waveadress = ChannelSet[0].waveadress;
  }


  cmdLs = cli.addCmd("ls");

  cmdRm = cli.addCmd("rm");
  cmdRm.addPosArg("file");

  cmdStore = cli.addCmd("store");
  cmdStore.addPosArg("file");

  cmdReset = cli.addCmd("reset");
  cmdReset.addPosArg("ID");

  cmdWF = cli.addCmd("WF");
  cmdWF.addPosArg("file");
  cmdWF.addPosArg("ID");

  cmdTrig = cli.addCmd("trig");
  cmdTrig.addPosArg("ID");

  cmdDesc = cli.addCmd("descrip");
  cmdDesc.addPosArg("file");

  cmdAmpli = cli.addCmd("amp");
  cmdAmpli.addPosArg("ID");
  cmdAmpli.addPosArg("value");

  cmdInterIv = cli.addCmd("iniv");
  cmdInterIv.addPosArg("ID");
  cmdInterIv.addPosArg("value");

  cmdInterPer = cli.addCmd("inper");
  cmdInterPer.addPosArg("ID");
  cmdInterPer.addPosArg("value");

  cmdWave = cli.addCmd("wave");
  cmdWave.addPosArg("ID");
  cmdWave.addPosArg("value");

  cmdHelp = cli.addCommand("help");

  Serial.println("CLI: type help for commandlist");

}

void loop() {
  if (Serial.available()) {
    String input = Serial.readStringUntil('\n');

    if (input.length() > 0) {
      Serial.print("# ");

      cli.parse(input);
    }
  }

  if (cli.available()) {
    Command c = cli.getCmd();

    int argNum = c.countArgs();

    Serial.print("> ");
    Serial.print(c.getName());
    Serial.print(' ');

    for (int i = 0; i < argNum; ++i) {
      Argument arg = c.getArgument(i);
      // if(arg.isSet()) {
      Serial.print(arg.toString());
      Serial.print(' ');
    }

    Serial.println();

    if (c == cmdLs) {
      listFolder();
    } else if (c == cmdRm) {
      RemoveDir (c.getArgument(0));
    } else if (c == cmdStore) {
      SaveFile(c.getArgument(0));

    } else if (c == cmdDesc) {
      description(c.getArgument(0));

    } else if (c == cmdAmpli) {
      setAmplitude(c.getArgument(0), c.getArgument(1));
    } else if (c == cmdInterIv) {
      setInterInterval(c.getArgument(0), c.getArgument(1));
    } else if (c == cmdInterPer) {
      setInterPeriod(c.getArgument(0), c.getArgument(1));

    } else if (c == cmdWave) {
      setWaveadress(c.getArgument(0), c.getArgument(1));
    } else if (c == cmdReset) {
      reset(c.getArgument(0));
    } else if (c == cmdWF) {
      loadWaveform(c.getArgument(0), c.getArgument(1));
    } else if (c == cmdTrig) {
      Argument str = c.getArgument(0);
      trigger(str.getValue().toInt());

    } else if (c == cmdHelp) {
      Serial.println("Help:");
      Serial.println(cli.toString());
    }
  }

  if (cli.errored()) {
    CommandError cmdError = cli.getError();

    Serial.print("ERROR: ");
    Serial.println(cmdError.toString());

    if (cmdError.hasCommand()) {
      Serial.print("Did you mean \"");
      Serial.print(cmdError.getCommand().toString());
      Serial.println("\"?");
    }
  }
}

void storeChannel(Argument id)
{
      unsigned long curTime;
      digitalWrite(PinStoreChan, LOW);
      curTime=micros();
      Channeladress(id.getValue().toInt());
      writePinArray(ChannelSet[id.getValue().toInt()].amplitude, PinsAmplitude, sizeof(PinsAmplitude) / sizeof(PinsAmplitude[0]));
      writePinArray(ChannelSet[id.getValue().toInt()].iperiod, PinsInterPeriod, sizeof(PinsInterPeriod) / sizeof(PinsInterPeriod[0]));
      writePinArray(ChannelSet[id.getValue().toInt()].iinterval, PinsInterInterval, sizeof(PinsInterInterval) / sizeof(PinsInterInterval[0]));
      writePinArray( ChannelSet[id.getValue().toInt()].waveadress, PinsWaveadress, sizeof(PinsWaveadress) / sizeof(PinsWaveadress[0]));
      while(micros()-curTime <2);
      digitalWrite(PinStoreChan, HIGH);
}

void writePinArray(int value, const unsigned int *Pins, int NPins)
{
  int ii;
  for(ii = 0; ii < NPins ; ii = ii + 1 ) {
        if( bitRead(value,ii)==1){
          digitalWrite(Pins[NPins-1-ii],HIGH);
        } else{
          digitalWrite(Pins[NPins-1-ii],LOW);
        }
      }
}

void setAmplitude(Argument id, Argument value)
{
  ChannelSet[id.getValue().toInt()].amplitude = value.getValue().toInt();
  storeChannel(id);
}

void setInterInterval(Argument id, Argument value)
{
  ChannelSet[id.getValue().toInt()].iinterval = value.getValue().toInt();
  storeChannel(id);
}

void setWaveadress(Argument id, Argument value)
{
  ChannelSet[id.getValue().toInt()].waveadress = value.getValue().toInt();
  storeChannel(id);
}


void setInterPeriod(Argument id, Argument value)
{
  ChannelSet[id.getValue().toInt()].iperiod = value.getValue().toInt();
  storeChannel(id);
}


void loadWaveform(Argument pathStr, Argument id)
{
  bool WriteWFs = true; //Let parser write to FPGA
  String Description = "";
  reset(id);
  JsonStreamingParser parser;
  Listener listener(&WriteWFs, &Description);   //bad way of introducing additional parameters
  parser.setListener(&listener);
  File myFile;
  if (!sd.chdir("/")) {
    Serial.println("Error: opening root!");
  }
  digitalWrite(PinWriteEn, HIGH);
  sd.chdir("WF");
  char path[12];
  pathStr.getValue().toCharArray(path, 12);
  myFile = sd.open(path, FILE_READ);
  Channeladress(id.getValue().toInt());

  while (myFile.available()) {
    parser.parse(myFile.read());
  }
  myFile.close();
  digitalWrite(PinWriteEn, LOW);
  Channeladress(0);
  WriteWFs = false;
}

void description(Argument pathStr)
{
  bool WriteWFs = false;
  String Description = "";
  JsonStreamingParser parser;
  Listener listener(&WriteWFs, &Description);   //bad way of introducing additional parameters
  parser.setListener(&listener);
  File myFile;
  if (!sd.chdir("/")) {
    Serial.println("Error: opening root!");
  }
  sd.chdir("WF");
  char path[12];
  pathStr.getValue().toCharArray(path, 12);
  myFile = sd.open(path, FILE_READ);
  WriteWFs = false; //Let parser write to FPGA
  while (myFile.available()) {
    parser.parse(myFile.read());
  }
  myFile.close();

  Serial.print("Description of " + pathStr.getValue() + " : ");
  Serial.println(Description);
  Description = "";
}


void listFolder()
{
  if (!sd.chdir("/")) {
    Serial.println("Error: opening root!");
  }
  if (!sd.chdir("WF")) {
    sd.mkdir("WF");
    sd.chdir("WF");
  }
  sd.ls("/WF", LS_R);
}




void trigger(int id)
{
  unsigned long curTime;
  digitalWrite(trig[id], HIGH);
  curTime = micros();
  while (micros() - curTime < 10);
  digitalWrite(trig[id], LOW);
}

void reset(Argument id)
{
  int ii = 0;

  unsigned long curTime;
  if (id.getValue().toInt() == 0) {
    digitalWrite(PinRESET, HIGH);
    curTime = micros();
    while (micros() - curTime < 2);
    digitalWrite(PinRESET, LOW);

    for ( ii = 1; ii < Channels + 1 ; ii = ii + 1 ) {
      ChannelSet[ii].amplitude = ChannelSet[0].amplitude;
      ChannelSet[ii].iinterval = ChannelSet[0].iinterval;
      ChannelSet[ii].iperiod = ChannelSet[0].iperiod;
      ChannelSet[ii].waveadress = ChannelSet[0].waveadress;
    }

  } else {
    digitalWrite(PinRESET_CH, HIGH);
    curTime = micros();
    ChannelSet[id.getValue().toInt()].amplitude = ChannelSet[0].amplitude;
    ChannelSet[id.getValue().toInt()].iinterval = ChannelSet[0].iinterval;
    ChannelSet[id.getValue().toInt()].iperiod = ChannelSet[0].iperiod;
    ChannelSet[id.getValue().toInt()].waveadress = ChannelSet[0].waveadress;

    while (micros() - curTime < 2);
    storeChannel(id);

    digitalWrite(PinRESET_CH, LOW);
    storeChannel(id);

  }
}

void Channeladress(int id)
{

  int adress=0;
  if (id == 0) {
    digitalWrite(*PinsChanAdress, LOW);
  } else {
//   writePinArray(id-1, PinsChanAdress, sizeof(PinsChanAdress) / sizeof(PinsChanAdress[0]));
  }
}

void RemoveDir (Argument str)
{
  char path[12];
  str.getValue().toCharArray(path, 12);

  if (!sd.chdir("/")) {
    Serial.println("Error: opening root!");
  }
  sd.chdir("WF");
  sd.remove(path);
}

void SaveFile (Argument str)
{
  File myFile;
  char path[12];
  uint8_t incomingByte;
  str.getValue().toCharArray(path, 12);

  if (!sd.chdir("/")) {
    Serial.println("Error: opening root!");
  }
  sd.chdir("WF");
  sd.remove(path);
  myFile = sd.open(path, FILE_WRITE);
  Serial.println("Please send File.");
  while (Serial.available() == 0);
  // read the incoming byte:
  incomingByte = Serial.read();
  while (incomingByte != 10) {
    myFile.write(incomingByte);
    while (Serial.available() == 0);
    incomingByte = Serial.read();
  }
  myFile.close();
  Serial.println("File saved!");
}


/*extern void WriteDout(Argument value)
{
  unsigned long curTime;
  PIOD->PIO_SODR= value.getValue().toInt();
  PIOD->PIO_CODR=~value.getValue().toInt()&0x000F;
  digitalWrite(PinWrite, LOW);
  curTime=micros();
  while(micros()-curTime <2);
  digitalWrite(PinWrite, HIGH);
  curTime=micros();
  while(micros()-curTime <1); 
}
*/
