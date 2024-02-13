ggplot(Student_Data, aes(x = frequency(gender) , y = race.ethnicity)) +
  geom_col(fill = "steelblue")+
  facet_grid(test.preparation.course~gender) +
  labs(title = "Comparison About Female and Male Students ",
       x = "",
       y = "Race Ethnicity")
