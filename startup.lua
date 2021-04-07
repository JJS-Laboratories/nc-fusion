local component = require("component")
local term = require("term")
local computer = require("computer")

local r = component.nc_fusion_reactor
local g = component.gpu

term.setCursor(3,2)

g.setBackground(0x0033DD)
g.fill(1,1,160,50," ")
g.setBackground(0xAAAAAA)
g.fill(1,1,160,3," ")
g.setBackground(0x0055FF)
g.fill(1,4,2,47," ")
g.setBackground(0x0033FF)
g.fill(3,3,156,47," ")