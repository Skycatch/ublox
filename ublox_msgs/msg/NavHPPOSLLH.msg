# NAV-HPPOSLLH (0x01 0x14)
# High Precision Geodetic Position Solution
#
# See important comments concerning validity of position given in section
# Navigation Output Filters.
# This message outputs the Geodetic position in the currently selected 
# Ellipsoid. The default is the WGS84 Ellipsoid, but can be changed with the
# message CFG-DAT.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 20

uint8 VERSION           # Version 
uint8[3] reserved       # Reserved

uint32 iTOW             # GPS Millisecond Time of Week [ms]

int32 lon               # Longitude [deg / 1e-7]
int32 lat               # Latitude [deg / 1e-7]
int32 height            # Height above Ellipsoid [mm]
int32 hMSL              # Height above mean sea level [mm]

int8 lonHp              # High precision longitude [1e-2]
int8 latHp              # High precision latitude [1e-2]
int8 heightHp           # High precision height above ellipsoid 1e-4
int8 hMSLHp             # High precision height above mean sea level 1e-4
uint32 hAcc             # Horizontal Accuracy Estimate [1e-4]
uint32 vAcc             # Vertical Accuracy Estimate [1e-4]
