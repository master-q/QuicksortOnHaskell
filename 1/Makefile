all: QuickSort
QuickSort: QuickSort.hs Main.hs
	ghc -Wall -O2 -o QuickSort QuickSort.hs Main.hs

.PHONY: run lint clean
run: all
	./QuickSort

lint:
	hlint -c QuickSort.hs

clean:
	rm -f *~ *.o *.hi QuickSort
