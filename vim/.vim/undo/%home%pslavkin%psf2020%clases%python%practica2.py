Vim�UnDo� ����m��k�]b�GY�9ѡ6;��E���      print(a.shape,type(b),b)            -       -   -   -    _��    _�                             ����                                                                                                                                                                                                                                                                                                                                                  V        _��     �                a=np.arange(0,10,1)   print(a)   b=np.sin(a)           fig=plt.figure()    signalAxe=fig.add_subplot(2,2,1)   signalLn,=plt.plot([],[],'ro')   signalAxe.set_xlim(0,10)   signalAxe.set_ylim(-1,1)           def init():       signalLn.set_data([],[])       return signalLn        def loop(n):   "    signalLn.set_data(a[:n],b[:n])       return signalLn           Kani=FuncAnimation(fig,loop,len(a),init,blit=False,interval=100,repeat=True)   
plt.show()5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        _��     �                import copy as cp   import matplotlib.pyplot as plt   /from  matplotlib.animation import FuncAnimation    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        _��    �                  �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _��     �                 a=np.nd5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _��     �                 a=np5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _��    �                  �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _��    �               a=np.ndarra()5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                  V        _��    �               a=np.ndarray()5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                  V        _��    �             �                 �             �             �             �               a=np.ndarray(1)5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                  V        _��    �               a=np.ndarray(1,dtype=np.int16)5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                  V        _��     �             �                 �             �               a=np.ndarray(10,dtype=np.int16)�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _��    �                a=np.ndarray([10,dtype=np.int16)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _�    �               #a=np.ndarray([10,1],dtype=np.int16)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _�	     �                 print(a)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _�   	 �                 print(len(a)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _�   
 �                 print(len(a))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _�     �                 print(size(a))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _�     �                 print(ize(a))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _�     �                 print(ze(a))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _�     �                 print(e(a))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _�     �                 
print((a))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _�     �                 	print(a))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _�    �               �                #a=np.ndarray([10,2],dtype=np.int16)�                 print(a)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _�$     �                 print(a.size())5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _�%    �                 print(a.size))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _�S     �                 print(a.size)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _�V    �                 print(type(a.size)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _�^     �                  �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _�p     �               print(type(a))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _�q     �               
print((a))5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       _�r     �             �                #a=np.ndarray([10,2],dtype=np.int16)�               	print(a))5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                v       _�t     �               print(a.shape))5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                v       _�t    �                a.shape5�_�   !   $           "          ����                                                                                                                                                                                                                                                                                                                                                v       _��     �                �             5�_�   "   %   #       $          ����                                                                                                                                                                                                                                                                                                                                                v       _��    �               �                b=[]�               �                #a=np.ndarray([10,2],dtype=np.int16)�               �               �               �               �                 print(a.shape)5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                v       _��     �               b=[]5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                v       _��     �               b=np.zeros(10)[]5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                v       _��    �               b=np.zeros(10)]5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                v       _��    �                 print(a.shape,type(b))5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                v       _��     �               #a=np.ndarray([10,2],dtype=np.int16)5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                v       _��     �               "a=np.ndarray(10,2],dtype=np.int16)5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                                v       _��     �               !a=np.ndarray(102],dtype=np.int16)5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                v       _��    �                a=np.ndarray(10],dtype=np.int16)5�_�   ,               -          ����                                                                                                                                                                                                                                                                                                                                                v       _��    �               �                b=np.zeros(10)�                 print(a.shape,type(b),b)�               5�_�   "           $   #          ����                                                                                                                                                                                                                                                                                                                                                v       _��     �                print(b.shape)5��