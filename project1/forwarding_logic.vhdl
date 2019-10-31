library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;	 
use ieee.std_logic_unsigned.all;

entity forwarding_logic is
	port (idrr_ir, rrex_ir, exmem_ir, memwb_ir: in std_logic_vector(15 downto 0);
		fwd_mux1, fwd_mux2: out std_logic_vector(1 downto 0)
	);
end entity forwarding_logic;

architecture struct of forwarding_logic is

alias rr_op : std_logic_vector(3 downto 0) is idrr_ir(15 downto 12); 
alias rr_a : std_logic_vector(2 downto 0) is idrr_ir(11 downto 9);
alias rr_b : std_logic_vector(2 downto 0) is idrr_ir(8 downto 6);
alias rr_c : std_logic_vector(2 downto 0) is idrr_ir(5 downto 3); 
--alias rr_type : std_logic_vector(1 downto 0) is idrr_ir(1 downto 0);

alias ex_op : std_logic_vector(3 downto 0) is rrex_ir(15 downto 12); 
alias ex_a : std_logic_vector(2 downto 0) is rrex_ir(11 downto 9);
alias ex_b : std_logic_vector(2 downto 0) is rrex_ir(8 downto 6);
alias ex_c : std_logic_vector(2 downto 0) is rrex_ir(5 downto 3); 
--alias ex_type : std_logic_vector(1 downto 0) is rrex_ir(1 downto 0);

alias mem_op : std_logic_vector(3 downto 0) is exmem_ir(15 downto 12); 
alias mem_a : std_logic_vector(2 downto 0) is exmem_ir(11 downto 9);
alias mem_b : std_logic_vector(2 downto 0) is exmem_ir(8 downto 6);
alias mem_c : std_logic_vector(2 downto 0) is exmem_ir(5 downto 3); 
--alias mem_type : std_logic_vector(1 downto 0) is exmem_ir(1 downto 0);

alias wb_op : std_logic_vector(3 downto 0) is memwb_ir(15 downto 12); 
alias wb_a : std_logic_vector(2 downto 0) is memwb_ir(11 downto 9);
alias wb_b : std_logic_vector(2 downto 0) is memwb_ir(8 downto 6);
alias wb_c : std_logic_vector(2 downto 0) is memwb_ir(5 downto 3); 
--alias wb_type : std_logic_vector(1 downto 0) is memwb_ir(1 downto 0);

constant add : std_logic_vector(3 downto 0) := "0000";
constant ndu : std_logic_vector(3 downto 0) := "0010"; 

constant adi : std_logic_vector(3 downto 0) := "0001"; 
constant lw : std_logic_vector(3 downto 0) := "0100"; 
constant sw : std_logic_vector(3 downto 0) := "0101"; 
constant beq : std_logic_vector(3 downto 0) := "1100"; 
constant jlr : std_logic_vector(3 downto 0) := "1001"; 

constant lhi : std_logic_vector(3 downto 0) := "0011"; 
constant lm : std_logic_vector(3 downto 0) := "0110"; 
constant sm : std_logic_vector(3 downto 0) := "0111"; 
constant jal : std_logic_vector(3 downto 0) := "1000"; 

--constant carry : std_logic_vector(1 downto 0) := "10"; 
--constant zero : std_logic_vector(1 downto 0) := "01";

constant actual : std_logic_vector(1 downto 0) := "00"; 
constant ex : std_logic_vector(1 downto 0) := "01"; 
constant mem : std_logic_vector(1 downto 0) := "10"; 
constant wb : std_logic_vector(1 downto 0) := "11"; 


begin
	
	fwd_mux1 <= ex when( 
						   ((ex_op = add or ex_op = ndu) and (rr_op = adi or rr_op = add or rr_op = ndu or rr_op = sw or rr_op = beq) and ex_c = rr_a) 
						or ((ex_op = lw or ex_op = jlr) and (rr_op = adi or rr_op = add or rr_op = ndu) and ex_c = rr_a)
						or ((ex_op = lhi or ex_op = jal) and (rr_op = adi or rr_op = add or rr_op = ndu or rr_op = sw or rr_op = beq) and ex_c = rr_a) 
						)else
				
				mem when(
						   ((mem_op = add or mem_op = ndu) and (rr_op = adi or rr_op = add or rr_op = ndu or rr_op = sw or rr_op = beq) and mem_c = rr_a) 
						or ((mem_op = lw or mem_op = jlr) and (rr_op = adi or rr_op = add or rr_op = ndu) and ex_c = rr_a)
						or ((mem_op = lhi or mem_op = jal) and (rr_op = adi or rr_op = add or rr_op = ndu or rr_op = sw or rr_op = beq) and mem_c = rr_a) 
						)else
				
				wb when(
						   ((wb_op = add or wb_op = ndu) and (rr_op = adi or rr_op = add or rr_op = ndu or rr_op = sw or rr_op = beq) and wb_c = rr_a) 
						or ((wb_op = lw or wb_op = jlr) and (rr_op = adi or rr_op = add or rr_op = ndu) and ex_c = rr_a)
						or ((wb_op = lhi or wb_op = jal) and (rr_op = adi or rr_op = add or rr_op = ndu or rr_op = sw or rr_op = beq) and wb_c = rr_a) 
						)else
				
				actual;

	fwd_mux2 <= ex when(
						   (((ex_op = add or ex_op = ndu) and (rr_op = lw or rr_op = jlr or rr_op = add or rr_op = ndu or rr_op = sw or rr_op = beq) and ex_c = rr_b))
						or ((ex_op = adi) and (rr_op = lw or rr_op = jlr or rr_op = add or rr_op = ndu) and ex_c = rr_b)
						)else
				
				mem when(
						   (((mem_op = add or mem_op = ndu) and (rr_op = lw or rr_op = jlr or rr_op = add or rr_op = ndu or rr_op = sw or rr_op = beq) and mem_c = rr_b))
						or ((mem_op = adi) and (rr_op = lw or rr_op = jlr or rr_op = add or rr_op = ndu) and mem_c = rr_b)
						)else
				
				wb when(
						   (((wb_op = add or wb_op = ndu) and (rr_op = lw or rr_op = jlr or rr_op = add or rr_op = ndu or rr_op = sw or rr_op = beq) and wb_c = rr_b))
						or ((wb_op = adi) and (rr_op = lw or rr_op = jlr or rr_op = add or rr_op = ndu) and wb_c = rr_b)
						)else
				
				actual;

end architecture struct;