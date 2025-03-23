# conky-todo

Conky configuration that goes the extra mile to integrate your daily tasks into it!  
Provides a real-time system monitor **and** task manager right on your Linux desktop using Conky and a lightweight CLI-based to-do list — all fully integrated and easy to control via terminal.

![image](https://github.com/user-attachments/assets/ec843706-a82f-4220-a4a3-cc4ee238bebd)

---

## Features

- Real-time CPU, RAM, Disk, Network monitoring
- IP + current weather displayed live (no API keys required)
- Interactive To-Do List shown on your desktop
- Fully terminal-controlled with the `todolist` CLI
- Lightweight: single file CLI + single Conky config

---

## Installation Steps

### 1. Clone the repo 

```bash
git clone https://github.com/azythromycin/conky-todo.git
cd conky-todo
```
### 2. Run the installer

```bash
chmod +x install.sh
./install.sh
```
### 3. To run conky with this config file
```bash
conky -c ~/.config/conky/my_conky.lua &
```
(To kick off conky with this config automatically at the time of login, add the above mentioned command to "Startup Applications")
![image](https://github.com/user-attachments/assets/85d6303f-61e1-481f-85cd-b1061bae23c1)
Click on the '+' icon and select the 'custom command' option (or something similar if you're using a different DE)
![image](https://github.com/user-attachments/assets/74c54c36-12d2-435c-8f46-d838d9706eed)




