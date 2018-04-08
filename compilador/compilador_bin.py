#####################################################
#                                                   #
#      Compialdor Python para ISA vectorial         #
#                                                   #
#####################################################

import binascii  #Se agregan paquetes necesarios

#Lista con las instrucciones del ISA
instructionList = ["NOP","SUMV","RESV","LOADV","STOREV","XOR","SLL","SRL","SLLC","SRLC",
                   "SUM","RES","MOV","VFS","LPC","SPC"];
#Lista con el codigo de operacion de la instruccion
opcodeList = ["0000","0001","0010","0011","0100","0101","0110","0111",
              "1000","1001","1010","1011","1100","1101","1110","1111"];

#Lista con el tipo de instruccion. 0 para generales, 1 para load/store y mov, 2 para vfs
formatList = [0,0,0,1,1,0,0,0,0,0,0,0,2,2,2,2];

#Tabla con todos las instrucciones a escribir
instructionTable = [];

NOP = "00000000000000";

############################################################
#funcion que agrega los ceros necesarios para los registros en la instruccion en binario
def agregaCeros(reg,num): 
    ceros = ""
    while len(ceros) < (num-len(bin(int(reg))[2:])): #Mientras el numero final sea menor al necesario
        ceros += "0"
    reg = ceros + bin(int(reg))[2:];  #Agrega ceros necesarios del registro
    return reg 

############################################################
#funcion para obtener el opcode
def opCodeOptain(opcode):
    binary="";
    n = 0
    for i in instructionList: #para cada elemento en la lista
        if opcode == i:       # Verifica el OPCode
            binary += opcodeList[n];
            break;
        n += 1;
    return [binary,n];

############################################################
         
def binario(instruction):
    salida = opCodeOptain(instruction[0].upper());
    opcode = salida[0];
    n = salida[1];
    dest = "";
    if(len(instruction)==4):                             # verifica la cantidad de argumentos
        if(formatList[n] == 0):                          # tipo general
            dato1 = "";
            dato2 = "";
            indice1 = 1;
            indice2 = 1;
            dest = agregaCeros(instruction[1][2:],4);
            if (n < 3):                                  # operaciones Vector-Vector
                if(len(instruction[2]) < 3 or len(instruction[3]) < 3):
                    print("La instrucción " + instruction[0] + " necesita registros vectores");
                    return -1;
                else:
                    dato1 = agregaCeros(instruction[2][2:],3);
                    dato2 = agregaCeros(instruction[3][2:],3);
                return(opcode+dest+dato1+dato2);
            else:
                if(len(instruction[2]) == 3):           # verifica si el registro es vectorial
                    indice1 = 2;
                if(len(instruction[3]) == 3):           # verifica si el registro es vectorial
                    indice2 = 2;
                dato1 = agregaCeros(instruction[2][indice:],3);
                dato2 = agregaCeros(instruction[3][indice2:],3);
                return(opcode+dest+dato1+dato2);
        else:
            return -1;
    
    elif(len(instruction)==3):
        reg = "";
        dir_mem = "";
        dir_mem = agregaCeros(int(instruction[2][2:],16),8); #se pasa la direccion hexa a binario
        if(formatList[n] == 1): # load/store y MOV
            dir_mem = agregaCeros(int(instruction[2][2:],16),8); #se pasa la direccion hexa a binario   
            reg = agregaCeros(instruction[1][2:],2);
            if(n == 3): # load, debe agregar NOP despues
                return(opcode+reg+dir_mem+"NOP");
            else:
                return(opcode+reg+dir_mem);
        elif(formatList[n] == 2):
            dest = agregaCeros(instruction[1][1:],2); # en ese caso dir_mem es un inmediato
            return(opcode+dest+dir_mem);
            
        else:
            return -1;
        
    elif(len(instruction)==2):        
        if(formatList[n] == 2):    # VFS, LPC y SPC
            dest = agregaCeros(instruction[1][2:],3); # dest para VFS, reg para PPC y SCP
            if(n == 13): #VFS se agrega NOP antes
                return("NOP"+opcode+dest+"0000000");
            else:
                return(opcode+dest+"0000000");
        else:
            return -1;
    else: 
        return -1;


#############################################################
#Agrega las instrucciones a una tabla para verificar errores

def agrega(instruction,line):
    if(len(instruction) < 1):
        return -1;
    else:
        instruction = instruction.split(";");                 # se revisan comentarios
        instruction = instruction[0].replace("\t","");        # se eliminan los \t        
        instruction = instruction.replace(" ","").split(","); #se eliminan espacios en blanco y se separa en lista.
        j = 0;
        for i in instruction:
            instruction[j] = i.replace("\n","");
            j += 1;
        if(instruction[0] == "" or instruction[0] == "\n"):   # omite los \n y comentarios
            return 1;
        if(len(instruction) > 4):                             # error en la instruccion
            instructionTable.append(instruction)
            print("Error del codigo fuente en la linea: " + str(line))
            return -1;
        else:
            instructionTable.append(instruction)

#############################################################
#Lectura y escritura de archivo

def write(instructionTable,target):      #Escritura de archivo
    with open(target, 'w') as archive:
        for element in instructionTable: #Revisa la tabla para convertir a binario
            test = binario(element);     #Agrega los datos en binario
            if(test != -1):
                if(test[:3] == "NOP"):
                    print(NOP, file=archive);
                    print(binario(element)[3:], file=archive);
                elif(test[14:] == "NOP"):
                    print(binario(element)[:14], file=archive);
                    print(NOP, file=archive);
                else:
                    print(binario(element), file=archive);
            else:                    
                print("Error en el codigo fuente");
                return -1;

#############################################################
#Lectura del archivo de origen

def read(source,target): #Lee el archivo origen
    cont = 1;
    error = False;
    with open(source) as archive: #Abre y lee el archivo
        for line in archive:
            if (agrega(line,cont) == -1):
                error = True;
                cont = cont + 1;
    if(error == False): #Si no da error continua
        write(instructionTable,target);
        print("Compilación con exito");


read('entrada.txt','program.bin')            

