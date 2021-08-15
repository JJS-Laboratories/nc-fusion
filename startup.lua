local component = require("component")
local term = require("term")
local computer = require("computer")
local k = require("keyboard")
local shell = require("shell")
local internet = require("internet")
local handle = internet.request("https://www.github.com")
if handle ~= nil then
    print("Connected to Internet!")
end


local g = component.gpu --this registers the graphic card , to use later! :3

print("Hello user! Downloading updates..")
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
