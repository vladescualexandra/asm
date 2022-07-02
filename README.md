# asm
This makes me cry.

## Mount 
```
mount e: C:\Software\DosBox\FSysFAT\
```

## ASM x86 program development steps:
1. Edit:
```
path\to\A1.asm
```
2. Compile:
```
path\to\tasm.exe A1.asm
```
This will compile A1.obj.
3. Link-edit:
```
path\to\tlink.exe A1.obj
path\to\tlink.exe /tc A1.obj
```
4.Debugging:
```
path\to\td.exe A1.exe
path\to\td.exe A1.com
```
