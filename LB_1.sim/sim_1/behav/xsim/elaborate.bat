@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Wed May 04 21:27:05 -0300 2022
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 7c45a4cdbbfe40eba27c50305f5d667f --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Tb_Signal_Synchronizer_behav xil_defaultlib.Tb_Signal_Synchronizer -log elaborate.log"
call xelab  -wto 7c45a4cdbbfe40eba27c50305f5d667f --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Tb_Signal_Synchronizer_behav xil_defaultlib.Tb_Signal_Synchronizer -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
