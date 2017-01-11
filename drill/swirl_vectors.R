num_vect <- c(0.5, 55, -10, 6)
tf <- num_vect < 1
tf

num_vect >= 6

(3 > 5) & (4 == 4)

(TRUE == TRUE) | (TRUE == FALSE)

((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)

my_char <- c("My", "name", "is")
my_char

paste(my_char, collapse = " ")

my_name <- c(my_char, "Svetlana")
my_name

paste(my_name, collapse = " ")

paste("Hello", "world!", sep = " ")

paste(1:3, c("X", "Y", "Z"), sep = "")

paste(LETTERS, 1:4, sep = "-")