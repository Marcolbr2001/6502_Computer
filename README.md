<!--![schema](https://github.com/Marcolbr2001/6502_Computer/assets/66978947/97c4f9f9-d9a5-4a7c-9f70-d55d0c68c5f6)-->


# 🖥️ 6502 Computer

A fully custom-built computer based on the WDC 65C02 processor, designed and assembled from scratch on breadboard. Inspired by vintage 8-bit systems, it features a modular architecture with memory, clock control, basic I/O and a functional LCD interface — all orchestrated via a custom bus.

---

## 🧠 System Overview

This project demonstrates full-stack digital system design: from clock generation and memory interfacing to user input and data display. All components are manually wired and debugged to form a working, standalone computer.

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
  - 🖥️ *Assemlby code* written and loaded to the EEPROM through EEPROM programming circuit

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

   <p align="center">
        <img src="https://github.com/Marcolbr2001/6502_Computer/assets/66978947/2480d8d1-a075-4560-a186-660e817b4248" alt="Image" width = "500">
    </p>
---

## 📁 Repo Structure

<pre>
6502_Computer/
├── CPU_Analyzer/ # KiCad schematics, wiring plan, and images
├── EEPROM/ # EEPROM binaries (EhBASIC, shell)
├── _Datasheets/ # External license details
└── README.md
</pre>

## 🧠 Inspiration

Based on early microcomputers like the Apple I, with influence from:
- Ben Eater’s educational 6502 builds
- 6502.org documentation and community

---
