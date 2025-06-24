<!--![schema](https://github.com/Marcolbr2001/6502_Computer/assets/66978947/97c4f9f9-d9a5-4a7c-9f70-d55d0c68c5f6)-->


# 🖥️ 6502 Homebrew Computer

A fully custom-built computer based on the WDC 65C02 processor, designed and assembled from scratch on breadboard. Inspired by vintage 8-bit systems, it features a modular architecture with memory, clock control, basic I/O and a functional LCD interface — all orchestrated via a custom bus.

---

## 🧠 System Overview

This project demonstrates full-stack digital system design: from clock generation and memory interfacing to user input and data display. All components are manually wired and debugged to form a working, standalone computer.

![Annotated Breadboard Build](./hardware/images/6502_labeled.jpg)

---

## ⚙️ Key Components

| Module                | Description                                                      |
|----------------------|------------------------------------------------------------------|
| **65C02 CPU**         | The heart of the system running at 1.8432 MHz                    |
| **RAM (2 KiB)**       | Volatile memory for program execution                            |
| **EEPROM (32 KiB)**   | Stores BASIC or custom shell firmware                            |
| **Clock Circuit**     | Manually adjustable for step-by-step or continuous execution     |
| **Data Bus**          | Shared bus for communication between CPU, RAM, ROM, peripherals  |
| **Address Logic**     | Buffers, latches and decoders to enable memory-mapped IO         |
| **LCD Display**       | Outputs characters sent from memory-mapped IO or the shell       |
| **Keyboard Interface**| Basic 3-key setup for simple input                               |
| **SD Card Connector** | For future storage expansion (optional)                          |

---

<p align="left">
  <img src="https://github.com/Marcolbr2001/6502_Computer/assets/66978947/97c4f9f9-d9a5-4a7c-9f70-d55d0c68c5f6" width="600" title="hover text">
  <!--<img src="https://github.com/Marcolbr2001/6502_Computer/assets/66978947/97c4f9f9-d9a5-4a7c-9f70-d55d0c68c5f6" width="350" alt="accessibility text">-->
</p>

## 💾 Firmware

- **Bank-switched ROM** to run either:
  - 🧮 *EhBASIC interpreter* for immediate programming
  - 🖥️ *Custom shell* for loading machine code via UART

---

## 📸 Demo & Build

> A detailed image of the fully wired system is shown above.  
> The system is built entirely on a breadboard for educational and prototyping purposes.
>

<div align="center">

https://github.com/Marcolbr2001/6502_Computer/assets/66978947/5fb89dd2-7d88-45e0-95bd-d183eab47c54

</div>


---

## 🚀 Highlights

- Hands-on digital system integration
- Manual clock control for debugging and instruction stepping
- Modular hardware for easy modification
- Fully documented and reproducible setup
- Educational design showcasing how computers work at the lowest level

---

## 📁 Repo Structure

<pre>
6502_Computer/
├── hardware/ # KiCad schematics, wiring plan, and images
├── rom/ # EEPROM binaries (EhBASIC, shell)
├── licenses/ # External license details
└── README.md
</pre>

## 🧠 Inspiration

Based on early microcomputers like the Apple I, with influence from:
- Ben Eater’s educational 6502 builds
- 6502.org documentation and community
- Lee Davison’s EhBASIC

---
























<h1> 6502 Computer</h1>

<h2> Final Result </h2>

<div align="center">

https://github.com/Marcolbr2001/6502_Computer/assets/66978947/5fb89dd2-7d88-45e0-95bd-d183eab47c54

</div>

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
