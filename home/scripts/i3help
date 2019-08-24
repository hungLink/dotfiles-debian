#!/usr/bin/python3
from tkinter import *
from pathlib import Path

#sh co al su
helpText = {
	"default" : "The following are the key combinations available to you, and a short description of what they are meant to control.\n Hold one of them down to see the available commands using that key combo. Example: press super, and look at the list. You should see an entry that says #~ T - Terminal.\n that means that if you hold super and press T, you will launch the term. Press ESC to close this help tool, and press Enter to return to this help text.\n",
	"su" : "",
	"alSu" : "",
	"coSu" : "",
	"shSu" : "",
	"coAlSu" : "",
	"shAlSu" : "",
	"shCoSu" : "",
	"shCoAlSu" : "",
}
homeDir = str(Path.home())

def quit(event):
	root.quit()
def setText(string):
	label.config(text=string)
def defaultText(event=""):
	setText(helpText["default"])
def updateHelpText():
	configText = ""
	configCombos = ""
	with open(homeDir+"/.config/i3/config") as f:
		configText = f.readlines()
	currentSection = ""
	for line in configText:
		if line.find("##~~") != -1:
			line=line.strip("\n")
			line=line.strip("\t")
			#Determine the new active section.
			sh = True if line.find("SHIFT") != -1 else False
			co = True if line.find("CONTROL") !=-1 else False
			al = True if line.find("ALT") !=-1 else False
			su = True if line.find("SUPER") !=-1 else False
			if (su):
				currentSection = "su"
			if (al and su):
				currentSection = "alSu"
			if (co and su):
				currentSection = "coSu"
			if (sh and su):
				currentSection = "shSu"
			if (sh and co and al and su):
				currentSection = "shCoAlSu"
			if (sh and co and su):
				currentSection = "shCoSu"
			if (sh and al and su):
				currentSection = "shAlSu"
			if (co and al and su):
				currentSection = "coAlSu"
			if (sh and co and al and su):
				currentSection = "shCoAlSu"
			helpText['default'] += line+"\n"
			helpText[currentSection] += line+"\n"
		elif line.find("#~") != -1:
			helpText[currentSection] += line

## Keypress stubs to get the functions calling correctly.
def super(event=""):
	setText(helpText["su"])
def altSuper(event=""):
	setText(helpText["alSu"])
def controlSuper(event=""):
	setText(helpText["coSu"])
def shiftSuper(event=""):
	setText(helpText["shSu"])
def controlAltSuper(event=""):
	setText(helpText["coAlSu"])
def shiftAltSuper(event=""):
	setText(helpText["shAlSu"])
def shiftControlSuper(event=""):
	setText(helpText["shCoSu"])
def shiftControlAltSuper(event=""):
	setText(helpText["shCoAlSu"])

updateHelpText()

#### TKINTER WINDOW ####
root = Tk()
scrWidth = root.winfo_screenwidth() 
scrHeight = height=root.winfo_screenheight()

## Styling
root.attributes('-type', 'dialog')
root.attributes('-alpha', 0.9)

frameWidth = scrWidth * 0.9
frameHeight = scrHeight * 0.9
frame = Frame(root, width=frameWidth, height=frameHeight)

label = Label(frame, text="", justify=LEFT)
label.pack()
defaultText()
frame.pack_propagate(False)

## Keybindings
root.bind("<Escape>", quit)
root.bind("<Return>", defaultText)
root.bind("<Super_L>", super)
root.bind("<Alt-Super_L>", altSuper)
root.bind("<Control-Super_L>", controlSuper)
root.bind("<Shift-Super_L>", shiftSuper)
root.bind("<Control-Alt-Super_L>", controlAltSuper)
root.bind("<Shift-Alt-Super_L>", shiftAltSuper)
root.bind("<Shift-Control-Super_L>", shiftControlSuper)
root.bind("<Shift-Control-Alt-Super_L>", shiftControlAltSuper)

frame.pack()
root.mainloop()

