local component = require("component") -- enables a library (basically , infos that the code can use to run more stuff) | this one is to use the components like graphic cards!
local term = require("term") -- This another library , this one is for writing stuff on screen and moving the cursor xd
local computer = require("computer") -- that's just uuuh.. for making B E E P S
local k = require("keyboard") -- do i need to explain this one? do i?
local shell = require("shell") --this is to execute commands because im lazy

local g = component.gpu --this registers the graphic card , to use later! :3

print("Hello user! Searching for updates..")
os.sleep(1)
shell.execute("cd /home") -- Now it does all the deleting old version , downloading new one , and then it launches uwu
shell.execute("del fs-gui.lua") -- Deletes old one!
print("--Deleted FS-Gui--")
shell.execute("del startup.lua") -- Delete the 2nd old one
print("--Deleted Startup--")
shell.execute("wget https://github.com/superjaja05/nc-fusion/blob/main/fs-gui.lua?raw=true") --download the new one
print("--Downloaded latest FS-Gui--")
shell.execute("wget https://github.com/superjaja05/nc-fusion/blob/main/startup.lua?raw=true") --download the 2nd new one
print("--Downloaded latest Startup--")
print("<<<Now starting program..>>>")
os.sleep(1)
shell.execute("fs-gui.lua") --starts the real program
