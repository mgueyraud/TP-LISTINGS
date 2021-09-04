# << MAKE FILES >>

#Compila todos los listings
all: create_directories cap_1 cap_2 cap_3

#ELIMINA TODAS LAS COMPILACIONES REALIZADAS
clean:
	rm -r bin/capitulo_1/1.1/*
	rm -r bin/capitulo_1/1.2/*
#	rm -r bin/capitulo_1/1.3/*
	rm -r bin/capitulo_2/2.1/*
	rm -r bin/capitulo_2/2.2/*
	rm -r bin/capitulo_2/2.3/*
	rm -r bin/capitulo_2/2.4/*
	rm -r bin/capitulo_2/2.5/*
	rm -r bin/capitulo_2/2.6/*
	rm -r bin/capitulo_2/2.7/*
	rm -r bin/capitulo_2/2.8/*
	rm -r bin/capitulo_2/2.9/*

#Crea carpetas para no generar errores
create_directories: 
	mkdir -p bin
	mkdir -p bin/capitulo_1
	mkdir -p bin/capitulo_1/1.1
	mkdir -p bin/capitulo_1/1.2
	mkdir -p bin/capitulo_1/1.3
	mkdir -p bin/capitulo_2
	mkdir -p bin/capitulo_2/2.1
	mkdir -p bin/capitulo_2/2.2
	mkdir -p bin/capitulo_2/2.3
	mkdir -p bin/capitulo_2/2.4
	mkdir -p bin/capitulo_2/2.5
	mkdir -p bin/capitulo_2/2.6
	mkdir -p bin/capitulo_2/2.7
	mkdir -p bin/capitulo_2/2.8
	mkdir -p bin/capitulo_2/2.9
	mkdir -p bin/capitulo_2/2.9
	mkdir -p bin/capitulo_3
	mkdir -p bin/capitulo_3/3.1
	mkdir -p bin/capitulo_3/3.2
	mkdir -p bin/capitulo_3/3.3
	mkdir -p bin/capitulo_3/3.4
	mkdir -p bin/capitulo_3/3.5
	mkdir -p bin/capitulo_3/3.6
	mkdir -p bin/capitulo_3/3.7

#  << CAPITULO 1 >>

cap_1: listing-1.1 listing-1.2 listing-1.3

listing-1.1:2.1.o bin/capitulo_1/1.1/main.o bin/capitulo_1/1.2/reciprocal.o
	g++ -o bin/capitulo_1/1.1/Ejecutable bin/capitulo_1/1.1/main.o bin/capitulo_1/1.2/reciprocal.o	
listing-1.2:2.1.o bin/capitulo_1/1.1/main.o bin/capitulo_1/1.2/reciprocal.o
	g++ -o bin/capitulo_1/1.1/Ejecutable bin/capitulo_1/1.1/main.o bin/capitulo_1/1.2/reciprocal.o	
listing-1.3:2.1.o bin/capitulo_1/1.1/main.o bin/capitulo_1/1.2/reciprocal.o
	g++ -o bin/capitulo_1/1.1/Ejecutable bin/capitulo_1/1.1/main.o bin/capitulo_1/1.2/reciprocal.o	

2.1.o: src/capitulo_1/1.1/main.c src/capitulo_1/1.2/reciprocal.cpp
	gcc -c src/capitulo_1/1.1/main.c 
	mv main.o bin/capitulo_1/1.1
	g++ -c src/capitulo_1/1.2/reciprocal.cpp
	mv reciprocal.o bin/capitulo_1/1.2

#  << CAPITULO 2 >>

cap_2: listing-2.1 listing-2.2 listing-2.3 listing-2.4 listing-2.5 listing-2.6 listing-2.7 listing-2.8 listing-2.9

listing-2.1: src/capitulo_2/2.1/arglist.c
	gcc src/capitulo_2/2.1/arglist.c -o bin/capitulo_2/2.1/arglist

listing-2.2: src/capitulo_2/2.2/getopt_long.c
	gcc src/capitulo_2/2.2/getopt_long.c -o bin/capitulo_2/2.2/getopt_long
listing-2.3: src/capitulo_2/2.3/print-evc.c
	gcc src/capitulo_2/2.3/print-evc.c -o bin/capitulo_2/2.3/print-evc
listing-2.4: src/capitulo_2/2.4/client.c
	gcc src/capitulo_2/2.4/client.c -o bin/capitulo_2/2.4/client
listing-2.5: src/capitulo_2/2.5/temp_file.c
	gcc src/capitulo_2/2.5/temp_file.c -o bin/capitulo_2/2.5/temp_file
listing-2.6: src/capitulo_2/2.6/readfile.c	
	gcc src/capitulo_2/2.6/readfile.c -o bin/capitulo_2/2.6/readfile
listing-2.7: test.o
	ar cr bin/capitulo_2/2.7/libtest.a src/capitulo_2/2.7/test.o
test.o: src/capitulo_2/2.7/test.o
	gcc -c src/capitulo_2/2.7/test.c -o src/capitulo_2/2.7/test.o
listing-2.8: listing-2.7
	gcc -o bin/capitulo_2/2.8/app src/capitulo_2/2.8/app.c -L./bin/capitulo_2/2.7 -ltest
listing-2.9: src/capitulo_2/2.9/tifftest.c
	gcc src/capitulo_2/2.9/tifftest.c -o bin/capitulo_2/2.9/tifftest -ltiff
	cp src/capitulo_2/2.9/photo.tiff bin/capitulo_2/2.9

#  << CAPITULO 3 >>

cap_3: listing-3.1 listing-3.2 listing-3.3

listing-3.1:
	gcc -o src/capitulo_3/3.1/a.out src/capitulo_3/3.1/print-pid.c
	mv src/capitulo_3/3.1/a.out bin/capitulo_3/3.1/print-pid
listing-3.2:
	gcc -o src/capitulo_3/3.2/a.out src/capitulo_3/3.2/system.c
	mv src/capitulo_3/3.2/a.out bin/capitulo_3/3.2/system
listing-3.3:
	gcc -o src/capitulo_3/3.3/a.out src/capitulo_3/3.3/fork.c
	mv src/capitulo_3/3.3/a.out bin/capitulo_3/3.3/fork



