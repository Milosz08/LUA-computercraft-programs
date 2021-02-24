--adjust to 2x3 (width x height) screen

local time = os.time()
local day = os.day()
local year = day/365
local dayFinal = day % 365

m1 = peripheral.wrap("top")
m1.setTextScale(3)
m1.setTextColor((colors.white))

while true do
  m1.clear()
  
  time = os.time()
  
  m1.setCursorPos(1,1)
  day = os.day()
  
  m1.write("Rok:")
  m1.write(tostring(math.floor(year)))
  
  m1.setCursorPos(1,3)
  m1.write(textutils.formatTime(time, true))
  
  m1.setCursorPos(1,5)
  m1.write("Dzien:")
  m1.setCursorPos(2,6)
  m1.write(tostring(dayFinal))
  
  sleep(0.7)
end
