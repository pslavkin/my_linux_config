Vim�UnDo� �eO~y&����Z4m1u�rH�����>Վ      v            debugClass.v3("jsonString extraido={}".format(jsonString))     # print debug de los que obtengo y devuelvo                             ]П    _�                              ����                                                                                                                                                                                                                                                                                                                                        ;           V        ]�=�    �                 class Main:   -    def __init__(self,ip="localhost",tout=1):   *        signalClass.signalRegisterSIGINT()           try:   (            self.port = int(sys.argv[1])   A            debugClass.v1("Puerto elegido= {}".format(self.port))           except:   .            debugClass.v1("Puerto incorrecto")               exit(1)            self.ip             = ip   "        self.tout           = tout   H        self.parserInstance = parserClass(configFileName = "config.txt")   T        self.comUdpInstance = comUdpClass(ip             = self.ip,port = self.port)           def main(self):           goodAck = 0           badAck  = 0           while True:   P            ans = self.comUdpInstance.sendUdpMsg(self.parserInstance.cvs2json())               if ans==b'OK':                  goodAck+=1               else:                   badAck+=1   H            debugClass.v1("goodAck={} badAck={}".format(goodAck,badAck))   !            time.sleep(self.tout)       debugClass.verbose = 1   "Main(ip="127.0.0.1",tout=1).main()5�_�                    	        ����                                                                                                                                                                                                                                                                                                                            	                      V        ]ЕR     �                           return jsonString�               v            debugClass.v3("jsonString extraido={}".format(jsonString))     # print debug de los que obtengo y devuelvo�               �            jsonString=json.dumps(jsonMsgList)                             # una vez lista la lista de diccionarios, los convierto a un string de json y es lo que devuelvo�               @                                      "name":   stringList[1] })�               ?                                      "value2": stringList[3] ,�               ?                                      "value1": stringList[2] ,�               �                jsonMsgList.append ({ "id":     stringList[0] ,            # armo un duccionario con los value:key utilizando las palabras que se extrajeron del archivo�               �                stringList=line.strip().split(",")                         # separo la linea en una lista de palabras sueltas separadas por coma�               n            for line in fileStream:                                        # para todas las lineas del archivo�               c            fileStream.readline()                                          # me salteo la 1er linea�               �            jsonMsgList=[]                                                 # lista vacia que la ire llenando con items de tipo dicctionario�               r        with open(self.csvFileName,"r") as fileStream:                     # abro archivo para lectura usando with�                   def cvs2json(self):�               `            debugClass.v1("csv file assigned={}".format(self.csvFileName)) # comantario de debug�               :            self.csvFileName=fileStream.readline().strip()�               4        with open(configFileName,"r") as fileStream:�               �    def readCsvPath(self,configFileName):                                  # lee del configFileName la ruta al csv para extraer los datos de cambio�   
            m        self.readCsvPath(configFileName)                                   # asigno el nombre del archivo csv�   	            �    def __init__(self,configFileName="config.txt"):                        # por defecto sin debug y config.txt como arvhivo que dice que archivo contiene el cambio de moneda�               $from   modules.signalModule import *�               &from   modules.udpUtilsModule import *�                /from   modules.debugModule    import debugClass�                w            debugClass.v3("jsonString extraido={}".format(jsonString))      # print debug de los que obtengo y devuelvo�                �                jsonMsgList.append ({ "id":     stringList[0] ,               # armo un duccionario con los value:key utilizando las palabras que se extrajeron del archivo�                �                stringList=line.strip().split(",")                            # separo la linea en una lista de palabras sueltas separadas por coma�                q            for line in fileStream:                                           # para todas las lineas del archivo�                f            fileStream.readline()                                             # me salteo la 1er linea�                �            jsonMsgList=[]                                                    # lista vacia que la ire llenando con items de tipo dicctionario�                �    def readCsvPath(self,configFileName):                                     # lee del configFileName la ruta al csv para extraer los datos de cambio�   
             p        self.readCsvPath(configFileName)                                      # asigno el nombre del archivo csv�   	             �    def __init__(self,configFileName="config.txt"):                           # por defecto sin debug y config.txt como arvhivo que dice que archivo contiene el cambio de moneda�                `            debugClass.v1("csv file assigned={}".format(self.csvFileName)) # comantario de debug�                �            jsonString=json.dumps(jsonMsgList)                                # una vez lista la lista de diccionarios, los convierto a un string de json y es lo que devuelvo�                u        with open(self.csvFileName,"r") as fileStream:                        # abro archivo para lectura usando with5�_�                       c    ����                                                                                                                                                                                                                                                                                                                            	                      V        ]Е�     �             �                �            jsonMsgList=[]                                                 # lista vacia que la ire llenando con items de tipo dicctionario�             �               c            fileStream.readline()                                          # me salteo la 1er linea5�_�                            ����                                                                                                                                                                                                                                                                                                                            	                      V        ]Е�     �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ]Е�     �                             return jsonString�               v            debugClass.v3("jsonString extraido={}".format(jsonString))     # print debug de los que obtengo y devuelvo�               �            jsonString=json.dumps(jsonMsgList)                             # una vez lista la lista de diccionarios, los convierto a un string de json y es lo que devuelvo�               @                                      "name":   stringList[1] })�               ?                                      "value2": stringList[3] ,�               ?                                      "value1": stringList[2] ,�               �                jsonMsgList.append ({ "id":     stringList[0] ,            # armo un duccionario con los value:key utilizando las palabras que se extrajeron del archivo�               �                stringList=line.strip().split(",")                         # separo la linea en una lista de palabras sueltas separadas por coma�               n            for line in fileStream:                                        # para todas las lineas del archivo�               {            fileStream.readline()                                          # me salteo la 1er linea que tiene un encabezado�               �            jsonMsgList=[]                                                 # lista vacia que la ire llenando con items de tipo dicctionario�               r        with open(self.csvFileName,"r") as fileStream:                     # abro archivo para lectura usando with�                   def cvs2json(self):�               `            debugClass.v1("csv file assigned={}".format(self.csvFileName)) # comantario de debug�               :            self.csvFileName=fileStream.readline().strip()�               4        with open(configFileName,"r") as fileStream:�               �    def readCsvPath(self,configFileName):                                  # lee del configFileName la ruta al csv para extraer los datos de cambio�   
            m        self.readCsvPath(configFileName)                                   # asigno el nombre del archivo csv�   	            �    def __init__(self,configFileName="config.txt"):                        # por defecto sin debug y config.txt como arvhivo que dice que archivo contiene el cambio de moneda�               $from   modules.signalModule import *�               &from   modules.udpUtilsModule import *�                /from   modules.debugModule    import debugClass�                import time�                	import os�                
