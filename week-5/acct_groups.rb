# In list of students
# out 10 groups of 4-5 no less than 3, no more than 5
# steps
# -make an array of class list
# -divide relatively evenly

def arr_to_groups(num)
  arr=%("Kim Allen"
"Jenna Andersen"
"Pamela Antonow"
"Jupiter Baudot"
"Ovi Calvo"
"Awilda Cantres"
"Celeste Carter"
"Mike Cerrone"
"Eunice Choi"
"Un Choi"
"Kristie Chow"
"Regina Compton"
"Marcus Davis"
"Paul Etscheit"
"Solomon Fernandez"
"Marcel Galang"
"Aurelio Garcia"
"Hector Jair Moreno Gomez"
"Ricky Binhai Hu"
"Kai Huang"
"Alex Jamar"
"Harmin Jeong"
"Lauren Jin"
"CJ Joulain"
"Michael Landon"
"Richard Leo"
"Julian Lesse"
"Ryan Lesson"
"Ian Lockwood"
"Alison Lyons"
"Christopher Mark"
"Lauren Markzon"
"Miguel Angel Melendez"
"David O'Keefe"
"Nathan Park"
"Landey Patton"
"Farman Pirzada"
"Samuel Frederick Purcell"
"Salim Rahimi"
"Colin Razevich"
"Irina Renteria"
"Jamie Runyan"
"Eric Shou"
"Michael Silberstein"
"Rosslyn Sinclair-Chin"
"Aji Slater"
"Marvy Tagala"
"George Warnbold"
"Shawn Watson"
"Hana Worku"
"Nicholas Yee").split(/"\n"/)

  arr.each_slice(num) { |a| p a}
end


arr_to_groups(4)

=begin

5.6
What was the most interesting and most difficult part of this challenge?
Getting the list to be cleaned up after grabbing it from the DBC page.  This is how I learned how line breaks are represented with (/"\n"/).
Do you feel you are improving in your ability to write pseudocode and break the problem down?
I do but not necessarily on this challenge as I saw it as only a few steps.
Was your approach for automating this task a good solution? What could have made it even better?
If I had the time I would have formatted the new arrays to read more easily.
What data structure did you decide to store the accountability groups in and why?
I used arrays as there only seemed to be one important value, the names.  If I were to add the city cohort or another piece of info to each student I may have used a hash.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I was trying to use #each and #slice.  In my research I found #each_slice and the solution seemed obvious.

=end

