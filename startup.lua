local component = require("component")
local term = require("term")
local computer = require("computer")

local r = component.nc_fusion_reactor
local g = component.gpu

term.setCursor(3,2)

g.setBackground(0x0077FF)
g.fill(1,1,160,50," ")
g.setBackground(0x888888)
g.fill(1,1,160,3," ")
g.setBackground(0x0055CC)
g.fill(1,4,2,47," ")
g.setBackground(0x0055FF)
g.fill(3,4,156,46," ")
g.setBackground(0xCCBBBB)
g.setForeground(0xFF2222)
term.setCursor(158,2)
term.write('X')
-- TEST 1212 POO

--TEST 2

--Test 3