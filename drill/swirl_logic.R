TRUE == TRUE

(FALSE == TRUE) == FALSE

6 == 7

6 < 7

10 <= 10

9 >= 10

-6 > -7

5 != 7

!5 == 7

!(0 >= -1)

(TRUE != FALSE) == !(6 == 7)

FALSE & FALSE

TRUE & c(TRUE, FALSE, FALSE)

TRUE && c(TRUE, FALSE, FALSE)

TRUE | c(TRUE, FALSE, FALSE)

TRUE || c(TRUE, FALSE, FALSE)

5 > 8 || 6 != 8 && 4 > 3.9

TRUE && FALSE || 9 >= 4 && 3 < 6

FALSE && 6 >= 6 || 7 >= 8 || 50 <= 49.5

isTRUE(6 > 4)

!isTRUE(4 < 3)

identical('twins', 'twins')

identical(5 > 4, 3 < 3.1)

xor(5 == 6, !FALSE)

xor(4 >= 9, 8 != 8.0)

ints <- sample(10)
ints

ints > 5

which(ints > 7)

which(ints <= 2)

any(ints < 0)

all(ints > 0)

any(ints == 10)
