# RelogioDesComp
## Design de Computadores - Engenharia Insper 6º Semestre
### Grupo: Alexandre Young, Jean Luca, Paulo Tozzo, Pedro de la Peña

## Descrição do Projeto
O projeto consiste na implementação de um relógio digital utilizando uma FPGA DE2-115 da Altera. A exibição de hora ocorre nos displays de 7 segmentos da placa e as funcionalidades do relógio compreendem:  

-Exibição de horas, minutos e segundos;   
-Exibição de hora no formato AM/PM e formato 24 horas;  
-Ajuste manual e independente das casas de horas, minutos e segundos;  
-Modo debugger com 10 velocidades que faz os segundos passarem mais rápido para a vizualização das demais funcionalidades;  
-Reset, retornando todos os valores do relógio para o inicial.  

![Placa](/doc/fpga.png)

Uma responsividade adicional foi dada aos botões utilizando um debouncer.
Um video demonstrativo pode ser encontrado no [Youtube](https://www.youtube.com/watch?v=nVh3ch9Pl34) ou nesta [pasta](/Video_Demo).

## Fluxo de dados

![Diagrama de blocos](https://i.imgur.com/S0X1NxP.png) 

A unidade de controle do projeto está nomeada como [Relogio](/RelogioProj/Relogio.vhd) este arquivo também é o Top Level. 

Os [pulsosDivisores](/RelogioProj/pulsoDivisor.vhd) possuem registradores, porém também recebem uma entrada de clock referente à unidade de tempo que correspondem à etapa seguinte. O pulso divisor de segundos utiliza a frequência da própria FPGA para contar os segundos sendo que o divFactor (fator de divisão) é utilizado para a conversão da frequência da placa em segundos, neste caso, assume o valor de 50000000. Já nos demais casos, o divFactor assume valor referente ao máximo da unidade da casa em questão (segundos, minutos e horas de 0 a 9, dezenas de segundos, e dezenas de minutos de 0 a 5), possibilitando que o componente pulsoDivisor seja resetado após atingir o valor máximo da unidade de tempo em questão. O sistema funciona em cascata: o pulsoDivisor de segundos recebe o clock da placa, o de dezenas de segundos recebe o pulso de segundos, o de minutos recebe o pulso de dezenas de segundos, etc.

Os [acumuladores](/RelogioProj/acumulador.vhd) são registradores utilizados para a contagem do tempo e são incrementados sempre que o número de rising edges definidos pelo divFactor do pulsoDivisor em questão for atingido. O valor armazenado nestes registradores então é decodificado e convertido para representar o número em questão no display de 7 segmentos, sendo que as horas estão nos displays mais à esquerda, seguidos de dois displays reservados para os minutos e segundos. Os dois mais à direita são reservados para marcar AM e PM no caso da utilização do formato de 12 horas. A conversão ocorre no componente [conversorHex7Seg](/RelogioProj/conversorHex7Seg.vhd). 

Uma [ULA](/RelogioProj/ULA.vhd) é utilizada em conjunto com [hourDecoder](/RelogioProj/hourDecoder.vhd) para realizar a conversão do formato de hora para AM/PM para 24 horas (o oposto também é válido), além de quebrar o acumulador de 23 horas para as casas decimais. Após isto, o valor é convertido para ser apresentado no display de 7 segmentos.

Por fim, o [menu controller](/RelogioProj/menu_controller.vhd) é utilizado para incrementar o valor de outros acumuladores (com exceção da dezena de hora), sendo possivel, assim, ajustar o relógio da maneira desejada. Ele também envia uma máscara para o display a ser modificado para que ele fique piscando.
