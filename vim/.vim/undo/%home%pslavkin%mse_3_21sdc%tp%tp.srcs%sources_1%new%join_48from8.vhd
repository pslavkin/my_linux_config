Vim�UnDo� ^���f5��=;�$��H@))ȳ>4�rIIP<�p   =                  ,       ,   ,   ,    ^$/�    _�                        1    ����                                                                                                                                                                                                                                                                                                                                                             ^$#2     �      	   F      >           m_axis_tdata  : out STD_LOGIC_VECTOR (15 downto 0);5�_�                       2    ����                                                                                                                                                                                                                                                                                                                                                             ^$#7     �      	   F      >           m_axis_tdata  : out STD_LOGIC_VECTOR (48 downto 0);5�_�                            ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$#;     �                D           m_axis_config_tdata  : out STD_LOGIC_VECTOR (7 downto 0);   0           m_axis_config_tvalid : out STD_LOGIC;   0           m_axis_config_tready : in  STD_LOGIC;5�_�                            ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$#<     �                 5�_�                       .    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$#V     �         B      0      variable bitCounter :integer range 0 to 8;5�_�                    )   #    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$#n     �   (   *   B      +                     if bitCounter = 0 then5�_�                    )   $    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$#u     �   (   *   B      ,                     if bitCounter <= 0 then5�_�      	              )   %    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$#w     �   (   *   B      +                     if bitCounter < 0 then5�_�      
           	   *   %    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$#     �   )   +   B      A                        m_axis_tdata(7 downto 0) <= s_axis_tdata;5�_�   	              
   *   1    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$#�     �   )   +   B      M                        m_axis_tdata(bitCounter-17 downto 0) <= s_axis_tdata;5�_�   
                 *   %    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$#�     �   )   +   B      L                        m_axis_tdata(bitCounter-1 downto 0) <= s_axis_tdata;5�_�                    *   2    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$#�     �   )   +   B      O                        m_axis_tdata(48-bitCounter-1 downto 0) <= s_axis_tdata;5�_�                    *   2    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$#�     �   )   +   B      N                        m_axis_tdata(48-bitCounter1 downto 0) <= s_axis_tdata;5�_�                    *   %    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$%�     �   )   +   B      M                        m_axis_tdata(48-bitCounter downto 0) <= s_axis_tdata;5�_�                    *   %    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$%�     �   )   +   B      L                        m_axis_tdata(8-bitCounter downto 0) <= s_axis_tdata;5�_�                    *   %    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$%�     �   )   +   B      K                        m_axis_tdata(-bitCounter downto 0) <= s_axis_tdata;5�_�                    *   0    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$%�     �   )   +   B      J                        m_axis_tdata(bitCounter downto 0) <= s_axis_tdata;5�_�                    *   /    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$%�     �   )   +   B      J                        m_axis_tdata(bitCounter downto 0) <= s_axis_tdata;5�_�                    *   9    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$%�     �   )   +   B      L                        m_axis_tdata(bitCounter+7 downto 0) <= s_axis_tdata;5�_�                    +   A    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$%�     �   *   ,   B      C                        bitCounter               := bitCounter + 1;5�_�                   *        ����                                                                                                                                                                                                                                                                                                                            +   %       *   %       V   %    ^$&     �   >   @   B      2m_axis_config_tdata  <= "00000001"; --inverse IFTT�   <   >   B         end process shift_reg; --}}}�   ;   =   B            end if;�   :   <   B               end if;�   9   ;   B                  end case;�   8   :   B                        end if;�   7   9   B      7                        state         <= waitingSvalid;�   6   8   B      +                        bitCounter    := 0;�   5   7   B      -                        s_axis_tready <= '1';�   4   6   B      -                        m_axis_tvalid <= '0';�   3   5   B      �                  if m_axis_tready = '1' then                           --si el receptor puede recibir entonces ya latecho el dato..�   2   4   B      $               when waitingMready =>�   1   3   B                        end if;�   0   2   B                           end if;�   /   1   B      F                           state                     <= waitingMready;�   .   0   B      {                           s_axis_tready             <= '0';                              --entonces yo tambien estoy listo�   -   /   B      o                           m_axis_tvalid             <= '1';                           --y ya no tengo mas nada�   ,   .   B      E                           m_axis_tdata(15 downto 8) <= s_axis_tdata;�   +   -   B                              else �   *   ,   B      W                        bitCounter                                   := bitCounter + 8;�   )   +   B      U                        m_axis_tdata(bitCounter+7 downto bitCounter) <= s_axis_tdata;�   (   *   B      ,                     if bitCounter < 48 then�   '   )   B      r                  if s_axis_tvalid = '1' then                           --espero e que este listo para enviar algo�   &   (   B      $               when waitingSvalid =>�   %   '   B                  case state is�   $   &   B               else�   #   %   B                  bitCounter    := 0;�   "   $   B      -            m_axis_tdata  <= (others => '0');�   !   #   B      !            m_axis_tvalid <= '0';�       "   B      !            s_axis_tready <= '1';�      !   B      +            state         <= waitingSvalid;�          B               if rst = '0' then�         B            if rising_edge(clk) then�         B         begin�         B      1      variable bitCounter :integer range 0 to 48;�         B      #   shift_reg:process (clk) is --{{{�         B      ,   signal state:shiftState := waitingSvalid;�         B      *           rst           : in  STD_LOGIC);�         B      )           clk           : in  STD_LOGIC;�         B      )           s_axis_tready : out STD_LOGIC;�         B      )           s_axis_tlast  : in  STD_LOGIC;�         B      )           s_axis_tvalid : in  STD_LOGIC;�         B      =           s_axis_tdata  : in  STD_LOGIC_VECTOR (7 downto 0);�   
      B      )           m_axis_tready : in  STD_LOGIC;�   	      B      )           m_axis_tlast  : out STD_LOGIC;�      
   B      )           m_axis_tvalid : out STD_LOGIC;�      	   B      >           m_axis_tdata  : out STD_LOGIC_VECTOR (47 downto 0);�         B          Port(  �         B       --junto 2 bytes de 8  en 1 de 16�   )   +          U                        m_axis_tdata(bitCounter+7 downto bitCounter) <= s_axis_tdata;�   *   ,          C                        bitCounter               := bitCounter + 8;5�_�                    ,       ����                                                                                                                                                                                                                                                                                                                            +   %       *   %       V   %    ^$&R     �   +   -   B    �   ,   -   B    5�_�                    ,   #    ����                                                                                                                                                                                                                                                                                                                            +   %       *   %       V   %    ^$&V     �   +   -   C      ,                     if bitCounter < 48 then5�_�                    -       ����                                                                                                                                                                                                                                                                                                                            +   %       *   %       V   %    ^$&Y     �   ,   -                                  else 5�_�                    -       ����                                                                                                                                                                                                                                                                                                                            +   %       *   %       V   %    ^$&_     �   ,   -          E                           m_axis_tdata(15 downto 8) <= s_axis_tdata;5�_�                    )       ����                                                                                                                                                                                                                                                                                                                            +   %       *   %       V   %    ^$&w     �   (   )          ,                     if bitCounter < 48 then5�_�                    ,        ����                                                                                                                                                                                                                                                                                                                            ,          .          V       ^$&}     �   <   >   @      2m_axis_config_tdata  <= "00000001"; --inverse IFTT�   :   <   @         end process shift_reg; --}}}�   9   ;   @            end if;�   8   :   @               end if;�   7   9   @                  end case;�   6   8   @                        end if;�   5   7   @      7                        state         <= waitingSvalid;�   4   6   @      +                        bitCounter    := 0;�   3   5   @      -                        s_axis_tready <= '1';�   2   4   @      -                        m_axis_tvalid <= '0';�   1   3   @      �                  if m_axis_tready = '1' then                           --si el receptor puede recibir entonces ya latecho el dato..�   0   2   @      $               when waitingMready =>�   /   1   @                        end if;�   .   0   @                           end if;�   -   /   @      :                           state         <= waitingMready;�   ,   .   @      o                           s_axis_tready <= '0';                              --entonces yo tambien estoy listo�   +   -   @      H                           m_axis_tvalid <= '1';--y ya no tengo mas nada�   *   ,   @      ,                     if bitCounter = 48 then�   )   +   @      W                        bitCounter                                   := bitCounter + 8;�   (   *   @      U                        m_axis_tdata(bitCounter+7 downto bitCounter) <= s_axis_tdata;�   '   )   @      r                  if s_axis_tvalid = '1' then                           --espero e que este listo para enviar algo�   &   (   @      $               when waitingSvalid =>�   %   '   @                  case state is�   $   &   @               else�   #   %   @                  bitCounter    := 0;�   "   $   @      -            m_axis_tdata  <= (others => '0');�   !   #   @      !            m_axis_tvalid <= '0';�       "   @      !            s_axis_tready <= '1';�      !   @      +            state         <= waitingSvalid;�          @               if rst = '0' then�         @            if rising_edge(clk) then�         @         begin�         @      1      variable bitCounter :integer range 0 to 48;�         @      #   shift_reg:process (clk) is --{{{�         @      ,   signal state:shiftState := waitingSvalid;�         @      *           rst           : in  STD_LOGIC);�         @      )           clk           : in  STD_LOGIC;�         @      )           s_axis_tready : out STD_LOGIC;�         @      )           s_axis_tlast  : in  STD_LOGIC;�         @      )           s_axis_tvalid : in  STD_LOGIC;�         @      =           s_axis_tdata  : in  STD_LOGIC_VECTOR (7 downto 0);�   
      @      )           m_axis_tready : in  STD_LOGIC;�   	      @      )           m_axis_tlast  : out STD_LOGIC;�      
   @      )           m_axis_tvalid : out STD_LOGIC;�      	   @      >           m_axis_tdata  : out STD_LOGIC_VECTOR (47 downto 0);�         @          Port(  �         @       --junto 2 bytes de 8  en 1 de 16�   +   -          o                           m_axis_tvalid             <= '1';                           --y ya no tengo mas nada�   -   /          F                           state                     <= waitingMready;�   ,   .          {                           s_axis_tready             <= '0';                              --entonces yo tambien estoy listo5�_�                    ,   0    ����                                                                                                                                                                                                                                                                                                                            ,          .          V       ^$&�     �   +   -   @      H                           m_axis_tvalid <= '1';--y ya no tengo mas nada5�_�                    -   B    ����                                                                                                                                                                                                                                                                                                                            ,          .          V       ^$&�     �   ,   .   @      o                           s_axis_tready <= '0';                              --entonces yo tambien estoy listo5�_�                     ,        ����                                                                                                                                                                                                                                                                                                                            ,   "       .          V       ^$&�     �   -   /          :                           state         <= waitingMready;�   ,   .          c                           s_axis_tready <= '0';                  --entonces yo tambien estoy listo�   +   -          Z                           m_axis_tvalid <= '1';                  --y ya no tengo mas nada5�_�      !               )        ����                                                                                                                                                                                                                                                                                                                            )          *          V       ^$&�     �   )   +          W                        bitCounter                                   := bitCounter + 8;�   (   *          U                        m_axis_tdata(bitCounter+7 downto bitCounter) <= s_axis_tdata;5�_�       $           !   *        ����                                                                                                                                                                                                                                                                                                                            *   !       *   !       V   !    ^$&�     �   <   >   @      2m_axis_config_tdata  <= "00000001"; --inverse IFTT�   :   <   @         end process shift_reg; --}}}�   9   ;   @            end if;�   8   :   @               end if;�   7   9   @                  end case;�   6   8   @                        end if;�   5   7   @      7                        state         <= waitingSvalid;�   4   6   @      +                        bitCounter    := 0;�   3   5   @      -                        s_axis_tready <= '1';�   2   4   @      -                        m_axis_tvalid <= '0';�   1   3   @      �                  if m_axis_tready = '1' then                           --si el receptor puede recibir entonces ya latecho el dato..�   0   2   @      $               when waitingMready =>�   /   1   @                        end if;�   .   0   @                           end if;�   -   /   @      7                        state         <= waitingMready;�   ,   .   @      `                        s_axis_tready <= '0';                  --entonces yo tambien estoy listo�   +   -   @      W                        m_axis_tvalid <= '1';                  --y ya no tengo mas nada�   *   ,   @      ,                     if bitCounter = 48 then�   )   +   @      T                     bitCounter                                   := bitCounter + 8;�   (   *   @      R                     m_axis_tdata(bitCounter+7 downto bitCounter) <= s_axis_tdata;�   '   )   @      r                  if s_axis_tvalid = '1' then                           --espero e que este listo para enviar algo�   &   (   @      $               when waitingSvalid =>�   %   '   @                  case state is�   $   &   @               else�   #   %   @                  bitCounter    := 0;�   "   $   @      -            m_axis_tdata  <= (others => '0');�   !   #   @      !            m_axis_tvalid <= '0';�       "   @      !            s_axis_tready <= '1';�      !   @      +            state         <= waitingSvalid;�          @               if rst = '0' then�         @            if rising_edge(clk) then�         @         begin�         @      1      variable bitCounter :integer range 0 to 48;�         @      #   shift_reg:process (clk) is --{{{�         @      ,   signal state:shiftState := waitingSvalid;�         @      *           rst           : in  STD_LOGIC);�         @      )           clk           : in  STD_LOGIC;�         @      )           s_axis_tready : out STD_LOGIC;�         @      )           s_axis_tlast  : in  STD_LOGIC;�         @      )           s_axis_tvalid : in  STD_LOGIC;�         @      =           s_axis_tdata  : in  STD_LOGIC_VECTOR (7 downto 0);�   
      @      )           m_axis_tready : in  STD_LOGIC;�   	      @      )           m_axis_tlast  : out STD_LOGIC;�      
   @      )           m_axis_tvalid : out STD_LOGIC;�      	   @      >           m_axis_tdata  : out STD_LOGIC_VECTOR (47 downto 0);�         @          Port(  �         @       --junto 2 bytes de 8  en 1 de 16�   )   +          T                     bitCounter                                   := bitCounter + 8;5�_�   !   %   "       $   *        ����                                                                                                                                                                                                                                                                                                                            *           *           V        ^$&�    �   <   >   @      2m_axis_config_tdata  <= "00000001"; --inverse IFTT�   :   <   @         end process shift_reg; --}}}�   9   ;   @            end if;�   8   :   @               end if;�   7   9   @                  end case;�   6   8   @                        end if;�   5   7   @      7                        state         <= waitingSvalid;�   4   6   @      +                        bitCounter    := 0;�   3   5   @      -                        s_axis_tready <= '1';�   2   4   @      -                        m_axis_tvalid <= '0';�   1   3   @      �                  if m_axis_tready = '1' then                           --si el receptor puede recibir entonces ya latecho el dato..�   0   2   @      $               when waitingMready =>�   /   1   @                        end if;�   .   0   @                           end if;�   -   /   @      7                        state         <= waitingMready;�   ,   .   @      `                        s_axis_tready <= '0';                  --entonces yo tambien estoy listo�   +   -   @      W                        m_axis_tvalid <= '1';                  --y ya no tengo mas nada�   *   ,   @      ,                     if bitCounter = 48 then�   )   +   @      2                     bitCounter := bitCounter + 8;�   (   *   @      R                     m_axis_tdata(bitCounter+7 downto bitCounter) <= s_axis_tdata;�   '   )   @      r                  if s_axis_tvalid = '1' then                           --espero e que este listo para enviar algo�   &   (   @      $               when waitingSvalid =>�   %   '   @                  case state is�   $   &   @               else�   #   %   @                  bitCounter    := 0;�   "   $   @      -            m_axis_tdata  <= (others => '0');�   !   #   @      !            m_axis_tvalid <= '0';�       "   @      !            s_axis_tready <= '1';�      !   @      +            state         <= waitingSvalid;�          @               if rst = '0' then�         @            if rising_edge(clk) then�         @         begin�         @      1      variable bitCounter :integer range 0 to 48;�         @      #   shift_reg:process (clk) is --{{{�         @      ,   signal state:shiftState := waitingSvalid;�         @      *           rst           : in  STD_LOGIC);�         @      )           clk           : in  STD_LOGIC;�         @      )           s_axis_tready : out STD_LOGIC;�         @      )           s_axis_tlast  : in  STD_LOGIC;�         @      )           s_axis_tvalid : in  STD_LOGIC;�         @      =           s_axis_tdata  : in  STD_LOGIC_VECTOR (7 downto 0);�   
      @      )           m_axis_tready : in  STD_LOGIC;�   	      @      )           m_axis_tlast  : out STD_LOGIC;�      
   @      )           m_axis_tvalid : out STD_LOGIC;�      	   @      >           m_axis_tdata  : out STD_LOGIC_VECTOR (47 downto 0);�         @          Port(  �         @       --junto 2 bytes de 8  en 1 de 16�   )   +          T                     bitCounter                                   := bitCounter + 8;5�_�   $   &           %   =        ����                                                                                                                                                                                                                                                                                                                            =          >          V       ^$&�     �   <   =          2m_axis_config_tdata  <= "00000001"; --inverse IFTT   m_axis_config_tvalid <= '1'; 5�_�   %   '           &   =        ����                                                                                                                                                                                                                                                                                                                            =          =          V       ^$&�    �   <   =           5�_�   &   (           '           ����                                                                                                                                                                                                                                                                                                                            =          =          V       ^$)z     �                entity join_16from8 is5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                            =          =          V       ^$)z     �                end join_16from8;5�_�   (   *           )           ����                                                                                                                                                                                                                                                                                                                            =          =          V       ^$)z    �                *architecture Behavioral of join_16from8 is5�_�   )   +           *           ����                                                                                                                                                                                                                                                                                                                               &          &       v   &    ^$/�     �                entity join_48from8 is5�_�   *   ,           +           ����                                                                                                                                                                                                                                                                                                                               &          &       v   &    ^$/�     �                end join_48from8;5�_�   +               ,           ����                                                                                                                                                                                                                                                                                                                               &          &       v   &    ^$/�    �                *architecture Behavioral of join_48from8 is5�_�   !   #       $   "   *        ����                                                                                                                                                                                                                                                                                                                            *           *          V        ^$&�     �   )   +        �   *   +   ?    �   )   *   ?                  5�_�   "               #   *        ����                                                                                                                                                                                                                                                                                                                            *           *          V        ^$&�     �         @       --junto 2 bytes de 8  en 1 de 16�         @          Port(  �      	   @      >           m_axis_tdata  : out STD_LOGIC_VECTOR (47 downto 0);�      
   @      )           m_axis_tvalid : out STD_LOGIC;�   	      @      )           m_axis_tlast  : out STD_LOGIC;�   
      @      )           m_axis_tready : in  STD_LOGIC;�         @      =           s_axis_tdata  : in  STD_LOGIC_VECTOR (7 downto 0);�         @      )           s_axis_tvalid : in  STD_LOGIC;�         @      )           s_axis_tlast  : in  STD_LOGIC;�         @      )           s_axis_tready : out STD_LOGIC;�         @      )           clk           : in  STD_LOGIC;�         @      *           rst           : in  STD_LOGIC);�         @      ,   signal state:shiftState := waitingSvalid;�         @      #   shift_reg:process (clk) is --{{{�         @      1      variable bitCounter :integer range 0 to 48;�         @         begin�         @            if rising_edge(clk) then�          @               if rst = '0' then�      !   @      +            state         <= waitingSvalid;�       "   @      !            s_axis_tready <= '1';�   !   #   @      !            m_axis_tvalid <= '0';�   "   $   @      -            m_axis_tdata  <= (others => '0');�   #   %   @                  bitCounter    := 0;�   $   &   @               else�   %   '   @                  case state is�   &   (   @      $               when waitingSvalid =>�   '   )   @      r                  if s_axis_tvalid = '1' then                           --espero e que este listo para enviar algo�   (   *   @      R                     m_axis_tdata(bitCounter+7 downto bitCounter) <= s_axis_tdata;�   )   +   @                  �   *   ,   @      ,                     if bitCounter = 48 then�   +   -   @      W                        m_axis_tvalid <= '1';                  --y ya no tengo mas nada�   ,   .   @      `                        s_axis_tready <= '0';                  --entonces yo tambien estoy listo�   -   /   @      7                        state         <= waitingMready;�   .   0   @                           end if;�   /   1   @                        end if;�   0   2   @      $               when waitingMready =>�   1   3   @      �                  if m_axis_tready = '1' then                           --si el receptor puede recibir entonces ya latecho el dato..�   2   4   @      -                        m_axis_tvalid <= '0';�   3   5   @      -                        s_axis_tready <= '1';�   4   6   @      +                        bitCounter    := 0;�   5   7   @      7                        state         <= waitingSvalid;�   6   8   @                        end if;�   7   9   @                  end case;�   8   :   @               end if;�   9   ;   @            end if;�   :   <   @         end process shift_reg; --}}}�   <   >   @      2m_axis_config_tdata  <= "00000001"; --inverse IFTT5�_�                    +   %    ����                                                                                                                                                                                                                                                                                                                               2          0       V   2    ^$&     �   *   ,   B      &                        bitCounter   V5��