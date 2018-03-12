.PHONY all:
all: lzw

lzw: lzw435.cpp lzw435M.cpp
	g++ lzw435.cpp -o lzw435 -std=c++11
	g++ lzw435M.cpp -o lzw435M -std=c++11

.PHONY clean:
clean: 
	rm -rf lzw435 lzw435M 

.PHONY test:
test: lzw
	cp lzw435 testcases/lzw435
	cp lzw435M testcases/lzw435M
