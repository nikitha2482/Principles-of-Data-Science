ggplot(data = Student_Data.count, mapping = aes(x = n, y = reorder(race.ethnicity, n))) +
  geom_col(aes(fill= n)) +
  scale_fill_gradient(low = munsell::mnsl("5P 7/12"), 
                      high =munsell::mnsl("5P 2/12") ) +
  geom_text(aes(label = n), color = "yellow", hjust = 2.5, size = 3) +
  labs(title = "Data Based On Race Ethnicity",
       
       x = "FREQUENCY",
       y = "RACE ETHNICITY",
       fill = "Frequency")
