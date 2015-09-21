

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



