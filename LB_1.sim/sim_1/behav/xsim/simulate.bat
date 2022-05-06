@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Fri May 06 12:57:55 -0300 2022
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim Tb_Signal_Synchronizer_behav -key {Behavioral:sim_1:Functional:Tb_Signal_Synchronizer} -tclbatch Tb_Signal_Synchronizer.tcl -log simulate.log"
call xsim  Tb_Signal_Synchronizer_behav -key {Behavioral:sim_1:Functional:Tb_Signal_Synchronizer} -tclbatch Tb_Signal_Synchronizer.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
