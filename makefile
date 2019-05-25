CC = g++ --std=c++11

all: a.out

a.out: main.o in_out_handler.o film.o manager.o user.o comment.o publisher.o customer.o exeptions.o recommandator.o
			${CC} main.o in_out_handler.o film.o manager.o user.o comment.o publisher.o customer.o exeptions.o recommandator.o

main.o: main.cpp in_out_handler.o film.o manager.o user.o comment.o publisher.o customer.o
			${CC} -c main.cpp

exeptions.o: exeptions.h exeptions.cpp
			${CC} -c exeptions.cpp

in_out_handler.o: in_out_handler.cpp in_out_handler.h manager.h manager.cpp exeptions.cpp exeptions.h
			${CC} -c in_out_handler.cpp

film.o: film.cpp film.h
			${CC} -c film.cpp

manager.o: manager.cpp manager.h user.h user.cpp publisher.h publisher.cpp customer.h customer.cpp film.h film.cpp comment.h comment.cpp
			${CC} -c manager.cpp

user.o: user.cpp user.h
			${CC} -c user.cpp

comment.o: comment.cpp comment.h
			${CC} -c comment.cpp

publisher.o: publisher.cpp publisher.h user.h user.cpp film.h film.cpp customer.h customer.cpp 
			${CC} -c publisher.cpp

customer.o: customer.cpp customer.h user.h user.cpp film.h film.cpp
			${CC} -c customer.cpp

recommandator.o: recommandator.cpp recommandator.h film.cpp film.h
			${CC} -c recommandator.cpp

clean:
			rm *.o
			rm a.out
