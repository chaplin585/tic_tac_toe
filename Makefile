TARGET = tic-tac-toe
PY = python
SRC = src/
M = main.py 
CW = can_win.py
CL = check_line.py
CHW = check_win.py
C = click.py
CM = computer_move.py
T = thirdparty\

TEST1 = test/test1.py
TEST2 = test/test2.py



$(TARGET): $(SRC)$(CW) $(SRC)$(CL) $(SRC)$(CHW)	$(SRC)$(C) $(SRC)$(CM)
	$(PY) $(SRC)$(CW)
	$(PY) $(SRC)$(CL)
	$(PY) $(SRC)$(CHW)
	$(PY) $(SRC)$(C)
	$(PY) $(SRC)$(CM)
	
test:  $(TEST1) $(TEST2)
	$(PY) $(TEST1)
	$(PY) $(TEST2)  
	



.PHONY: all test clean

clean:
	rm $(TARGET) *.o

