--adjust to 5x3 (width x height) screen

function header()
  m1.setCursorPos(3,2)
  m1.setTextColor((colors.cyan))
  m1.write("Rzeczy do zrobienia na reaktor atomowy:")
end

function prevPage()
  m1.setCursorPos(1,19)
  m1.setTextColor((colors.white))
  m1.write("< Poprzednia")
end

function nextPage()
  m1.setCursorPos(41,19)
  m1.setTextColor((colors.white))
  m1.write("Nastepna >")
end

function globalTasks()
  m1.setTextColor((colors.red))
  task1()
  task2()
  task3()
  task4()
  task5()
  task6()
  task7()
  task8()
  task9()
  task10()
  task11()
  task12()
  task13()
end

function task1()
  m1.setCursorPos(7,4)
  m1.write("1. 68x - reactor casing")
end

function task2()
  m1.setCursorPos(7,5)
  m1.write("2. 25x - reactor fuel rod")
end

function task3()
  m1.setCursorPos(7,6)
  m1.write("3. 5x - reactor redstone flux power tap")
end

function task4()
  m1.setCursorPos(7,7)
  m1.write("4. 5x - reactor control rod")
end

function task5()
  m1.setCursorPos(7,8)
  m1.write("5. 3x - reactor computer port")
end

function task6()
  m1.setCursorPos(7,9)
  m1.write("6. 1x - reactor controler")
end

function task7()
  m1.setCursorPos(7,10)
  m1.write("7. 2x - reactor access port")
end

function task8()
  m1.setCursorPos(7,11)
  m1.write("8. 20x - enderium block")
end

function task9()
  m1.setCursorPos(7,12)
  m1.write("9. 110x - reactor glass")
end

function task10()
  m1.setCursorPos(7,13)
  m1.write("10. 3x - advanced computer")
end

function task11()
  m1.setCursorPos(7,14)
  m1.write("11. ?x - networking cable")
end

function task12()
  m1.setCursorPos(7,15)
  m1.write("12. 9x - wired modem")
end

function task13()
  m1.setCursorPos(7,16)
  m1.write("13. 45x - advanced monitor")
end   

function colorAndWrite()
  m1.setTextColor((colors.green))
  m1.write("JEST")
end

function clickCheck()
  widthScr, heightScr = m1.getSize() 

  if mouseWidth > 1 and mouseWidth < widthScr and mouseHeight == 4 then
    m1.setCursorPos(2,4)
    colorAndWrite()
    m1.write(task1())
  end
  
  if mouseWidth > 1 and mouseWidth < widthScr and mouseHeight == 5 then
    m1.setCursorPos(2,5)
    colorAndWrite()
    m1.write(task2())
  end
  
  if mouseWidth > 1 and mouseWidth < widthScr and mouseHeight == 6 then
    m1.setCursorPos(2,6)
    colorAndWrite()
    m1.write(task3())
  end
  
  if mouseWidth > 1 and mouseWidth < widthScr and mouseHeight == 7 then
    m1.setCursorPos(2,7)
    colorAndWrite()
    m1.write(task4())
  end
  
  if mouseWidth > 1 and mouseWidth < widthScr and mouseHeight == 8 then
    m1.setCursorPos(2,8)
    colorAndWrite()
    m1.write(task5())
  end
  
  if mouseWidth > 1 and mouseWidth < widthScr and mouseHeight == 9 then
    m1.setCursorPos(2,9)
    colorAndWrite()
    m1.write(task6())
  end
  
  if mouseWidth > 1 and mouseWidth < widthScr and mouseHeight == 10 then
    m1.setCursorPos(2,10)
    colorAndWrite()
    m1.write(task7())
  end
  
  if mouseWidth > 1 and mouseWidth < widthScr and mouseHeight == 11 then
    m1.setCursorPos(2,11)
    colorAndWrite()
    m1.write(task8())
  end
  
  if mouseWidth > 1 and mouseWidth < widthScr and mouseHeight == 12 then
    m1.setCursorPos(2,12)
    colorAndWrite()
    m1.write(task9())
  end
  
  if mouseWidth > 1 and mouseWidth < widthScr and mouseHeight == 13 then
    m1.setCursorPos(2,13)
    colorAndWrite()
    m1.write(task10())
  end
  
  if mouseWidth > 1 and mouseWidth < widthScr and mouseHeight == 14 then
    m1.setCursorPos(2,14)
    colorAndWrite()
    m1.write(task11())
  end
  
  if mouseWidth > 1 and mouseWidth < widthScr and mouseHeight == 15 then
    m1.setCursorPos(2,15)
    colorAndWrite()
    m1.write(task12())
  end
  
  if mouseWidth > 1 and mouseWidth < widthScr and mouseHeight == 16 then
    m1.setCursorPos(2,16)
    colorAndWrite()
    m1.write(task13())
  end
end

mouseWidth = 0
mouseHeight = 0

m1 = peripheral.wrap("left")
m1.clear()
m1.setCursorPos(1,1)
w,h = m1.getSize()
m1.setBackgroundColor((colors.black))

header()
globalTasks()
prevPage()
nextPage()

repeat
  event,p1,p2,p3 = os.pullEvent()
  if event == "monitor_touch" then
    mouseWidth = p2
    mouseHeight = p3
    clickCheck()
  end
until event == "char" and p1("x")
