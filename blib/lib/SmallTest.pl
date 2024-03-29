#!/usr/bin/perl -w

use ExtUtils::testlib;
use FTDId2xx qw(FT_BITMODE_ASYNC);

print "FT_CreateDeviceInfoList Called: ".FTDId2xx::FT_CreateDeviceInfoList($text)."\n";
print "FT_CreateDeviceInfoList Feedback: ".$text."\n";

print "Create Object: ".($PortA=FTDId2xx->new(0))."\n";
print "Object: ".$PortA."\n";
$fb=0;
print "FT_SetBitMode: ".FTDId2xx::FT_SetBitMode($PortA, 0xFF,FT_BITMODE_ASYNC)."\n";

print "FT_SetTimeouts: ".($PortA->FT_SetTimeouts(1000,1))."\n";


$data[0]=0;
for( $i=0; $i <4; $i++) {
	if( $data[0] > 0) {
		$data[0]=0;
	} else { 
		$data[0]=0xFF;
	}
#	print "FTDI_Write : ".($PortA->FT_Write(\@data,1,$fb) == FT_OK ? "FT_OK" : "ERROR")."\n";
	print "FTDI_Write : ".(FTDId2xx::FT_Write($PortA,\@data,1,$fb))."\n";
	print "FTDI_Write number of bytes: ".$fb."\n";
	sleep(5);
	
}

exit;
