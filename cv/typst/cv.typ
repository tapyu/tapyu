#import "my_cv_template.typ": my_template, add_general_info, add_education, add_experience, add_research, add_thesis, add_journal_article, add_conference_proceedings, add_book_chapter, add_patent

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
  doctorate: (
    course: "Teleinformatics Engineering",
    level: "Doctorate",
    initials: "PhD",
    start: "Jul 2021",
    end: "Present",
    location: "Fortaleza, Brazil",
    university: (
      full: "Federal University of Ceará",
      initials: "UFC",
    ),
    thesis: (
      title: "Detection, characterization, and forecasting of the equatorial ionospheric scintillation signal on GNSS receive",
      advisors: (
        "Felix Dieter Antreich",
        "André Lima Ferrer de Almeida"
      ),
      is_pt: false,
    )
  ),
  master: (
    course: "Teleinformatics Engineering",
    level: "Master",
    initials: "Msc",
    start: "Jan 2019",
    end: "Jun 2021",
    location: "Fortaleza, Brazil",
    university: (
      full: "Federal University of Ceará",
      initials: "UFC",
    ),
    thesis: (
      title: "Coherent and all-digital AFSK modem for TT&C module of CubeSat systems",
      advisors: (
        "João Cesar Moura Mota",
        "Antônio Macilio Pereira de Lucena"
      ),
      is_pt: true,
      url: "http://repositorio.ufc.br/bitstream/riufc/60259/1/2021_dis_rvpacelli.pdf"
    )
  ),
  graduation: (
    course: "Electronics Engineering",
    level: "Graduation",
    initials: "BSc",
    start: "Jan 2013",
    end: "Dec 2018",
    location: "Fortaleza, Brazil",
    university: (
      full: "University of Fortaleza",
      initials: "Unifor"
    ),
    thesis: (
      title: "Design of a portable charger converter with USB Type-C interface",
      advisors: ("Bruno Ricardo de Almeida",),
      is_pt: true,
    )
  ),
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
// publications
#let publications = (
  jounal_articles: (
    bjd2020: (
      title: "Fully digital GMSK modem with noncoherent demodulation",
      publisher: "Brazilian Journal of Development",
      volume: "6",
      issue_number: "4",
      start-page: "17988",
      end-page: "17996",
      year: 2020,
      url: "https://doi.org/10.34117/bjdv6n4-099",
      is_pt: true,
      authors: (
        "Pacelli, R. V.",
        "Lucena, A. M. P."
      )
    ),
    bjd2020a: (
      title: "Carrier synchronization technique for OFDM communication systems",
      publisher: "Brazilian Journal of Development",
      volume: "6",
      issue_number: "3",
      start-page: "14297",
      end-page: "14305",
      year: 2020,
      url: "https://doi.org/10.34117/bjdv6n3-338",
      is_pt: true,
      authors: (
        "Pacelli, R. V.",
        "Lucena, A. M. P."
      )
    ),
    bjd2020b: (
      title: "Carrier selection technique for OFDM system in time-dispersive channels",
      publisher: "Brazilian Journal of Development",
      volume: "6",
      // issue_number: "3",
      start-page: "14318",
      end-page: "14324",
      year: 2020,
      url: "https://doi.org/10.34117/bjdv6n3-340",
      is_pt: true,
      authors: (
        "Figueiredo, S. S.",
        "Lucena, A. M. P.",
        "Pacelli, R. V.",
      )
    ),
    rev_tec2019: (
      title: "OFDM system with frequency and phase estimators for carrier synchronization",
      publisher: "Revista Tecnologia",
      volume: "40",
      issue_number: "1",
      start-page: "1",
      end-page: "16",
      year: 2019,
      url: "https://doi.org/10.5020/23180730.2019.7506",
      is_pt: true,
      authors: (
        "Pacelli, R. V.",
        "Lucena, A. M. P.",
      )
    )
  ),
  conferences: (
    cba2022: (
      title: "Convolutional Long-Short-Term Memory Networks (ConvLSTM) for Weather Prediction using Radar and Satellite Images",
      from: "CBA 2022",
      start-page: "1",
      end-page: "8",
      year: 2022,
      url: "https://www.sba.org.br/cba2022/wp-content/uploads/artigos_cba2022/paper_2351.pdf",
      is_pt: false,
      authors: (
        "Moreira, N. A.",
        "Pacelli, R. V.",
        "Silva, Y. C. B.",
        "Maciel, T. F.",
        "Simoes, I.",
        "Mota, J. C. M.",
        "Hamida, C.",
        "Prado, R. Z.",
        "Caillault, E.",
        "Kacou, M.",
        "Gosset, M.",
      )
    ),
    sbrt2020: (
      title: "All-digital AFSK modem with Viterbi detection for TT&C CubeSat transceiver",
      from: "XXXVIII Simpósio Brasileiro de Telecomunicações e Processamento De Sinais",
      start-page: "1",
      end-page: "5",
      year: 2022,
      url: "https://www.sbrt.org.br/sbrt2020/papers/1570654898.pdf",
      is_pt: false,
      authors: (
        "Pacelli, R. V.",
        "Mota, J. C. M.",
        "Lucena, A. M. P.",
      )
    ),
    ic_unifor2016: (
      title: "A technique for frequency synchronization in OFDM modulation",
      from: "XXII Research Initiation Meeting",
      start-page: "1",
      end-page: "5",
      year: 2016,
      url: "https://uol.unifor.br/oul/conteudosite/?cdConteudo=6946081",
      is_pt: true,
      authors: (
        "Mourão, J. A",
        "Pacelli, R. V.",
        "Lucena, A. M. P.",
      )
    )
  ),
  book_chapter: (
    uncertainties2023: (
      title: "A Data-Based Estimation of Power-Law Coefficients for Rainfall via Levenberg-Marquardt Algorithm: Results from the West African Testbed",
      publisher: "Springer Cham",
      book: "Proceedings of the 6th International Symposium on Uncertainty Quantification and Stochastic Modelling",
      chapter: "20",
      // volume: "1",
      start-page: "190",
      end-page: "201",
      year: 2023,
      url: "https://doi.org/10.1007/978-3-031-47036-3_17",
      is_pt: false,
      authors: (
        "Pacelli, R. V.",
        "Moreira, N. de A.",
        "Maciel, T. F.",
        "Kacou, M.",
        "Gosset, M.",
      )
    ),
    atena2021: (
      title: "Symbol time synchronization in OFDM systems",
      publisher: "Atena",
      book: "Exact and Earth Sciences: Exploration and Qualification of Different Technologies",
      chapter: "18",
      volume: "4",
      start-page: "200",
      end-page: "207",
      year: 2021,
      url: "https://doi.org/10.22533/at.ed.13021130118",
      is_pt: true,
      authors: (
        "Pacelli, R. V.",
        "Lucena, A. M. P.",
        "Araújo, D. C.",
        "Mourão, J. A",
      )
    ),
    bj2020: (
      title: "GMSK modem with noncoherent demodulation and all-digital implementation",
      publisher: "Atena",
      book: "The impacts of studies focused on exact sciences",
      chapter: "2",
      volume: "1",
      start-page: "21",
      end-page: "30",
      year: 2020,
      url: "https://doi.org/10.35587/brj.ed.0000587",
      is_pt: true,
      authors: (
        "Pacelli, R. V.",
        "Lucena, A. M. P.",
      )
    ),
  )
)
// patents
#let patents = (
  BR_10_2021_023220_0: (
    requirement: "BR 10 2021 023220 0",
    title: "Digital demodulation architecture and coherent detection method for AFSK signals",
    is_pt: true,
    status: "filed"
  )
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
- Deep learning frameworks: PyTorch, TensorFlow, Keras.
- MLOps Tools:
  // - Cloud platform services: AWS, GCP, or Azure.
  - Amazon Web Services (AWS) ecosystem: Amazon SageMaker, Elastic Container Service (ECS), Elastic Container Registry (ECR).
  - CI/CD Pipelines: Jenkins, GitHub Actions, Travis CI.
  - Container technologies: Docker, Kubernetes.
  - Data Version Control (DVC).
  - MLFlow, Kubeflow, TensorFlow Extended (TFX) Serving.
