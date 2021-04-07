local component = require("component")
local term = require("term")
local computer = require("computer")
local k = require("keyboard")
local shell = require("shell")

local g = component.gpu

print("Hello user! Searching for updates..")
os.sleep(1)
shell.execute("wget ")