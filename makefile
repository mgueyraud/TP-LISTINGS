# << MAKE FILES >>

#Compila todos los listings
all: listing-1.1 listing-2.1 listing-2.2 listing-2.3 listing-2.4 listing-2.5 listing-2.6 listing-2.9
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
#	rm -r bin/capitulo_2/2.7/*
#	rm -r bin/capitulo_2/2.8/*
	rm -r bin/capitulo_2/2.9/*
#  << CAPITULO 1 >>
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
listing-2.7:
listing-2.8:
listing-2.9: src/capitulo_2/2.9/tifftest.c
	gcc src/capitulo_2/2.9/tifftest.c -o bin/capitulo_2/2.9/tifftest -ltiff
	cp src/capitulo_2/2.9/photo.tiff bin/capitulo_2/2.9




