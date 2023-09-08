entity EvenParityGate is
	port (a_in, b_in, c_in : in bit;
	result : out bit);
end  EvenParityGate;

architecture behavior1 of EvenParityGate is
begin
	process (a_in, b_in, c_in) is
	begin
		if (a_in = '0' and b_in = '0' and c_in = '0') then
		result <= '1';
		
		else if (a_in = '1' and b_in = '1' and c_in = '1') then
		result <= '0';
				
		else if ((a_in = '0' and b_in = '0') or (a_in = '0' and c_in = '0') or (b_in ='0' and c_in ='0')) then
			result <= '0';

		else 
			result <= '1';
		end if;
		end if;
		end if;
	end process;
end architecture behavior1;