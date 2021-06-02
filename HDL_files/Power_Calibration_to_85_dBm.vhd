-- -------------------------------------------------------------
-- 
-- File Name: HDL_files/Power_Calibration_to_85_dBm.vhd
-- Created: 2021-06-02 20:48:26
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Power_Calibration_to_85_dBm
-- Source Path: copy/Transmitter/Power Calibration to -85 dBm
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Power_Calibration_to_85_dBm IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        In1                               :   IN    std_logic_vector(63 DOWNTO 0);  -- double
        Out1                              :   OUT   std_logic_vector(63 DOWNTO 0)  -- double
        );
END Power_Calibration_to_85_dBm;


ARCHITECTURE rtl OF Power_Calibration_to_85_dBm IS

  -- Component Declarations
  COMPONENT nfp_mul_double
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          nfp_in1                         :   IN    std_logic_vector(63 DOWNTO 0);  -- double
          nfp_in2                         :   IN    std_logic_vector(63 DOWNTO 0);  -- double
          nfp_out                         :   OUT   std_logic_vector(63 DOWNTO 0)  -- double
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : nfp_mul_double
    USE ENTITY work.nfp_mul_double(rtl);

  -- Signals
  SIGNAL kconst                           : std_logic_vector(63 DOWNTO 0);  -- ufix64
  SIGNAL Gain_out1                        : std_logic_vector(63 DOWNTO 0);  -- ufix64

BEGIN
  u_nfp_mul_comp : nfp_mul_double
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              nfp_in1 => kconst,  -- double
              nfp_in2 => In1,  -- double
              nfp_out => Gain_out1  -- double
              );

  kconst <= X"3eb4bcf70977c647";

  Out1 <= Gain_out1;

END rtl;

