all:
	clang++ a2.cpp `llvm-config --cxxflags --ldflags --system-libs --libs core` -o a

run:
	./a > output.ll
	./a
	lli output.ll

clean:
	rm -f a a2.ll