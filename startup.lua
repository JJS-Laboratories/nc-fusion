local component = require("component")
local term = require("term")
local computer = require("computer")

local r = component.nc_fusion_reactor
local g = component.gpu

term.setCursor(3,2)

g.setBackground(0x005AEA)
g.fill(1,1,160,50," ")
g.setBackground(0x888888)
g.fill(1,1,160,3," ")
g.setBackground(0x1188FF)
g.fill(1,4,2,46," ")
g.setBackground(0x0077FF)
g.fill(3,4,156,46," ")
g.setBackground(0x998888)
g.setForeground(0xFF2222)
term.setCursor(158,2)
term.write('X')
g.setBackground(0x888888)
term.setCursor(3,2)
g.setForeground(0x00FFFF)
term.write("⬤ JJS Industries")
g.setForeground(0x0077FF)
term.write(" | ")
g.setForeground(0x000000)
term.write("Reactor Control ⬤")
g.setForeground(0xFFFFFF)
term.setCursor(3,2)
term.write("⬤")
term.setCursor(38,2)
term.write("⬤")
local ra = r.isProcessing()


if ra == false
then
    g.setBackground(0xDD3355)
else
    g.setBackground(0x22DD00)
end
g.fill(5,5,18,9," ")


if ra == false
then
    g.setBackground(0xFF5577)
else
    g.setBackground(0x44FF22)
end
g.fill(7,6,14,7," ")

