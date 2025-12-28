#!/usr/bin/env python3
import argparse
from glob import glob
from pathlib import Path
import shutil
import simple_term_menu

COPYABLE_DOTFILES = glob("root/*")
ASSETS = glob("assets/*")
ZSHRC_SOURCE_COMMAND = "source $HOME/.guptarc"

def dest_filepath(repo_file_name):
  file_name = Path(repo_file_name).name
  if file_name.startswith("."):
    file_name = file_name[1:]
  return Path(f"~/.{file_name}").expanduser().resolve()

def should_continue(message = None):
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

  print(f"zshrc link not found. Installing zshrc link to {zshrc_path}")
  with zshrc_path.open("a") as f:
    f.write(f"\n{ZSHRC_SOURCE_COMMAND}\n")

def install_assets():
  assets_dir = Path("~/.assets").expanduser().resolve()
  
  # check if .assets directory exists, if not, make it
  if not assets_dir.exists():
    print(f"Creating {assets_dir} directory")
    assets_dir.mkdir(parents=True, exist_ok=True)
  
  # copy all files in assets/ to ~/.assets/, overwrite if exists
  for asset in ASSETS:
    asset_path = Path(asset)
    dest_path = assets_dir / asset_path.name
    print(f"Copying {asset} to {dest_path}")
    shutil.copy(asset_path, dest_path)

def install_dotfiles():
  print("Starting dotfiles installation.")
  install_zshrc_link()

  print("Checking dotfile assets.")
  install_assets()
  
  print("Files to update:")
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
    print(f"Updating {dotfile} from {dest_filepath(dotfile)}")
    shutil.copy(dest_filepath(dotfile), dotfile)


def interactive_menu():
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

  parser = argparse.ArgumentParser(description="Dotfiles installer")
  parser.add_argument("action", nargs="?", choices=["install", "update"],
                      help="Action to perform (omit for interactive menu)")
  args = parser.parse_args()

  if args.action == "install":
    install_dotfiles()
    print('Dotfiles successfully installed.')
  elif args.action == "update":
    update_dotfiles_from_local()
    print('Dotfiles successfully updated.')
  else:
    interactive_menu()