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

### CLI Usage: todolist
To add a task(s):

![image](https://github.com/user-attachments/assets/566f6bea-de89-4f0c-972e-0d596fd304b9)

Notice that each task you add is assigned to a number. You use that number to refer to the task when you want to remove it from your list.

To remove a task(s), you mark it as 'done' with the reference number that came with it at the time of adding
![image](https://github.com/user-attachments/assets/86012961-4fec-484a-9a11-f04dbe06412e)

To view all tasks:
```bash
todolist list
```
If you ever want to locate the task file for any reason, it is located in:
```bash
~/.config/conky/todo.txt
```
### Requirements
Install these dependencies (if not already installed):
```bash
sudo apt install conky-all curl python3
```



Made with caffeine by @azythromycin
