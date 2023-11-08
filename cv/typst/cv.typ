#import "my_cv_template.typ": my_template, add_general_info, add_education, add_experience, add_research

// cv settings
#let color_theme = black
// personal information
#let info = (
  name: "Rubem Vasconcelos Pacelli",
  city_state_country: "Fortaleza, Ceará, Brazil",
  home_place: (
    full: "Federal University of Ceará",
    initials: "UFC",
    url: "https://www.ufc.br/",
  ),
  program: (
    initials: "PPGETI",
    url: "https://ppgeti.ufc.br/en/",
  ),
  group: (
    initials: "GPSI",
    url: "https://ppgeti.ufc.br/en/laboratories/laboratory-of-the-signal-and-information-processing-research-group-gpsi/",
  )
)
// contact
#let contact = (
  cellphone: "+55 85 981824344",
  github: (
    url: "https://github.com/tapyu",
    fig: "figs/github.svg",
  ),
  email: (
    url: "mailto:rubem.engenharia@gmail.com",
    fig: "figs/email.png"
  ),
  linkedin: (
    url: "https://www.linkedin.com/in/rubem-pacelli/",
    fig: "figs/linkedin.svg",
  ),
  lattes: (
    url: "http://lattes.cnpq.br/0717252455115225",
    fig: "figs/lattes.png"
  ),
  scholar: (
    url: "https://scholar.google.com.br/citations?user=Kj6Gzs4AAAAJ&hl=pt-BR&oi=sra",
    fig: "figs/google scholar.png"
  ),
  orcid: (
    url: "https://orcid.org/0000-0001-5933-8565",
    fig: "figs/orcid.png"
  )
)
// education
#let education = (
  graduation: (
    name: "Electronics Engineering",
    initials: "BSc",
    start: "Jan 2013",
    end: "Dec 2018",
    location: "Fortaleza, Brazil",
    university: "University of Fortaleza (Unifor)"
  ),
  master: (
    name: "Teleinformatics Engineering",
    initials: "Msc",
    start: "Jan 2019",
    end: "Jun 2021",
    location: "Fortaleza, Brazil",
    university: "Federal University of Ceará (UFC)"
  ),
  doctorate: (
    name: "Teleinformatics Engineering",
    initials: "PhD",
    start: "Jul 2021",
    end: "Present",
    location: "Fortaleza, Brazil",
    university: "Federal University of Ceará (UFC)"
  )
)
// experience
#let experience = (
  ird-ufc: (
    name: "IRD-UFC research partnership",
    university: "Federal University of Ceará (UFC)",
    info: (
      "Research on Machine Learning and Statistical Signal Processing.",
      "Developed a research project in collaboration with the IRD (Research Institute Pour Le Développement, France)."
    ),
    location: "Fortaleza, Brazil",
    start: "Jun 2019",
    end: "Dec 2020"
  )
)
// research
#let research = (
  pr2019: (
    name: "Research and development of a fully digital modem for satellite communications",
    start: "Jun 2019",
    end: "Jun 2021",
    from: "Master scholarship from Coordination for the Improvement of Higher Education Personnel (CAPES)",
    info: (
      "Fully digital modem for satellite communications, targeting its implementation in FPGAs.",
      "Design of the logical architecture of the modulator and demodulator.",
      "Development of synchronization modules for the symbol timing delay and phase offset."
    )
  ),
  pr2017: (
    name: "Noncoherent GMSK demodulator for CubeSat systems",
    start: "Feb 2017",
    end: "Jan 2018",
    from: "Scientific initiation scholarship from National Council of Scientific and Technological Development (CNPq)",
    info: ("Development of noncoherent GMSK demodulator for CubeSat systems.",)
  ),
  pr2016: (
    name: "Synchronization in OFDM systems",
    start: "Feb 2016",
    end: "Jan 2017",
    from: "Scientific initiation scholarship from National Council of Scientific and Technological Development (CNPq)",
    info: ("Research on synchronization techiniques applied to OFDM systems.",)
  ),
  pr2015: (
    name: "Synchronization of signals with multicarrier",
    start: "Feb 2015",
    end: "Jan 2016",
    from: "Scientific initiation scholarship from National Council of Scientific and Technological Development (CNPq)",
    info: ("Research on synchronization techniques applied to multicarrier systems.",)
  ),
)

#show: my_doc => my_template(info.name, color_theme,  my_doc)

= General Information
#add_general_info((
  info.city_state_country,
  [Last update: #datetime.today().display()],
  [#info.home_place.full (#info.home_place.initials)],
  [Mobile: #contact.cellphone],
  [#link(info.home_place.url)[#info.home_place.initials]-#link(info.program.url)[#info.program.initials]-#link(info.group.url)[#info.group.initials]],
  [ 
    #link(contact.email.url)[#box(image(contact.email.fig, height: 10pt))], 
    #link(contact.orcid.url)[#box(image(contact.orcid.fig, height: 10pt))], 
    #link(contact.lattes.url)[#box(image(contact.lattes.fig, height: 10pt))], 
    #link(contact.github.url)[#box(image(contact.github.fig, height: 10pt))], 
    #link(contact.scholar.url)[#box(image(contact.scholar.fig, height: 10pt))], 
    #link(contact.linkedin.url)[#box(image(contact.linkedin.fig, height: 10pt))]
  ]
))

= Carrer Summary

Skilled Engineer with academic experience in Satellite Communications and multidisciplinary background in
- Deep Learning, Pattern Recognition, System Identification.
- Estimation, Detection and Optimization Theory, Adaptive Filtering.
- FPGA (Field Programmable Gate Array) and DSP (Digital Signal Processor).

= Education
#add_education(education.graduation)
#add_education(education.master)
#add_education(education.doctorate)

= Experience
#{
  set enum(numbering: "E1")
  for exp in experience {
    [+ #add_experience(exp.at(1))]
  }
}

= Projects and Research Funding
#{
  set enum(numbering: "Pr1")
  for res in research {
    [+ #add_research(res.at(1))]
  }
}

= Skills

== Technical
- Scientific programming languages: Python, Julia, R, MATLAB/Simulink, Octave.
- Embedded systems programming languages: C, C++, MicroPython, and Assembly. // Rust
- Hardware Description Languages: VHDL.
- Electronic design automation (EDA)
  - PCB (printed circuit board) design: Altium, KiCad, EasyEDA, Proteus.
  - Circuit simulation: LTspice, Multisim, Proteus.
- GNU/Linux: UNIX Shell scripting, Linux system fundamentals, git.
- Typesetting systems: LaTeX, Typst.

== Languages
- English: Professional working proficiency  (#link("https://github.com/tapyu/tapyu/blob/master/cv/Latex/figs/Toefl.pdf")[TOEFL IBT] and #link("https://github.com/tapyu/tapyu/blob/master/cv/Latex/figs/Cambridge\%20FCE.pdf")[Cambridge FCE] exams).
- Portuguese: Native speaker.

= Teaching and support

- I have experience as an assistant teacher in Digital Communications at the #education.master.university during my Doctorate's degree in Teleinformatics Engineering. 
- I have experience as an assistant teacher in Digital Signal Processing at the #education.master.university during my Master's degree in Teleinformatics Engineering.
- I have experience as an assistant teacher in Control Theory at #education.graduation.university during my undergraduate in Electronics Engineering.

= Academic Activity & membership
== Associate member
- Brazilian Telecommunications Society (SBrT)

= Publications
My academic publications are also listed on #link(contact.scholar.url)[Google scholar].

