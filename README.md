<!--![schema](https://github.com/Marcolbr2001/6502_Computer/assets/66978947/97c4f9f9-d9a5-4a7c-9f70-d55d0c68c5f6)-->

<h1> 6502 Computer</h1>

<h2> Final Result </h2>

https://github.com/Marcolbr2001/6502_Computer/assets/66978947/4c72619a-47c8-4c1f-a60d-3ac7a9b20c1d

<h2> Computer Architecture and Workflow </h2>

<p>Working chip by chip, the computer had been crafted following the processor workflow. At its core, the system is indeed anchored by the 65C02 CPU, and the architecture around it works as it can be seen from the picture below:
</p>

<ul style="list-style-type: none; text-align: justify;">
    <li style="display: inline-block; width: 30%;">The 6502-instructions are executed by fetching them from a 32kB EEPROM memory. The Assembly program, previously flashed using a self-built EEPROM programmer, is read by the CPU. A 2kB RAM module enables subroutine jumps.</li>
    <li style="display: inline-block; width: 30%;">An address selector, comprising a NOR port and a multiplexer, facilitates systematic result storage after the calculation.</li>
    <li style="display: inline-block; width: 30%;">Introducing some nanoseconds delay through buffers, I synchronously store received data in flip-flops.</li>
    <li style="display: inline-block; width: 30%;">Finally, the LCD displays data according to the instructions it receives. A small keyboard with interrupts enhances real-time control.</li>
</ul>

<p align="center">
  <img src="https://github.com/Marcolbr2001/6502_Computer/assets/66978947/97c4f9f9-d9a5-4a7c-9f70-d55d0c68c5f6" width="600" title="hover text">
  <!--<img src="https://github.com/Marcolbr2001/6502_Computer/assets/66978947/97c4f9f9-d9a5-4a7c-9f70-d55d0c68c5f6" width="350" alt="accessibility text">-->
</p>

<br><br>

<h2> Processor Detalis </h2>
            <p style="text-align: justify;">
               The 65C02 is an enhanced version of the MOS Technology 6502 microprocessor, which was widely used in the late 1970s and 1980s in various home computers and game consoles. The 65C02 was introduced as an upgrade to the 6502, providing some additional features and improvements while maintaining compatibility with its predecessor.
            </p>
            <br>
             <p style="text-align: justify;">
               Code written for the 6502 can generally run on a system equipped with a 65C02 without modification. The 65C02 typically operated at clock speeds ranging from 1 to 4 MHz, depending on the specific implementation. Moreover, the 65C02 enables run-time modification in clock speed, this allowed me not to be limited in study the entire circuit computer behaviour.
            </p>
        
   <p align="center">
        <img src="https://github.com/Marcolbr2001/6502_Computer/assets/66978947/2480d8d1-a075-4560-a186-660e817b4248" alt="Image" width = "500">
    </p>
</div>
