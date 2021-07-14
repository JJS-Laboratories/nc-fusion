# nc-fusion

Welcome! This is a silly OC(OpenComputer) program i made.

This program is made to monitor a Fusion Reactor from NC (NuclearCraft)

---------------

# Features:

Auto-Update
Temp Display
Efficiency Display
Generation Rate (RF/t)
Cooling Rate (K/t)
Problem Display (Example : E-Magnets not powered)

Displays status: RED = Shutdown/Too cold , Green = Hot enough to start/run , White = close to Full Efficiency

---------------

# Preview of interface:

![image](https://user-images.githubusercontent.com/38012296/125560128-5469feed-239d-4fe1-84a3-3f1a2f036656.png)

---------------

# Requirements:

- Internet Card
- T3 GPU
- Redstone Card
- T3 Screen
- A Fusion Reactor connected to the computer

---------------

# How to install:

Simply go into your OpenOS shell and write `wget https://raw.githubusercontent.com/superjaja05/nc-fusion/main/startup.lua`.
Then start the file named `startup.lua` and wait for it to download

---------------

# How to make it auto-start

1. Edit the file .shrc : `edit /home/.shrc`
2. Add `/home/startup.lua` in the file
3. Press `CTRL+S` to save , then `CTRL+W` to leave
4. Restart the computer , and see if it works!

---------------

# To do:

- Fix the auto-update (if you don't have internet access the program will delete on startup , and will be unable to re-download)
