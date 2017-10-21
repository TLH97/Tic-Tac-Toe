function [] = joc() 

	i = 0; j = 0; human = 0; machine = 0; q = 'q';

	do

		k = menu("Do you want to start?", 'Y', 'N');

		if(k == 1)

			ok = 0;

				M = ['-' '-' '-';'-' '-' '-';'-' '-' '-'];

				x = menu("I wanna play with", 'X','0');

				i = input("Introduceti linia ");

				if(i == q)
					break;
				endif

				j = input("Introduceti coloana ");

				if(j == q)
					break;
				endif

				if(x == 1)	
					M(i, j) = 'X';
				else
					M(i,j) = '0';
				endif

				disp(M);

				disp('___');

				i = randi(3);

				j = randi(3);

				while(M(i,j) == 'X' || M(i,j) == '0')

					i = randi(3);

					j = randi(3);

				endwhile

				if(x == 1)
					M(i,j) = '0';
				else	
					M(i,j) = 'X';
				endif			

				disp(M);

				disp('___');

				i = input("Introduceti linia ");

				if(i == q)
					break;
				endif

				j = input("Introduceti coloana ");

				if(j == q)
					break;
				endif

				while(M(i,j) == 'X' || M(i,j) == '0')

					disp("Pozitita de pe tabla de joc este deja ocuptata, alegeti alta");

					i = input("Introduceti linia ");

					if(i == q)
						break;
					endif

					j = input("Introduceti coloana ");

					if(j == q)
						break;
					endif
				
				endwhile

				if(x == 1)
					M(i,j) = 'X';
				else
					M(i,j) = '0';
				endif

				disp(M);

				disp('___');

				i = randi(3);

				j = randi(3);

				while(M(i,j) == 'X' || M(i,j) == '0')

					i = randi(3);

					j = randi(3);

				endwhile

				if(x == 1)
					M(i,j) = '0';
				else	
					M(i,j) = 'X';
				endif			

				disp(M);

				disp('___');

				i = input("Introduceti linia ");

				if(i == q)
					break;
				endif

				j = input("Introduceti coloana ");
				
				if(j == q)
					break;
				endif

				while(M(i,j) == 'X' || M(i,j) == '0')

					disp("Pozitita de pe tabla de joc este deja ocuptata, alegeti alta");

					i = input("Introduceti linia ");

					if(i == q)
						break;
					endif

					j = input("Introduceti coloana ");

					if(j == q)
						break;
					endif
				
				endwhile
					
				if(x == 1)
					M(i,j) = 'X';
				else
					M(i,j) = '0';				 
				endif

				disp(M);

				disp('___');

				ok = win(M,x);  			
				
				if(ok == 1) 			

					++human;

					printf("     SCOREBOARD     \n");

					printf("human: %d       machine: %d\n", human, machine);

					continue;			

				else
					ok = 0;
				endif

				i = randi(3);

				j = randi(3);

				while(M(i,j) == 'X' || M(i,j) == '0')

					i = randi(3);

					j = randi(3);

				endwhile	

				if(x == 1)
					M(i,j) = '0';
				else	
					M(i,j) = 'X';
				endif			

				disp(M);

				disp('___');

				ok = win(M,x); 

				if(ok == 1) 			
					++machine;

					printf("     SCOREBOARD     \n");

					printf("human: %d       machine: %d\n", human, machine);

					continue;			
				else
					ok = 0;
				endif

				i = input("Introduceti linia ");

				if(i == q)
					break;
				endif

				j = input("Introduceti coloana ");

				if(j == q)
					break;
				endif

				while(M(i,j) == 'X' || M(i,j) == '0')

					disp("Pozitita de pe tabla de joc este deja ocuptata, alegeti alta");

					i = input("Introduceti linia ");

					if(i == q)
						break;
					endif

					j = input("Introduceti coloana ");

					if(j == q)
						break;
					endif

				endwhile

				if(x == 1)
					M(i,j) = 'X';
				else
					M(i,j) = '0';
				endif

				disp(M);

				disp('___');

				ok = win(M,x);  			
				
				if(ok == 1) 			
					++human;

					printf("     SCOREBOARD     \n");

					printf("human: %d       machine: %d\n", human, machine);

					continue;			
				else
					ok = 0;
				endif

				i = randi(3);

				j = randi(3);

				while(M(i,j) == 'X' || M(i,j) == '0')

					i = randi(3);

					j = randi(3);

				endwhile	

				if(x == 1)
					M(i,j) = '0';
				else	
					M(i,j) = 'X';				  
				endif			

				disp(M);

				disp('___');

				ok = win(M,x);

				if(ok == 1) 			
					++machine;

					printf("     SCOREBOARD     \n");

					printf("human: %d       machine: %d\n", human, machine);

					continue; 			
				else
					ok = 0;
				endif

				i = input("Introduceti linia ");

				if(i == q)
					break;
				endif

				j = input("Introduceti coloana ");

				if(j == q)
					break;
				endif

				while(M(i,j) == 'X' || M(i,j) == '0')

					disp("Pozitita de pe tabla de joc este deja ocuptata, alegeti alta");

					i = input("Introduceti linia ");

					if(i == q)
						break;
					endif

					j = input("Introduceti coloana ");

					if(j == q)
						break;
					endif

				endwhile

				if(x == 1)
					M(i,j) = 'X';
				else
					M(i,j) = '0';				 
				endif

				disp(M);

				disp('___');

				ok = win(M,x);  			
				
				if(ok == 1) 			
					++human;

					printf("     SCOREBOARD     \n");

					printf("human: %d       machine: %d\n", human, machine);

					continue;		
				else
					ok = 0;
				endif

				if(ok == 0)
					printf("	 EGALITATE\n");

					printf("     SCOREBOARD     \n");

					printf("human: %d       machine: %d\n", human, machine);

					continue;
				endif

			elseif(k == 2)

				ok = 0;

				M = ['-' '-' '-';'-' '-' '-';'-' '-' '-'];

				x = menu("I wanna play with", 'X','0');

				i = randi(3);

				j = randi(3);

				while(M(i,j) == 'X' || M(i,j) == '0')

					i = randi(3);

					j = randi(3);

				endwhile

				if(x == 1)
					M(i,j) = '0';
				else	
					M(i,j) = 'X';
				endif			

				disp(M);

				disp('___');

				i = input("Introduceti linia ");

				if(i == q)
					break;
				endif

				j = input("Introduceti coloana ");

				if(j == q)
					break;
				endif

				while(M(i,j) == 'X' || M(i,j) == '0')

					disp("Pozitita de pe tabla de joc este deja ocuptata, alegeti alta");

					i = input("Introduceti linia ");

					if(i == q)
						break;
					endif

					j = input("Introduceti coloana ");

					if(j == q)
						break;
					endif
				
				endwhile

				if(x == 1)
					M(i,j) = 'X';
				else
					M(i,j) = '0';
				endif

				disp(M);

				disp('___');

				i = randi(3);

				j = randi(3);

				while(M(i,j) == 'X' || M(i,j) == '0')

					i = randi(3);

					j = randi(3);

				endwhile

				if(x == 1)
					M(i,j) = '0';
				else	
					M(i,j) = 'X';
				endif			

				disp(M);

				disp('___');

				i = input("Introduceti linia ");

				if(i == q)
					break;
				endif

				j = input("Introduceti coloana ");

				if(j == q)
					break;
				endif

				while(M(i,j) == 'X' || M(i,j) == '0')

					disp("Pozitita de pe tabla de joc este deja ocuptata, alegeti alta");

					i = input("Introduceti linia ");

					if(i == q)
						break;
					endif

					j = input("Introduceti coloana ");

					if(j == q)
						break;
					endif
				
				endwhile
					
				if(x == 1)
					M(i,j) = 'X';
				else
					M(i,j) = '0';				 
				endif

				disp(M);

				disp('___');

				ok = win(M,x);  			
				
				if(ok == 1) 			

					++human;

					printf("     SCOREBOARD     \n");

					printf("human: %d       machine: %d\n", human, machine);

					continue;			

				else
					ok = 0;
				endif

				i = randi(3);

				j = randi(3);

				while(M(i,j) == 'X' || M(i,j) == '0')

					i = randi(3);

					j = randi(3);

				endwhile	

				if(x == 1)
					M(i,j) = '0';
				else	
					M(i,j) = 'X';
				endif			

				disp(M);

				disp('___');

				ok = win(M,x); 

				if(ok == 1) 			
					++machine;

					printf("     SCOREBOARD     \n");

					printf("human: %d       machine: %d\n", human, machine);

					continue;			
				else
					ok = 0;
				endif

				i = input("Introduceti linia ");

				if(i == q)
					break;
				endif

				j = input("Introduceti coloana ");

				if(j == q)
					break;
				endif

				while(M(i,j) == 'X' || M(i,j) == '0')

					disp("Pozitita de pe tabla de joc este deja ocuptata, alegeti alta");

					i = input("Introduceti linia ");

					if(i == q)
						break;
					endif

					j = input("Introduceti coloana ");

					if(j == q)
						break;
					endif

				endwhile

				if(x == 1)
					M(i,j) = 'X';
				else
					M(i,j) = '0';
				endif

				disp(M);

				disp('___');

				ok = win(M,x);  			
				
				if(ok == 1) 			
					++human;

					printf("     SCOREBOARD     \n");

					printf("human: %d       machine: %d\n", human, machine);

					continue;			
				else
					ok = 0;
				endif

				i = randi(3);

				j = randi(3);

				while(M(i,j) == 'X' || M(i,j) == '0')

					i = randi(3);

					j = randi(3);

				endwhile	

				if(x == 1)
					M(i,j) = '0';
				else	
					M(i,j) = 'X';				  
				endif			

				disp(M);

				disp('___');

				ok = win(M,x);

				if(ok == 1) 			
					++machine;

					printf("     SCOREBOARD     \n");

					printf("human: %d       machine: %d\n", human, machine);

					continue; 			
				else
					ok = 0;
				endif

				i = input("Introduceti linia ");

				if(i == q)
					break;
				endif

				j = input("Introduceti coloana ");

				if(j == q)
					break;
				endif

				while(M(i,j) == 'X' || M(i,j) == '0')

					disp("Pozitita de pe tabla de joc este deja ocuptata, alegeti alta");

					i = input("Introduceti linia ");

					if(i == q)
						break;
					endif

					j = input("Introduceti coloana ");

					if(j == q)
						break;
					endif

				endwhile

				if(x == 1)
					M(i,j) = 'X';
				else
					M(i,j) = '0';				 
				endif

				disp(M);

				disp('___');

				ok = win(M,x);  			
				
				if(ok == 1) 			
					++human;

					printf("     SCOREBOARD     \n");

					printf("human: %d       machine: %d\n", human, machine);

					continue;		
				else
					ok = 0;
				endif

				i = randi(3);

				j = randi(3);

				while(M(i,j) == 'X' || M(i,j) == '0')

					i = randi(3);

					j = randi(3);

				endwhile	

				if(x == 1)
					M(i,j) = '0';
				else	
					M(i,j) = 'X';				  
				endif			

				disp(M);

				disp('___');

				ok = win(M,x);

				if(ok == 1) 			
					++machine;

					printf("     SCOREBOARD     \n");

					printf("human: %d       machine: %d\n", human, machine);

					continue; 			
				else
					ok = 0;
				endif

				if(ok == 0)
					printf("	 EGALITATE\n");

					printf("     SCOREBOARD     \n");

					printf("human: %d       machine: %d\n", human, machine);

					continue;
				endif

			endif	

	until(menu("Do you want to play another game?", 'Y', 'N') == 2);
	
endfunction