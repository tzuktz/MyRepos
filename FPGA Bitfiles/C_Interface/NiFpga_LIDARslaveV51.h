/*
 * Generated with the FPGA Interface C API Generator 15.0.0
 * for NI-RIO 15.0.0 or later.
 */

#ifndef __NiFpga_LIDARslaveV51_h__
#define __NiFpga_LIDARslaveV51_h__

#ifndef NiFpga_Version
   #define NiFpga_Version 1500
#endif

#include "NiFpga.h"

/**
 * The filename of the FPGA bitfile.
 *
 * This is a #define to allow for string literal concatenation. For example:
 *
 *    static const char* const Bitfile = "C:\\" NiFpga_LIDARslaveV51_Bitfile;
 */
#define NiFpga_LIDARslaveV51_Bitfile "NiFpga_LIDARslaveV51.lvbitx"

/**
 * The signature of the FPGA bitfile.
 */
static const char* const NiFpga_LIDARslaveV51_Signature = "985CA1D4733C571EBACDC83DF8F0D7B3";

typedef enum
{
   NiFpga_LIDARslaveV51_IndicatorBool_ConfigurationError = 0x10016,
   NiFpga_LIDARslaveV51_IndicatorBool_DMATimeout = 0x10002,
   NiFpga_LIDARslaveV51_IndicatorBool_EnableSignal = 0x8001003E,
   NiFpga_LIDARslaveV51_IndicatorBool_FirstIterration = 0x80010076,
   NiFpga_LIDARslaveV51_IndicatorBool_SPIIdle = 0x10012,
   NiFpga_LIDARslaveV51_IndicatorBool_SimTrig = 0x80010022,
   NiFpga_LIDARslaveV51_IndicatorBool_SynthesizerLocked = 0x1001A,
} NiFpga_LIDARslaveV51_IndicatorBool;

typedef enum
{
   NiFpga_LIDARslaveV51_IndicatorU8_AISlaveState = 0x80010082,
   NiFpga_LIDARslaveV51_IndicatorU8_SamplesAmpount = 0x80010072,
   NiFpga_LIDARslaveV51_IndicatorU8_SimSensID = 0x8001007A,
   NiFpga_LIDARslaveV51_IndicatorU8_VCSL = 0x8001006E,
} NiFpga_LIDARslaveV51_IndicatorU8;

typedef enum
{
   NiFpga_LIDARslaveV51_IndicatorI16_PulseIndex = 0x8001002E,
} NiFpga_LIDARslaveV51_IndicatorI16;

typedef enum
{
   NiFpga_LIDARslaveV51_IndicatorU16_ActiveLedIndex = 0x80010062,
   NiFpga_LIDARslaveV51_IndicatorU16_MainState = 0x80010056,
} NiFpga_LIDARslaveV51_IndicatorU16;

typedef enum
{
   NiFpga_LIDARslaveV51_ControlBool_Debug = 0x8001002A,
   NiFpga_LIDARslaveV51_ControlBool_DebugValues = 0x80010066,
   NiFpga_LIDARslaveV51_ControlBool_EndOfPulseGen = 0x8001004A,
   NiFpga_LIDARslaveV51_ControlBool_Mode = 0x1001E,
   NiFpga_LIDARslaveV51_ControlBool_OverrideTrig = 0x8001006A,
   NiFpga_LIDARslaveV51_ControlBool_ResetTimeout = 0x10006,
   NiFpga_LIDARslaveV51_ControlBool_SampleClockCommit = 0x1000A,
   NiFpga_LIDARslaveV51_ControlBool_SamplingEnable = 0x8001004E,
   NiFpga_LIDARslaveV51_ControlBool_SingleFrame = 0x80010052,
} NiFpga_LIDARslaveV51_ControlBool;

typedef enum
{
   NiFpga_LIDARslaveV51_ControlU8_SampleClockSelect = 0x1000E,
} NiFpga_LIDARslaveV51_ControlU8;

typedef enum
{
   NiFpga_LIDARslaveV51_ControlI16_PulsePerLed = 0x8001005E,
} NiFpga_LIDARslaveV51_ControlI16;

typedef enum
{
   NiFpga_LIDARslaveV51_ControlU16_NoOfLeds = 0x8001005A,
   NiFpga_LIDARslaveV51_ControlU16_NoOfSamples = 0x80010046,
   NiFpga_LIDARslaveV51_ControlU16_SamplesAmount = 0x80010026,
   NiFpga_LIDARslaveV51_ControlU16_SendAiCMD = 0x80010042,
   NiFpga_LIDARslaveV51_ControlU16_StartAcq = 0x80010032,
   NiFpga_LIDARslaveV51_ControlU16_StartES = 0x80010036,
   NiFpga_LIDARslaveV51_ControlU16_StopES = 0x8001003A,
} NiFpga_LIDARslaveV51_ControlU16;

typedef enum
{
   NiFpga_LIDARslaveV51_ControlU32_TrigTimeout = 0x8001007C,
} NiFpga_LIDARslaveV51_ControlU32;

typedef enum
{
   NiFpga_LIDARslaveV51_TargetToHostFifoU64_DMA = 1,
} NiFpga_LIDARslaveV51_TargetToHostFifoU64;

typedef enum
{
   NiFpga_LIDARslaveV51_PeerToPeerReaderFifoU32_P2PRd = 0,
} NiFpga_LIDARslaveV51_PeerToPeerReaderFifoU32;

#endif
