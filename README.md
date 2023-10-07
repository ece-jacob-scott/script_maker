# ScriptMaker

## Description

Simple python script which allows you create shell scripts based on the history of your commands.

## Usage

```bash
> script_maker --name cool_script --history 10 --directory .
```

## Installation

```bash
> ./install.sh
```

## Help

```bash
> script_maker --help
usage: script_maker.py [-h] -n  [-y] [-d]

Creates a script file from the command line history

options:
  -h, --help         show this help message and exit
  -n , --name        The name of the script to be created
  -y , --history     The amount of history to be included in the script in line numbers with a default of 10
  -d , --directory   Script output directory
```
