# RelogioDesComp
## Design de Computadores - Engenharia Insper 6º Semestre
### Grupo: Alexandre Young, Jean Luca, Paulo Tozzo, Pedro de la Peña

## Descrição do Projeto
O projeto consiste na implementação de um relógio digital utilizando uma FPGA DE2-115 da Altera. A exibição de hora ocorre nos displays de 7 segmentos da placa e as funcionalidades do relógio compreendem:  

-Exibição de horas, minutos e segundos;   
-Exibição de hora no formato AM/PM e formato 24 horas;  
-Ajuste manual e independente das casas de horas, minutos e segundos;  
-Modo debugger com 10 velocidades que faz os segundos passarem mais rápido para a vizualização das demais funcionalidades;  
-Reset, retornando todos os números do relógio para 0.  

![Placa](/doc/fpga.png)

Uma responsividade adicional foi dada aos botões utilizando um debouncer.-
Um video demonstrativo pode ser encontrado no [Youtube](https://www.youtube.com/watch?v=nVh3ch9Pl34) ou nesta [pasta](/Video_Demo)

## Fluxo de dados

![Placa](https://i.imgur.com/S0X1NxP.png)
