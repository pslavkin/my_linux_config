Vim�UnDo� '`��hP���څ���<��H9���-E�L��                    P       P   P   P    ]���    _�                             ����                                                                                                                                                                                                                                                                                                                                       &           V        ]���     �                      process(rst,clk)   !         variable latch: integer;         begin            if rst='1'  then               led_in <= "0001";   $         elsif rising_edge(clk) then               if swt(0)='0' then                  if latch>0 then   !                  latch:=latch-1;                  else   #                  latch:=100000000;   '                  led_in(0)<=led_in(1);   '                  led_in(1)<=led_in(2);   '                  led_in(2)<=led_in(3);   '                  led_in(3)<=led_in(0);                  end if;               end if;            end if;         end process;5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                  V        ]���     �   	                  clk: in  std_logic;5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                  V        ]���     �      	                rst: in  std_logic;5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                  V        ]���     �   
            .      led: out std_logic_vector ( 3 downto 0 )5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        ]��      �   
            2      led_out: out std_logic_vector ( 3 downto 0 )5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        ]��     �   
            *      led_out: out std_logic( 3 downto 0 )5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                  V        ]��     �   	   
          /      swt: in  std_logic_vector ( 2 downto 0 );5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                  V        ]��	     �                   N: natural :=15�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                  V        ]��
     �                   generic (5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                  V        ]��
     �                   );5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                  V        ]��     �                7   signal led_in: std_logic_vector(3 downto 0):="0000";5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                  V        ]��    �                     led<=led_in;5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        ]��m     �             �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        ]��{     �      #       �             5�_�                           ����                                                                                                                                                                                                                                                                                                                            #           #           V        ]��     �         %            process(rst,clk)5�_�                           ����                                                                                                                                                                                                                                                                                                                            #           #           V        ]��     �         %            process(st,clk)5�_�                           ����                                                                                                                                                                                                                                                                                                                            #           #           V        ]��     �         %            process(t,clk)5�_�                           ����                                                                                                                                                                                                                                                                                                                            #           #           V        ]��     �         %            process(,clk)5�_�                       	    ����                                                                                                                                                                                                                                                                                                                            #           #           V        ]��     �         %               if rst='1'  then5�_�                       	    ����                                                                                                                                                                                                                                                                                                                            #           #           V        ]��     �                         cc5�_�                           ����                                                                                                                                                                                                                                                                                                                            "           "           V        ]��     �                            led_in <= "0001";5�_�                       	    ����                                                                                                                                                                                                                                                                                                                            !           !           V        ]��     �         #      $         elsif rising_edge(clk) then5�_�                       	    ����                                                                                                                                                                                                                                                                                                                            !           !           V        ]��     �         #      #         lsif rising_edge(clk) then5�_�                       	    ����                                                                                                                                                                                                                                                                                                                            !           !           V        ]��     �         #      "         sif rising_edge(clk) then5�_�                          ����                                                                                                                                                                                                                                                                                                                               	          	       V   	    ]��     �         #                  if swt(0)='0' then5�_�                           ����                                                                                                                                                                                                                                                                                                                               	          	       V   	    ]��     �         #      !            if led_in(0)='0' then5�_�                           ����                                                                                                                                                                                                                                                                                                                               	          	       V   	    ]��     �         #                   if led_in0)='0' then5�_�                           ����                                                                                                                                                                                                                                                                                                                               	          	       V   	    ]��     �         #                  if led_in)='0' then5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ]��     �                #                  latch:=100000000;5�_�      "                     ����                                                                                                                                                                                                                                                                                                                                                V       ]��     �         "    �         "    5�_�      #           "           ����                                                                                                                                                                                                                                                                                                                                                V       ]���     �         #      !         variable latch: integer;5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                V       ]���     �         #                     if latch>0 then5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                v       ]���     �         #    �         #    5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                v       ]���     �         $      !                  latch:=latch-1;5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                v       ]��     �         $    �         $    5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                v       ]��	     �                            if led_in='0' then5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                v       ]��     �                #                  latch:=100000000;5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                v       ]��     �         #      !                  latch:=latch-1;5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                v       ]��     �                !                  latch:=latch+1;5�_�   *   ,           +      
    ����                                                                                                                                                                                                                                                                                                                                                v       ]��     �                $               if latch>1000000 then5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                v       ]��     �                                  latch:=0;5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                                v       ]��     �                               else5�_�   -   /           .           ����                                                                                                                                                                                                                                                                                                                                                V       ]��     �                            else   !                  latch:=latch-1;5�_�   .   0           /          ����                                                                                                                                                                                                                                                                                                                                                V       ]��"     �         !      '                  led_in(0)<=led_in(1);5�_�   /   2           0          ����                                                                                                                                                                                                                                                                                                                                                V       ]��0     �         !      !            if latch>1000000 then5�_�   0   3   1       2          ����                                                                                                                                                                                                                                                                                                                                                V       ]��:     �         !      !            if latch>5000000 then5�_�   2   4           3          ����                                                                                                                                                                                                                                                                                                                                                V       ]��=     �         !    �         !    5�_�   3   5           4          ����                                                                                                                                                                                                                                                                                                                                                V       ]��?     �         "      $               led_in(0)<=led_in(1);5�_�   4   6           5          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��C     �         "      %               led_out(0)<=led_in(1);5�_�   5   7           6          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��D     �         "                     led_out(0)<=(1);5�_�   6   8           7          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��E     �         "                     led_out(0)<=1);5�_�   7   9           8          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��F     �         "                     led_out(0)<='1);5�_�   8   :           9          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��M     �         "    �         "    5�_�   9   ;           :          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��P     �         #                   if latch>500000 then5�_�   :   <           ;          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��Q     �         #      "            if latch>10500000 then5�_�   ;   =           <          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��T     �         #    �         #    5�_�   <   >           =          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��W     �         %                     �         $    5�_�   =   ?           >          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��d     �         %                     led_out(0)<='1';5�_�   >   @           ?          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��d     �         %                     led_out0)<='1';5�_�   ?   A           @          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��d     �         %                     led_out)<='1';5�_�   @   B           A          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��f     �         %                     led_out<='1';5�_�   A   C           B          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��g     �         %                     led_out<='-';5�_�   B   D           C          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��h     �         %                     led_out<='-';5�_�   C   E           D          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��i     �         %                     led_out<='-';5�_�   D   F           E          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��k     �         %                     led_out(0)<='1';5�_�   E   G           F          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��k     �         %                     led_out0)<='1';5�_�   F   H           G          ����                                                                                                                                                                                                                                                                                                                                                 v        ]��k     �         %                     led_out)<='1';5�_�   G   I           H           ����                                                                                                                                                                                                                                                                                                                                                V       ]��n     �                $               led_in(0)<=led_in(1);   '                  led_in(1)<=led_in(2);   '                  led_in(2)<=led_in(3);   '                  led_in(3)<=led_in(0);5�_�   H   J           I          ����                                                                                                                                                                                                                                                                                                                                                V       ]��p     �                               end if;5�_�   I   K           J          ����                                                                                                                                                                                                                                                                                                                                                V       ]��s     �                            end if;5�_�   J   L           K          ����                                                                                                                                                                                                                                                                                                                                                V       ]��~    �                      led_out<=led_in;5�_�   K   M           L          ����                                                                                                                                                                                                                                                                                                                                                V       ]���     �               !            if latch>1000000 then5�_�   L   N           M          ����                                                                                                                                                                                                                                                                                                                                                V       ]���     �               "            if latch>10000000 then5�_�   M   O           N          ����                                                                                                                                                                                                                                                                                                                                                V       ]���     �                            if latch>500000 then5�_�   N   P           O          ����                                                                                                                                                                                                                                                                                                                                                V       ]���    �               !            if latch>5000000 then5�_�   O               P          ����                                                                                                                                                                                                                                                                                                                                                V       ]���    �                   begin5�_�   0           2   1          ����                                                                                                                                                                                                                                                                                                                                                V       ]��2     �              5�_�      !       "               ����                                                                                                                                                                                                                                                                                                                                                V       ]��     �              5�_�                   !          ����                                                                                                                                                                                                                                                                                                                                                V       ]���     �                                latch:=100000000;5�_�                            ����                                                                                                                                                                                                                                                                                                                               	          	       V   	    ]��     �              5��