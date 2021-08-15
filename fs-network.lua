local component = require("component")
local term = require("term")
local computer = require("computer")
local k = require("keyboard")
local shell = require("shell")
local sides = require("sides")
local filesystem = require("filesystem")

local tnl = component.tunnel
local g = component.gpu
local r = component.nc_fusion_reactor

i = 1

repeat

local V1 = r.getMaxTemperature()
local V2 = r.isProcessing()
local V3 = r.getEfficiency()
local V4 = r.getTemperature()
local V5 = r.getReactorProcessPower()
local V6 = r.isHotEnough()
local V7 = r.getReactorCoolingRate()
local V8 = r.getProblem()

tnl.send(V1,V2,V3,V4,V5,V6,V7,V8)

os.sleep(0.5)

until i == 2