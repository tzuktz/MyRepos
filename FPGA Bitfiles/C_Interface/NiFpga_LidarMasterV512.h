/*
 * Generated with the FPGA Interface C API Generator 15.0.0
 * for NI-RIO 15.0.0 or later.
 */

#ifndef __NiFpga_LidarMasterV51_h__
#define __NiFpga_LidarMasterV51_h__

#ifndef NiFpga_Version
   #define NiFpga_Version 1500
#endif

#include "NiFpga.h"

/**
 * The filename of the FPGA bitfile.
 *
 * This is a #define to allow for string literal concatenation. For example:
 *
 *    static const char* const Bitfile = "C:\\" NiFpga_LidarMasterV51_Bitfile;
 */
#define NiFpga_LidarMasterV51_Bitfile "NiFpga_LidarMasterV51.lvbitx"

/**
 * The signature of the FPGA bitfile.
 */
static const char* const NiFpga_LidarMasterV51_Signature = "85FB447FB8E1F797D9F999D79719C8BE";

typedef enum
{
   NiFpga_LidarMasterV51_IndicatorBool_Configured = 0x1000E,
   NiFpga_LidarMasterV51_IndicatorBool_EnableSignal = 0x80010086,
   NiFpga_LidarMasterV51_IndicatorBool_PLLLocked = 0x10012,
   NiFpga_LidarMasterV51_IndicatorBool_Port1Bit4 = 0x1002A,
   NiFpga_LidarMasterV51_IndicatorBool_Port1Bit5 = 0x1002E,
   NiFpga_LidarMasterV51_IndicatorBool_UserCommandIdle = 0x10002,
   NiFpga_LidarMasterV51_IndicatorBool_UserError = 0x1000A,
} NiFpga_LidarMasterV51_IndicatorBool;

typedef enum
{
   NiFpga_LidarMasterV51_IndicatorU8_Port0 = 0x10026,
   NiFpga_LidarMasterV51_IndicatorU8_Port1 = 0x10032,
   NiFpga_LidarMasterV51_IndicatorU8_UserCommandStatus = 0x10006,
} NiFpga_LidarMasterV51_IndicatorU8;

typedef enum
{
   NiFpga_LidarMasterV51_IndicatorI16_PulseIndex = 0x80010072,
} NiFpga_LidarMasterV51_IndicatorI16;

typedef enum
{
   NiFpga_LidarMasterV51_IndicatorU16_ActiveLedIndex = 0x8001008A,
   NiFpga_LidarMasterV51_IndicatorU16_MainState = 0x8001009A,
} NiFpga_LidarMasterV51_IndicatorU16;

typedef enum
{
   NiFpga_LidarMasterV51_ControlBool_EndOfPulseGen = 0x8001008E,
   NiFpga_LidarMasterV51_ControlBool_FillVga = 0x8001003A,
   NiFpga_LidarMasterV51_ControlBool_LedScanDebEn = 0x10022,
   NiFpga_LidarMasterV51_ControlBool_PowerBit0 = 0x10016,
   NiFpga_LidarMasterV51_ControlBool_PowerBit1 = 0x1001A,
   NiFpga_LidarMasterV51_ControlBool_SamplingEnable = 0x80010092,
   NiFpga_LidarMasterV51_ControlBool_ScanMode = 0x10036,
   NiFpga_LidarMasterV51_ControlBool_SensScanDeb = 0x8001004E,
   NiFpga_LidarMasterV51_ControlBool_SingleFrame = 0x80010096,
   NiFpga_LidarMasterV51_ControlBool_WriteSensDataEn = 0x80010046,
} NiFpga_LidarMasterV51_ControlBool;

typedef enum
{
   NiFpga_LidarMasterV51_ControlU8_ActiveSensDeb = 0x8001004A,
} NiFpga_LidarMasterV51_ControlU8;

typedef enum
{
   NiFpga_LidarMasterV51_ControlI16_PulsePerLed = 0x800100A2,
   NiFpga_LidarMasterV51_ControlI16_VgaData = 0x8001006E,
   NiFpga_LidarMasterV51_ControlI16_WriteSensAdd = 0x80010042,
   NiFpga_LidarMasterV51_ControlI16_WriteSenseData = 0x8001003E,
} NiFpga_LidarMasterV51_ControlI16;

typedef enum
{
   NiFpga_LidarMasterV51_ControlU16_ActiveLedIndexDeb = 0x1001E,
   NiFpga_LidarMasterV51_ControlU16_AiNoOfSamples = 0x80010056,
   NiFpga_LidarMasterV51_ControlU16_DOActivate = 0x80010062,
   NiFpga_LidarMasterV51_ControlU16_NoOfLeds = 0x8001009E,
   NiFpga_LidarMasterV51_ControlU16_NoOfSamples = 0x8001005E,
   NiFpga_LidarMasterV51_ControlU16_PulseEnd = 0x80010066,
   NiFpga_LidarMasterV51_ControlU16_SendAiCMD = 0x8001005A,
   NiFpga_LidarMasterV51_ControlU16_StartAcq = 0x80010076,
   NiFpga_LidarMasterV51_ControlU16_StartES = 0x8001007E,
   NiFpga_LidarMasterV51_ControlU16_StartPulse = 0x8001007A,
   NiFpga_LidarMasterV51_ControlU16_StopES = 0x80010082,
} NiFpga_LidarMasterV51_ControlU16;

typedef enum
{
   NiFpga_LidarMasterV51_ControlU32_VgaAdd = 0x80010068,
} NiFpga_LidarMasterV51_ControlU32;

typedef enum
{
   NiFpga_LidarMasterV51_ControlArrayU8_SensorMap = 0x80010050,
} NiFpga_LidarMasterV51_ControlArrayU8;

typedef enum
{
   NiFpga_LidarMasterV51_ControlArrayU8Size_SensorMap = 96,
} NiFpga_LidarMasterV51_ControlArrayU8Size;

typedef enum
{
   NiFpga_LidarMasterV51_PeerToPeerWriterFifoU32_P2PWr = 0,
} NiFpga_LidarMasterV51_PeerToPeerWriterFifoU32;

#endif
