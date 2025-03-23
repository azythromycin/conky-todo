#!/usr/bin/env python3

import sys
import os

TODO_PATH = os.path.expanduser("~/.config/conky/todo.txt")

# Ensure the directory exists and file exists
def init_todo_file():
    os.makedirs(os.path.dirname(TODO_PATH), exist_ok=True)
    if not os.path.exists(TODO_PATH):
        with open(TODO_PATH, "w") as f:
            f.write("")

def read_tasks():
    tasks = []
    with open(TODO_PATH, "r") as f:
        for line in f:
            line = line.strip()
            if line:
                # Remove numbering like '1. Buy milk'
                task = line.split('. ', 1)[-1]
                tasks.append(task)
    return tasks

def write_tasks(tasks):
    with open(TODO_PATH, "w") as f:
        for i, task in enumerate(tasks, 1):
            f.write(f"{i}. {task}\n")

def list_tasks():
    tasks = read_tasks()
    if not tasks:
        print("No tasks for today. Let's go!")
    else:
        for i, task in enumerate(tasks, 1):
            print(f"{i}. {task}")

def add_task(task):
    tasks = read_tasks()
    tasks.append(task)
    write_tasks(tasks)
    print(f"Added: {len(tasks)}. {task}")

def remove_task(index):
    tasks = read_tasks()
    try:
        removed = tasks.pop(index - 1)
        write_tasks(tasks)
        print(f"Done: {removed}")
    except IndexError:
        print("!! Invalid task number !!")

# --- main ---
init_todo_file()

if len(sys.argv) < 2:
    print("Usage:")
    print("  todolist add \"Buy milk\"")
    print("  todolist done 1")
    print("  todolist list")
    sys.exit(1)

command = sys.argv[1].lower()

if command == "add":
    if len(sys.argv) < 3:
        print("Please provide a task.")
    else:
        add_task(" ".join(sys.argv[2:]))
elif command == "done":
    if len(sys.argv) != 3 or not sys.argv[2].isdigit():
        print("Please provide the task number to mark as done.")
    else:
        remove_task(int(sys.argv[2]))
elif command == "list":
    list_tasks()
else:
    print(f"Unknown command: {command}")
