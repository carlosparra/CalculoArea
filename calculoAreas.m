clear all;
opcion=0;
clc;
fid = fopen('actividad.txt','w');
fecha = date();
fprintf (fid,'La_actividad_del_usuario_con_fecha:_%s\n', fecha);
fclose (fid);
while (opcion < 6 || opcion > 6 )
    
   fprintf("000------------------------------------000\n");
   fprintf("0-----------------MENU-------------------0\n");
   fprintf("000------------------------------------000\n");
   fprintf("-----------------------------------------\n");
   fprintf("000------------------------------------000\n");
   fprintf("0----------------------------------------0\n");
   fprintf("--PARA_�REA_DE_CUADRADO--OPRIME-(1)-------\n");
   fprintf("--PARA_�REA_DE_TRI�NGULO-OPRIME-(2)-------\n");
   fprintf("--PARA_�REA_DE_C�RCULO---OPRIME-(3)-------\n");
   fprintf("--LEER_LA_ACTIVIDAD------OPRIME-(4)-------\n");
   fprintf("--HOY_TENGO_SUERTE-------OPRIME-(5)-------\n");
   fprintf("--PARA_SALIR-------------OPRIME-(6)-------\n");
   fprintf("------------------------------------------\n");
   fprintf("--CURSO_MATLAB_CAMPUS_GUADALAJARA---GPLv2-\n");
   fprintf("0----------------------------------------0\n");
   fprintf("000------------------------------------000\n\n");
   opcion=input("Teclee la opci�n del men�: ");
    
    switch (opcion)
        case 1
            clc
            x=input("Teclee el valor del primer lado: ");
            y=input("Teclee el valor del segundo lado: ");
            cuadrado=calcularAreaCuadrado(x,y);
            fprintf('El �rea del cuadrado: %10.4f\n.\n.\n.\n',cuadrado);
            fid = fopen('actividad.txt','a+');
            fprintf(fid,'El_�rea_del_cuadrado:_%10.4f\n',cuadrado);
            fclose (fid);
        case 2
            clc
            x=input("Teclee el valor de base: ");
            y=input("Teclee el valor de la altura: ");
            triangulo=calcularAreaTriangulo(x,y);
            fprintf('El �rea del trianulo: %10.4f\n.\n.\n.\n',triangulo);
             fid = fopen('actividad.txt','a+');
            fprintf(fid,'El_�rea_del_tri�ngulo:_%10.4f\n',triangulo);
            fclose (fid);
        case 3
            clc
            x=input("Teclee el valor del radio: ");
            circulo=calcularAreaCirculo(x);
            fprintf('El �rea del c�rculo: %10.4f\n.\n.\n.\n',circulo);
            fid = fopen('actividad.txt','a+');
            fprintf(fid,'El_�rea_del_c�rculo:_%10.4f\n',circulo);
            fclose (fid);
            
         case 4
             clc
             fid = fopen('actividad.txt','r');
             a= textscan(fid, '%1000s');
             fclose(fid);
             celldisp(a);
         case 5
             clc
             x=randi([1 10],1,1);
             x=round(x,0);
             fprintf('Tu n�mero de la suerte: %d\n.\n.\n.\n',x);
             fid = fopen('actividad.txt','a+');
             fprintf(fid,'Tu_n�mero_de_la_suerte:_%d\n',x);
             fclose (fid);
             
        otherwise
           clc
         fprintf('\n.\n.\n');
  
    end
   

end
clc