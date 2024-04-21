<!--![schema](https://github.com/Marcolbr2001/6502_Computer/assets/66978947/97c4f9f9-d9a5-4a7c-9f70-d55d0c68c5f6)-->

<span style="font-size:2em;"> Computer Architecture and Workflow </span>

Working chip by chip, the computer had been crafted following the processor workflow. At its core, the system is indeed anchored by the 65C02 CPU, and the architecture around it works as it can be seen from the picture:

a. The 6502-instructions are executed by fetching them from a 32kB EEPROM memory. The Assembly program, previously flashed using a self-built EEPROM programmer, is read by the CPU. A 2kB RAM module enables subroutine jumps.

b. An address selector, comprising a NOR port and a multiplexer, facilitates systematic result storage after the calculation.

c. Introducing some nanoseconds delay through buffers, I synchronously store received data in flip-flops.

d. Finally, the LCD displays data according to the instructions it receives. A small keyboard with interrupts enhances real-time control.

<p align="center">
  <img src="https://github.com/Marcolbr2001/6502_Computer/assets/66978947/97c4f9f9-d9a5-4a7c-9f70-d55d0c68c5f6" width="600" title="hover text">
  <!--<img src="https://github.com/Marcolbr2001/6502_Computer/assets/66978947/97c4f9f9-d9a5-4a7c-9f70-d55d0c68c5f6" width="350" alt="accessibility text">-->
</p>

prova
