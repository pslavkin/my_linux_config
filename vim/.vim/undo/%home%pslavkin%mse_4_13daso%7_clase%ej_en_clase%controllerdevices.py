Vim�UnDo� <&���
�
��c,�}��.��s�Ӕ��e      N        json_data    = json.dumps(list_devices,default = Device.encode_device)             J       J   J   J    ]�(�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             ]��5    �                from devicedao import DeviceDAO5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             ]���     �   
                    �   
          5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]��    �   
                    dev_dao=DeviceDAO(db)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]��D     �                       c = self.db.cursor()5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]��[     �               "        dev_dao = self.db.cursor()5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]��_     �               '        list_devices = self.db.cursor()5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                             ]��d    �               6        list_devices = dev_dao.get_allself.db.cursor()5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                  V        ]��6     �             5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                  V        ]��>     �                 (        return "data:"+str(c.fetchall())5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                  V        ]��@     �                 (        return "data:"+str(c.fetchall())5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                  V        ]��A     �                         return 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        ]��C     �                *        c.execute("SELECT * FROM devices")5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        ]��D    �                 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        ]��Y     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        ]��]    �                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ]��t    �                         return list_devices�               (        list_devices = dev_dao.get_all()�               "        dev_dao=DeviceDAO(self.db)�   
                def get(self):�      	                 self.db      = db�                       self.request = requests�                       self.app     = app�               '    def __init__(self,app,requests,db):5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ]�#q     �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ]�#r     �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ]�#t     �                       return list_devices5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ]�#�     �                       return list_devices.5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ]�#�     �                        return list_devices(0)..5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ]�#�     �                       return 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ]�#�    �             �                (        list_devices = dev_dao.get_all()�             �             �                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ]�0�   	 �                       print(list_devices(0))5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ]�6�     �               #        print(list_devices(0))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ]�6�     �                       print(list_devices(0))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ]�6�   
 �                       print(list_devices[0))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ]�6�    �             �                (        list_devices = dev_dao.get_all()�                       print(list_devices[0])�             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ]�6�     �                       �             5�_�                             ����                                                                                                                                                                                                                                                                                                                                                V       ]�6�     �                5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                V       ]�8     �             �             5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                V       ]�8�     �         !    5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                  V        ]�8�     �                        #Creo DAO   $        dev_dao = DeviceDAO(self.db)           5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                 V       ]�8�     �                $        #Obtengo lista de obj Device   )        list_devices = dev_dao.get_all()     5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                                 V       ]�8�     �                !        print(list_devices[0].id)           for d in list_devices:    5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                 V       ]�8�     �                       return "hola"5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                 V       ]�8�    �                       return 5�_�   &   (           '           ����                                                                                                                                                                                                                                                                                                                                                 V       ]�9T     �                           5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                                                 V       ]�9V    �                 5�_�   (   *           )           ����                                                                                                                                                                                                                                                                                                                                                 V       ]�9_     �             5�_�   )   +           *           ����                                                                                                                                                                                                                                                                                                                                                 V       ]�9a     �                 5�_�   *   ,           +           ����                                                                                                                                                                                                                                                                                                                                                 V       ]�9e     �             �             5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                 V       ]�9g     �               from devicedao import DeviceDAO5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                                 V       ]�9k     �               from json import DeviceDAO5�_�   -   /           .          ����                                                                                                                                                                                                                                                                                                                                                 V       ]�9k     �               from json import 5�_�   .   2           /          ����                                                                                                                                                                                                                                                                                                                                                 V       ]�9m    �               from json import ll5�_�   /   4   1       2           ����                                                                                                                                                                                                                                                                                                                                                  V        ]�9�     �                       return response�               )            mimetype = 'application/json'�                           status   = 200,�               !            response = json_data,�               +        response = self.app.response_class(�               *        #Construyo respuesta y la devuelvo�               I        json_data = json.dumps(list_devices,default=Device.encode_device)�               !        #transformo lista en JSON�               (        list_devices = dev_dao.get_all()�               )        dev_dao      = DeviceDAO(self.db)�                   def get(self):�      
                 self.db      = db�      	                 self.request = requests�                       self.app     = app�               '    def __init__(self,app,requests,db):�                '            mimetype='application/json'�                            status=200,�                            response=json_data,5�_�   2   5   3       4      (    ����                                                                                                                                                                                                                                                                                                                                                  V        ]�:    �             �                *        #Construyo respuesta y la devuelvo�                           �             �             5�_�   4   6           5           ����                                                                                                                                                                                                                                                                                                                                                  V        ]�:9     �               from json import all5�_�   5   7           6          ����                                                                                                                                                                                                                                                                                                                                                  V        ]�:;    �               import json import all5�_�   6   8           7      
    ����                                                                                                                                                                                                                                                                                                                                                  V        ]�:L     �             �             5�_�   7   9           8          ����                                                                                                                                                                                                                                                                                                                                                  V        ]�:N     �               import json5�_�   8   :           9          ����                                                                                                                                                                                                                                                                                                                                                  V        ]�:O    �               import 5�_�   9   ;           :           ����                                                                                                                                                                                                                                                                                                                                                  V        ]�;'    �   
              5�_�   :   <           ;          ����                                                                                                                                                                                                                                                                                                                                                  V        ]�;0    �               from devicedao import DeviceDAO5�_�   ;   =           <          ����                                                                                                                                                                                                                                                                                                                                                  V        ]�=�     �               import device5�_�   <   >           =           ����                                                                                                                                                                                                                                                                                                                                                  V        ]�=�     �               import device as Devices5�_�   =   ?           >          ����                                                                                                                                                                                                                                                                                                                                                  V        ]�=�     �               from device as Devices5�_�   >   @           ?          ����                                                                                                                                                                                                                                                                                                                                                  V        ]�=�     �               from device import  Devices5�_�   ?   A           @          ����                                                                                                                                                                                                                                                                                                                                                  V        ]�=�    �               from device import Devices5�_�   @   B           A           ����                                                                                                                                                                                                                                                                                                                                                V       ]�>     �                       return response�               	        )�               )            mimetype = 'application/json'�                           status   = 200,�               !            response = json_data,�               +        response = self.app.response_class(�               *        #Construyo respuesta y la devuelvo�               I        json_data = json.dumps(list_devices,default=Device.encode_device)�               !        #transformo lista en JSON�               (        list_devices = dev_dao.get_all()�               )        dev_dao      = DeviceDAO(self.db)�                   def get(self):�   	                    self.db      = db�      
                 self.request = requests�      	                 self.app     = app�               '    def __init__(self,app,requests,db):�               !from   devicedao import DeviceDAO5�_�   A   C           B           ����                                                                                                                                                                                                                                                                                                                                                  V        ]�>�    �                       return response�               	        )�               )            mimetype = 'application/json'�                           status   = 200,�               !            response = json_data,�               +        response = self.app.response_class(�               *        #Construyo respuesta y la devuelvo�               N        json_data    = json.dumps(list_devices,default = Device.encode_device)�               !        #transformo lista en JSON�               (        list_devices = dev_dao.get_all()�               )        dev_dao      = DeviceDAO(self.db)�                   def get(self):�   	                    self.db      = db�      
                 self.request = requests�      	                 self.app     = app�               '    def __init__(self,app,requests,db):�               from device import Device�               !from   devicedao import DeviceDAO�                import json�                 import sqlite35�_�   B   D           C           ����                                                                                                                                                                                                                                                                                                                                                  V        ]�`    �                5�_�   C   E           D          ����                                                                                                                                                                                                                                                                                                                                                             ]�'�     �               !        #transformo lista en JSON5�_�   D   F           E           ����                                                                                                                                                                                                                                                                                                                                                             ]�'�     �               N        json_data    = json.dumps(list_devices,default = Device.encode_device)5�_�   E   G           F          ����                                                                                                                                                                                                                                                                                                                                                             ]�'�     �               M        json_data    = json.dump(list_devices,default = Device.encode_device)5�_�   F   H           G          ����                                                                                                                                                                                                                                                                                                                                                             ]�'�     �               J        json_data    = json.h(list_devices,default = Device.encode_device)5�_�   G   I           H          ����                                                                                                                                                                                                                                                                                                                                                             ]�'�     �               I        json_data    = jsonh(list_devices,default = Device.encode_device)5�_�   H   J           I          ����                                                                                                                                                                                                                                                                                                                                                 v        ]�(�     �               N        json_data    = json.dumps(list_devices,default = Device.encode_device)5�_�   I               J          ����                                                                                                                                                                                                                                                                                                                                                 v        ]�(�    �               I        json_data    = json.(list_devices,default = Device.encode_device)5�_�   2           4   3      )    ����                                                                                                                                                                                                                                                                                                                                                  V        ]�9�    �               *            mimetype = 'application/json')�             �                *        #Construyo respuesta y la devuelvo�             5�_�   /       0   2   1           ����                                                                                                                                                                                                                                                                                                                                                  V        ]�9�     �               eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee   eeeeeeeeeeeeeeeeeeeeeee   'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee5�_�   /           1   0           ����                                                                                                                                                                                                                                                                                                                                                V       ]�9�     �               eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee   eeeeeeeeeeeeeeeeeeeeeee   'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        ]��[     �                �               m 5��