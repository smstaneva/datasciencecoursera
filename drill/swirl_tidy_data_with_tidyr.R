library(tidyr)
students

gather(students, sex, count, -grade)

students2

res <- gather(students2, sex_class, count, -grade)
res

separate(data = res, col = sex_class, into = c("sex", "class"))


students2 %>%
        gather(sex_class, count, -grade) %>%
        separate(col = sex_class, into = c("sex", "class")) %>%
        print


student3

students3 %>%
        gather(class, grade, class1 : class5, na.rm = TRUE) %>%
        print


students3 %>%
        gather(class, grade, class1:class5, na.rm = TRUE) %>%
        spread(test, grade) %>%
        print


library(readr)
parse_number("class5")


students3 %>%
        gather(class, grade, class1:class5, na.rm = TRUE) %>%
        spread(test, grade) %>%
        mutate(class = parse_number(class)) %>%
        print


students4


student_info <- students4 %>%
        select(id, name, sex) %>%
        print


student_info <- students4 %>%
        select(id, name, sex) %>%
        unique() %>%
        print


gradebook <- students4 %>%
        select(id, class, midterm, final) %>%
        print


passed


failed

passed <- passed %>% mutate(status = "passed")
failed <- failed %>% mutate(status = "failed")
bind_rows(passed, failed)


sat


sat %>%
        select(-contains("total")) %>%
        gather(part_sex, count, -score_range) %>%
        separate(col = part_sex, into = c("part", "sex")) %>%
        print