- Embedded systems programming languages: C, C++, MicroPython, and Assembly. // Rust
- GNU/Linux: UNIX Shell scripting, Linux system fundamentals, git.
- Typesetting systems: LaTeX, Typst.

== Languages
- English: Professional working proficiency  (#link("https://github.com/tapyu/tapyu/blob/master/cv/Latex/figs/Toefl.pdf")[TOEFL IBT] and #link("https://github.com/tapyu/tapyu/blob/master/cv/Latex/figs/Cambridge\%20FCE.pdf")[Cambridge FCE] exams).
- Portuguese: Native speaker.

= Teaching and support

- I had experience as an assistant teacher in Digital Communications at #education.doctorate.university.initials during my #education.doctorate.level's degree in #education.doctorate.course.
- I had experience as an assistant teacher in Digital Signal Processing at #education.master.university.initials during my #education.master.level's degree in #education.doctorate.course.
- I had experience as an assistant teacher in Control Theory at #education.graduation.university.initials during my undergraduate in #education.graduation.course.

= Academic Activity and membership
== Associate member
- Brazilian Telecommunications Society (SBrT)

= Publications
My academic publications are also listed on #link(contact.scholar.url)[Google Scholar].

== Theses

#for (_, edu) in education [
  - #add_thesis(edu)
]

== Journal  Articles
#{
  set enum(numbering: "J1")
  for (_, article) in publications.jounal_articles [
    + #add_journal_article(article)
  ]
}

== Conference Proceedings
#{
  set enum(numbering: "C1")
  for (_, article) in publications.conferences [
    + #add_conference_proceedings(article)
  ]
}

== Book chapter
#{
  set enum(numbering: "BC1")
  for (_, chapter) in publications.book_chapter [
    + #add_book_chapter(chapter)
  ]
}

= Patents
#for (_, patent) in patents {
  add_patent(patent)
}