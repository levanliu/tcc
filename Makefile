CC = gcc                                                                                                          
CFLAGS = -Wall -Wextra                                                                                            
SRCS = main.c lexerf.c parserf.c codegeneratorf.c hashmap/hashmapoperators.c                                      
TARGET = build/unn                                                                                                
																																																									
all: $(TARGET)                                                                                                    
																																																									
$(TARGET): $(SRCS)                                                                                                
		$(CC) $(CFLAGS) $(SRCS) -o $(TARGET)                                                                          
																																																									
clean:                                                                                                            
		rm -f $(TARGET) 
