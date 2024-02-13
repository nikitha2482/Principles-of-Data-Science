ggplot(data = Student_Data, aes(x = math.score, y = reading.score, col = gender)) +
  geom_point(size=3) + 
  #geom_line(aes(group = gender)) + 
  scale_color_manual(values = c("male" = "yellow", "female" = "purple")) +
  labs(title = "Correlation Math Score & Reading Score",
       x = "Math Score", y = "Reading Score",
       col = "Gender")