import sys�                import json5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ]Е�     �                import time5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ]Е�     �                	import os5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                V       ]Е�     �                
import sys5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                V       ]Е�     �                &from   modules.signalModule   import *5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                V       ]Е�    �                &from   modules.udpUtilsModule import *5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                V       ]Ж	    �                             return jsonString�               v            debugClass.v3("jsonString extraido={}".format(jsonString))     # print debug de los que obtengo y devuelvo�               �            jsonString=json.dumps(jsonMsgList)                             # una vez lista la lista de diccionarios, los convierto a un string de json y es lo que devuelvo�               @                                      "name":   stringList[1] })�               ?                                      "value2": stringList[3] ,�               ?                                      "value1": stringList[2] ,�               �                jsonMsgList.append ({ "id":     stringList[0] ,            # armo un duccionario con los value:key utilizando las palabras que se extrajeron del archivo�               �                stringList=line.strip().split(",")                         # separo la linea en una lista de palabras sueltas separadas por coma�               n            for line in fileStream:                                        # para todas las lineas del archivo�               {            fileStream.readline()                                          # me salteo la 1er linea que tiene un encabezado�               �            jsonMsgList=[]                                                 # lista vacia que la ire llenando con items de tipo dicctionario�               r        with open(self.csvFileName,"r") as fileStream:                     # abro archivo para lectura usando with�                   def cvs2json(self):�   
            `            debugClass.v1("csv file assigned={}".format(self.csvFileName)) # comantario de debug�   	            :            self.csvFileName=fileStream.readline().strip()�      
         4        with open(configFileName,"r") as fileStream:�      	         �    def readCsvPath(self,configFileName):                                  # lee del configFileName la ruta al csv para extraer los datos de cambio�               m        self.readCsvPath(configFileName)                                   # asigno el nombre del archivo csv�               �    def __init__(self,configFileName="config.txt"):                        # por defecto sin debug y config.txt como arvhivo que dice que archivo contiene el cambio de moneda�                /from   modules.debugModule    import debugClass�                import json5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ]О�     �   
            `            debugClass.v1("csv file assigned={}".format(self.csvFileName)) # comantario de debug5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ]О�    �   
            `            debugClass.vx("csv file assigned={}".format(self.csvFileName)) # comantario de debug5�_�                          ����                                                                                                                                                                                                                                                                                                                                                V       ]П      �               v            debugClass.v3("jsonString extraido={}".format(jsonString))     # print debug de los que obtengo y devuelvo5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ]П    �               v            debugClass.vx("jsonString extraido={}".format(jsonString))     # print debug de los que obtengo y devuelvo5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ]О�     �               s            debugClass.vjsonString extraido={}".format(jsonString))     # print debug de los que obtengo y devuelvo5��