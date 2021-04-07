local component = require("component")
local term = require("term")
local computer = require("computer")

local r = component.nc_fusion_reactor
local g = component.gpu

g.setResolution(80,25)

term.setCursor(3,2)

g.setBackground(0x005AEA)
g.fill(1,1,80,25," ")
g.setBackground(0x888888)
g.fill(1,1,80,3," ")
g.setBackground(0x1188FF)
g.fill(1,4,2,21," ")
g.setBackground(0x0077FF)
g.fill(3,4,76,21," ")
g.setBackground(0x998888)
g.setForeground(0xFF2222)
term.setCursor(79,2)
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

local looping = true

repeat
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

    g.setBackground(0x0077FF)
    g.setForeground(0xFFAAAA)

    term.setCursor(25,6)
    term.write("⬤ Temperature : ")

    local t = r.getTemperature() / 1000000
    local mt = r.getMaxTemperature() / 1000000
    local pt = (t / mt) * 100

    g.setForeground(0xFF7777)
    term.write(string.format("%.0f/", t))
    term.write(string.format("%.0f MK", mt))
    g.setForeground(0xFFAAAA)
    term.write("  ||  ")
    g.setForeground(0xFF7777)
    term.write(string.format("%.1f", pt))
    term.write("/100 %")

    g.setForeground(0xFFFFFF)
    term.setCursor(25,7)
    term.write("⬤ Efficiency : ")
    g.setForeground(0x00FFFF)
    term.write(string.format("%.2f", r.getEfficiency()))
    term.write(" %")

    term.setCursor(25,8)
    g.setForeground(0xFFFFFF)
    term.write("⬤ Generation : ")
    g.setForeground(0xFFFF00)
    term.write(string.format("%.0f RF/T", r.getReactorProcessPower()))

    term.setCursor(25,9)
    g.setForeground(0xFFFFFF)
    term.write("⬤ Hot Enough? ")
    if r.isHotEnough()
    then
        g.setForeground(0x77FF77)
        term.write("Yes")
    else
        g.setForeground(0xFF7777)
        term.write("No")
    end

    term.setCursor(25,11)
    g.setForeground(0xFFFFFF)
    term.write("⬤ Potential Problem:")
    term.setCursor(29,12)
    g.setForeground(0xFF7777)
    term.write(r.getProblem())
until looping == false


