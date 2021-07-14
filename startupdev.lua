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


local g = component.gpu

print("Hello user! Downloading updates..")
os.sleep(1)
shell.execute("cd /home")
shell.execute("del fs-gui.lua")
print("FSG Deleted")
shell.execute("del startup.lua")
print("SUP Deleted")
shell.execute("wget https://github.com/superjaja05/nc-fusion/blob/main/fs-gui.lua?raw=true")
print("FSG Acquired")
shell.execute("wget https://github.com/superjaja05/nc-fusion/blob/main/startup.lua?raw=true")
print("SUP Acquired")
print("Done! Starting program..")
os.sleep(1)
shell.execute("fs-gui.lua")