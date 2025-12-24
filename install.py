#!/usr/bin/env python3
from glob import glob
from pathlib import Path
import shutil
import simple_term_menu

COPYABLE_DOTFILES = glob("root/*")
ZSHRC_SOURCE_COMMAND = "source ~/.guptarc"

def dest_filepath(repo_file_name):
  file_name = Path(repo_file_name).name
  if file_name.startswith("."):
    file_name = file_name[1:]
  return Path(f"~/.{file_name}").expanduser().resolve()

def should_continue(message):
  messages = message or "Continue? (y/n): "
  if not input(messages).lower().startswith("y"):
    print("Aborting...")
    return False
  return True

def install_zshrc_link():
  zshrc_path = Path("~/.zshrc").expanduser()

  if zshrc_path.exists() and ZSHRC_SOURCE_COMMAND in zshrc_path.read_text():
    print("zshrc link already installed.")
    return

  print(f"zshrc not found. Installing zshrc link to {zshrc_path}")
  with zshrc_path.open("a") as f:
    f.write(f"\n{ZSHRC_SOURCE_COMMAND}\n")


def install_dotfiles():
  print("Installing dotfiles. Files to update:")
  for dotfile in COPYABLE_DOTFILES:
    print(f" {dotfile}  -> {dest_filepath(dotfile)}")

  if not should_continue():
    return

  for dotfile in COPYABLE_DOTFILES:
    print(f"Copying {dotfile} to {dest_filepath(dotfile)}")
    shutil.copy(dotfile, dest_filepath(dotfile))


def update_dotfiles_from_local():
  print("Updating dotfiles from local. Files to update:")
  for dotfile in COPYABLE_DOTFILES:
    print(f" {dest_filepath(dotfile)}  -> {dotfile}")

  if not should_continue():
    return

  for dotfile in COPYABLE_DOTFILES:
    print(f"Updating {dest_filepath(dotfile)} from {dotfile}")
    shutil.copy(dotfile, dest_filepath(dotfile))


if __name__ == "__main__": 
  print(r'''
      _       _    __ _ _
     | |     | |  / _(_) |
   __| | ___ | |_| |_ _| | ___  ___
  / _` |/ _ \| __|  _| | |/ _ \/ __|
 | (_| | (_) | |_| | | | |  __/\__ \
  \__,_|\___/ \__|_| |_|_|\___||___/

        Welcome home, Ankur.

  ''')

  options = [
    '[i] Install remote dotfiles to local',
    '[u] Update remote dotfiles from local',
    '[q] Quit'
  ]
  tmenu = simple_term_menu.TerminalMenu(options, title="What do you want to do?")
  choice_idx = tmenu.show()

  if choice_idx == 0:
    install_dotfiles()
    print('Dotfiles successfully installed.')

  elif choice_idx == 1:
    update_dotfiles_from_local()
    print('Dotfiles successfully updated.')

  elif choice_idx == 2:
    print("Quitting...")