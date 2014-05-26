int compassAddress = 0x42 >> 1; // From datasheet compass address is 0x42
// shift the address 1 bit right, the Wire library only needs the 7
// most significant bits for the address
int COMPheadingDEG = 0; 

void compass()
{
  // put your main code here, to run repeatedly: 
  // step 1: instruct sensor to read echoes 
  Wire.beginTransmission(compassAddress);  // transmit to device
  // the address specified in the datasheet is 66 (0x42) 
  // but i2c adressing uses the high 7 bits so it's 33 
  Wire.write('A');        // command sensor to measure angle  
  Wire.endTransmission(); // stop transmitting 

  // step 2: wait for readings to happen 
  delay(10); // datasheet suggests at least 6000 microseconds 

  // step 3: request reading from sensor 
  Wire.requestFrom(compassAddress, 2); // request 2 bytes from slave device #33 

  // step 4: receive reading from sensor 
  if (Wire.available()>=2) // if two bytes were received 
  { 
    COMPheadingDEG = Wire.read();  // receive high byte (overwrites previous reading) 
    COMPheadingDEG = COMPheadingDEG << 8; // shift high byte to be high 8 bits 
    COMPheadingDEG += Wire.read(); // receive low byte as lower 8 bits 
    COMPheadingDEG /= 10;


  } 
  else{    
    COMPheadingDEG=-999;

  }
}


