#
#all: 2.1.o arglist.c getopt_long.c print-evc.c client.c temp_file.c readfile.c $
#	g++ -o bin/capitulo_1/1.1/Ejecutable bin/capitulo_1/1.1/main.o bin/capitulo_1/1.2/reciprocal.o	

#	gcc src/capitulo_2/2.2/getopt_long.c -o bin/capitulo_2/2.2/getopt_long
#	gcc src/capitulo_2/2.3/print-evc.c -o bin/capitulo_2/2.3/print-evc
# 	gcc src/capitulo_2/2.4/client.c -o bin/capitulo_2/2.4/client
#	gcc src/capitulo_2/2.5/temp_file.c -o bin/capitulo_2/2.5/temp_file
#	gcc src/capitulo_2/2.6/readfile.c -o bin/capitulo_2/2.6/readfile

listing-2.1:2.1-o,
	gcc src/capitulo_2/2.1/arglist.c -o bin/capitulo_2/2.1/arglist

2.1.o:main.c reciprocal.c
	gcc -c src/capitulo_1/1.1/main.c 
	mv main.o bin/capitulo_1/1.1
	g++ -c src/capitulo_1/1.2/reciprocal.cp
	mv reciprocal.o bin/capitulo_1/1.1
listing-2.3: print-evc.c
	gcc src/capitulo_2/2.3/print-evc.c -o bin/capitulo_2/2.3/print-evc
