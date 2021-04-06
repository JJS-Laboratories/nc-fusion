local component = require("component")
local term = require("term")
local computer = require("computer")

local r = component.nc_fusion_reactor
local g = component.gpu

term.setCursor(3,2)
g.setForeground(0x0055FF)
g.fill(3,2,156,48,"+")