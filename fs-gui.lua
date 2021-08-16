local component = require("component")
local term = require("term")
local computer = require("computer")
local k = require("keyboard")
local shell = require("shell")
local sides = require("sides")
local rs = component.redstone

local r = component.nc_fusion_reactor
local g = component.gpu

local starting = true
g.setResolution(80,25)

term.setCursor(3,2)

g.setBackground(0x005AEA)
g.fill(1,1,80,25," ")
g.setBackground(0x003FCE)
g.fill(79,1,2,25," ")
g.setBackground(0x777777)
g.fill(1,1,80,3," ")
g.setForeground(0xDDDDDD)
g.fill(1,1,80,1,"═")
g.fill(1,3,80,1,"═")
g.setBackground(0x1188FF)
g.fill(1,4,2,21," ")
g.setBackground(0x0077FF)
g.fill(3,4,76,21," ")
g.fill(1,25,2,1," ")
g.setBackground(0x887777)
g.setForeground(0xFFAAAA)
term.setCursor(50,2)
os.sleep(0.2)
term.write("Stop (S) | Restart (R)")
g.setForeground(0xFF2222)
term.setCursor(74,2)
os.sleep(0.2)
term.write('(Hold)')
g.setBackground(0x777777)
term.setCursor(3,2)
g.setForeground(0x55FFFF)
os.sleep(0.2)
term.write("⬤ JJS Industries")
g.setForeground(0x0000FF)
term.write(" | ")
g.setForeground(0x000000)
os.sleep(0.2)
term.write("Reactor Control ⬤")
g.setForeground(0xFFFFFF)
term.setCursor(3,2)
os.sleep(0.2)
term.write("⬤")
term.setCursor(38,2)
term.write("⬤")

local looping = true
local mt = r.getMaxTemperature()/1000000

repeat
    g.setResolution(80,25)
    local ra = r.isProcessing()

    if ra == false
    then
        g.setBackground(0xDD3355)
        rs.setOutput(sides.bottom, 0 )
    else
        rs.setOutput(sides.bottom, 15 )
        if r.getEfficiency() >= 98
        then
            g.setBackground(0xDDDDDD)
        else
            g.setBackground(0x22DD00)
        end
    end
    g.fill(5,5,2,9," ")
    g.fill(21,5,2,9," ")
    g.fill(6,5,16,1," ")
    g.fill(6,13,16,1," ")


    if ra == false
    then
        g.setBackground(0xFF5577)
    else
        if r.getEfficiency() >= 98
        then
            g.setBackground(0xFFFFFF)
        else
            g.setBackground(0x44FF22)
        end
    end
    g.fill(7,6,14,7," ")

    g.setBackground(0x0077FF)
    g.setForeground(0xFFFFFF)

    term.setCursor(25,6)
    term.write("⬤ Temperature : ")

    local t = r.getTemperature() / 1000000
    local pt = (t / mt) * 100

    g.setForeground(0xFF7777)
    term.write(string.format("%.0f/", t))
    term.write(string.format("%.0f MK", mt))
    g.setForeground(0xFFFFFF)
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

    g.setForeground(0xFFFFFF)
    term.setCursor(25,10)
    term.write("⬤ Cooling Rate: ")
    g.setForeground(0x0000FF)
    term.write(r.getReactorCoolingRate())
    term.write(" K/t")

    term.setCursor(25,12)
    g.setForeground(0xFFFFFF)
    term.write("⬤ Potential Problem:")
    term.setCursor(29,13)
    g.setForeground(0xFF7777)
    term.write(r.getProblem())
    term.write("                  ")
    local key1 = k.isKeyDown("s")
    if key1 then break end

    local key2 = k.isKeyDown("r")
    if key2 then
        term.setCursor(6,23)
        computer.beep()
        os.sleep(0.2)
        computer.beep()
        os.sleep(0.2)
        term.setCursor(6,23)
        shell.execute("reboot")
    end

    term.setCursor(5,23)
    os.sleep(0.1)
    if starting == true then
    computer.beep()
    starting = false
    end
until looping == false

computer.beep()
g.setResolution(160,50)
g.setBackground(0x220000)
g.fill(1,1,160,50," ")
g.setForeground(0xFFFFFF)
term.setCursor(68,25)
term.write("Shutting down program...")

os.sleep(0.5)

g.setForeground(0xFFFFFF)
g.setBackground(0x000000)

shell.execute("clear")
g.fill(3,3,1,3,"║")
g.fill(44,3,1,3,"║")
g.fill(3,2,41,1,"═")
g.fill(3,6,41,1,"═")
g.fill(3,2,1,1,"╔")
g.fill(44,2,1,1,"╗")
g.fill(3,6,1,1,"╚")
g.fill(44,6,1,1,"╝")
term.setCursor(4,4) term.write("  << Welcome back to the shell Sir! >>  ")
term.setCursor(3,7)


