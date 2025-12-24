#!/usr/bin/env python3
from glob import glob
from pathlib import Path
import shutil
import simple_term_menu

COPYABLE_DOTFILES = glob("root/*")

def dest_filepath(repo_file_name):
  file_name = Path(repo_file_name).name
  if file_name.startswith("."):
    file_name = file_name[1:]
  return Path(f"~/.{file_name}").expanduser().resolve()

def install_zshrc_link():
  pass

def install_dotfiles():
  print("Installing dotfiles. Files to update:")
  for dotfile in COPYABLE_DOTFILES:
    print(f" {dotfile}  -> {dest_filepath(dotfile)}")

  print("Continue? (y/n)")
  if not input().lower().startswith("y"):
    print("Aborting...")
    return

  for dotfile in COPYABLE_DOTFILES:
    print(f"Copying {dotfile} to {dest_filepath(dotfile)}")
    shutil.copy(dotfile, dest_filepath(dotfile))

if __name__ == "__main__": 
  print()
  install_dotfiles()
  print()
  print('Dotfiles successfully installed.')