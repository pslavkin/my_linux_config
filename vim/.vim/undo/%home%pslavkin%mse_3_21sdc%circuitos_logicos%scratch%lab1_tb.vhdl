Vim�UnDo� 9���dp�em�pϛI��|L0����פ�T   5                 ?       ?   ?   ?    ]�jH    _�                        0    ����                                                                                                                                                                                                                                                                                                                               0          0          0    ]�>�     �         1      6   signal led_tb: std_logic_vector(3 downto 0):='0000'   6   signal swt_tb: std_logic_vector(3 downto 0):='0000'5�_�                       5    ����                                                                                                                                                                                                                                                                                                                               0          0          0    ]�>�    �         1      6   signal led_tb: std_logic_vector(3 downto 0):="0000'   6   signal swt_tb: std_logic_vector(3 downto 0):="0000'5�_�                       6    ����                                                                                                                                                                                                                                                                                                                               0          0          0    ]�?     �         1      6   signal led_tb: std_logic_vector(3 downto 0):="0000"5�_�                       6    ����                                                                                                                                                                                                                                                                                                                               0          0          0    ]�?    �         1      6   signal swt_tb: std_logic_vector(3 downto 0):="0000"5�_�                    #       ����                                                                                                                                                                                                                                                                                                                               0          0          0    ]�?&     �   "   $   1               wait for 100ns5�_�                    #       ����                                                                                                                                                                                                                                                                                                                               0          0          0    ]�?'    �   "   $   1               wait for 100 ns5�_�                    1       ����                                                                                                                                                                                                                                                                                                                               0          0          0    ]�?�     �   0              end lab1_tb_arq5�_�      	              1       ����                                                                                                                                                                                                                                                                                                                               0          0          0    ]�?�     �   0   2   2      end lab1_tb_arq;:w5�_�      
           	   1       ����                                                                                                                                                                                                                                                                                                                               0          0          0    ]�?�    �   0   2   2      end lab1_tb_arq;:5�_�   	              
   +       ����                                                                                                                                                                                                                                                                                                                               0          0          0    ]�?�    �   *   ,   2                     );5�_�   
                 -       ����                                                                                                                                                                                                                                                                                                                                                             ]�G�     �   ,   .   2    �   -   .   2    5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             ]�G�     �   ,   .   3                     swt=>swt_tb,5�_�                   -       ����                                                                                                                                                                                                                                                                                                                                                             ]�G�     �   ,   .   3                     rst=>swt_tb,5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             ]�G�     �   ,   .   3    �   -   .   3    5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             ]�G�     �   ,   .   4                     rst=>rst_tb,5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             ]�G�    �   ,   .   4                     clk=>rst_tb,5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ]�I     �         4    �         4    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]�I"     �         5      /      swt: in  std_logic_vector ( 3 downto 0 );5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]�I'     �         5      /      rst: in  std_logic_vector ( 3 downto 0 );5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]�I)     �         5      (      rst: in  std_logic ( 3 downto 0 );5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]�I+     �         5    �         5    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]�I-     �         6            rst: in  std_logic ;5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        ]�I?    �         4    �         4    �                      clk: in  std_logic ;         rst: in  std_logic ;5�_�                             ����                                                                                                                                                                                                                                                                                                                                        &                   ]�J     �       '   6               swt_tb(3)<=swt_tb(2);            swt_tb(2)<=swt_tb(1);            swt_tb(1)<=swt_tb(0);            swt_tb(1)<='1';            wait for 100 ns;         end loop;�      !   6            for i in 0 to 6 loop5�_�                             ����                                                                                                                                                                                                                                                                                                                                        &                   ]�J     �       '   6      #         swt_tb(3)<=swt_tb(2);   #         swt_tb(2)<=swt_tb(1);   #         swt_tb(1)<=swt_tb(0);   #         swt_tb(1)<='1';   #         wait for 100 ns;   #      end loop;�      !   6      #      for i in 0 to 6 loop5�_�                             ����                                                                                                                                                                                                                                                                                                                                        &                 ]�J     �      !   6            for i in 0 to 6 loop�      '   6      //#      for i in 0 to 6 loop   !//#         swt_tb(3)<=swt_tb(2);   !//#         swt_tb(2)<=swt_tb(1);   !//#         swt_tb(1)<=swt_tb(0);   //#         swt_tb(1)<='1';   //#         wait for 100 ns;   //#      end loop;5�_�                             ����                                                                                                                                                                                                                                                                                                                                        %                   ]�J?     �      !   6            for i in 0 to 6 loop�      &   6      "      for i in 0 to 6 loop   "         swt_tb(3)<=swt_tb(2);   "         swt_tb(2)<=swt_tb(1);   "         swt_tb(1)<=swt_tb(0);   "         swt_tb(1)<='1';   "         wait for 100 ns;5�_�                    &        ����                                                                                                                                                                                                                                                                                                                                        %                   ]�JF   	 �   %   '   6      "      end loop;5�_�                           ����                                                                                                                                                                                                                                                                                                                                        %                   ]�J�   
 �         6         rst_tb <= '0' after 5 ns;5�_�                            ����                                                                                                                                                                                                                                                                                                                                        %                   ]�J�    �         6      !   signal rst_tb: std_logic:='0';5�_�      !               '       ����                                                                                                                                                                                                                                                                                                                                        %                   ]�K     �   &   (   6         wait;5�_�       "           !   '       ����                                                                                                                                                                                                                                                                                                                                        %                   ]�K     �   &   (   6            wait for 200ns;5�_�   !   #           "   '       ����                                                                                                                                                                                                                                                                                                                                        %                   ]�K     �   &   (   6    �   '   (   6    5�_�   "   $           #   (       ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�K    �   '   )   7            wait for 200 ns;5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�Kv    �         7         rst_tb <= '0' after 25 ns;5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�K�    �                   N: natural :=15�_�   %   '           &           ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�Th    �         7      /      swt: in  std_logic_vector ( 3 downto 0 );5�_�   &   (           '           ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�Tz     �         7      7   signal swt_tb: std_logic_vector(3 downto 0):="0000";5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�T|     �         7      900   signal swt_tb: std_logic_vector(3 downto 0):="0000";5�_�   (   *           )   2        ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�T�    �   1   3   7                     swt=>swt_tb,5�_�   )   +           *   2        ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�XE     �   1   3   7      --               swt=>swt_tb,5�_�   *   ,           +   2        ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�XE     �   1   3   7      -               swt=>swt_tb,5�_�   +   -           ,           ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�XI     �         7      9--   signal swt_tb: std_logic_vector(3 downto 0):="0000";5�_�   ,   .           -           ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�XI     �         7      8-   signal swt_tb: std_logic_vector(3 downto 0):="0000";5�_�   -   /           .      #    ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�XL     �         7      7   signal swt_tb: std_logic_vector(3 downto 0):="0000";5�_�   .   0           /      3    ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�XN     �         7      7   signal swt_tb: std_logic_vector(2 downto 0):="0000";5�_�   /   1           0           ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�XQ     �         7      1--      swt: in  std_logic_vector ( 3 downto 0 );5�_�   0   2           1           ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�XQ     �         7      0-      swt: in  std_logic_vector ( 3 downto 0 );5�_�   1   3           2      "    ����                                                                                                                                                                                                                                                                                                                            (          (          v       ]�XS    �         7      /      swt: in  std_logic_vector ( 3 downto 0 );5�_�   2   4           3   '       ����                                                                                                                                                                                                                                                                                                                                                             ]�j!     �   '   )   7    5�_�   3   5           4   '       ����                                                                                                                                                                                                                                                                                                                                                             ]�j#     �   &   '                wait for 200 ns;5�_�   4   6           5            ����                                                                                                                                                                                                                                                                                                                                        &                 ]�j'     �      '   7      --      for i in 0 to 6 loop    --         swt_tb(3)<=swt_tb(2);    --         swt_tb(2)<=swt_tb(1);    --         swt_tb(1)<=swt_tb(0);   --         swt_tb(1)<='1';   --         wait for 100 ns;   --     end loop;5�_�   5   7           6   !       ����                                                                                                                                                                                                                                                                                                                                        &                 ]�j,     �       "   7               swt_tb(3)<=swt_tb(2);5�_�   6   8           7   !       ����                                                                                                                                                                                                                                                                                                                            !          !          v       ]�j0     �       "   7               swt_tb(0)<=swt_tb(2);5�_�   7   9           8   %        ����                                                                                                                                                                                                                                                                                                                            %          %          V       ]�j6     �   $   %                   wait for 100 ns;5�_�   8   :           9   "       ����                                                                                                                                                                                                                                                                                                                            %          %          V       ]�j7     �   !   #   6    �   "   #   6    5�_�   9   ;           :   #   	    ����                                                                                                                                                                                                                                                                                                                            &          &          V       ]�j9     �   "   $   7    �   #   $   7    5�_�   :   <           ;   #       ����                                                                                                                                                                                                                                                                                                                            '          '          V       ]�j;     �   "   $   8               swt_tb(0)<='0';5�_�   ;   =           <   $        ����                                                                                                                                                                                                                                                                                                                            $          &          V       ]�j<     �   #   $                   swt_tb(2)<=swt_tb(1);            swt_tb(1)<=swt_tb(0);            swt_tb(1)<='1';5�_�   <   >           =   $       ����                                                                                                                                                                                                                                                                                                                            $          $          V       ]�jB     �   #   %   5    �   $   %   5    5�_�   =   ?           >   &        ����                                                                                                                                                                                                                                                                                                                            %          %          V       ]�jD     �   %   &           5�_�   >               ?   &       ����                                                                                                                                                                                                                                                                                                                            %          %          V       ]�jG    �   %   '                wait ;5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                                             ]�G�     �   ,   .   3                     rst=>,5��