#import "my_cv_template.typ": my_template, add_general_info

#let color_theme = black
#let name = "Rubem Vasconcelos Pacelli"
#let city_state_country = "Fortaleza, Ceará, Brazil"
#let home_place = (
  full: "Federal University of Ceará",
  initials: "UFC",
  url: "https://www.ufc.br/",
)
#let program = (
  initials: "PPGETI",
  url: "https://ppgeti.ufc.br/en/"
)
#let group = (
  initials: "GPSI",
  url: "https://ppgeti.ufc.br/en/laboratories/laboratory-of-the-signal-and-information-processing-research-group-gpsi/"
)
#let cellphone = "+55 85 981824344"

#let t = ()

#show: my_doc => my_template(name, color_theme,  my_doc)

= General information
#add_general_info((
  city_state_country,
  [Last update: #datetime.today().display()],
  [#home_place.full (#home_place.initials)],
  [Mobile: #cellphone],
  [#link(home_place.url)[#home_place.initials]-#link(program.url)[#program.initials]-#link(group.url)[#group.initials]]
))