#let my_template(name, color, rest) = {
  set text(
    12pt,
    font: "New Computer Modern",
  )
  set page(margin: 40pt)
  set par(justify: true, leading: 0.5em)

  align(center)[#smallcaps(text(size: 2.5em, fill: color)[#name])]

  show heading.where(level: 1): i => {
    set align(left)

    set block(above: 1em)
      set text(weight: "light", size: 1.2em, fill: black)
      stack(
        dir: ttb,
        spacing: 2mm,
        smallcaps(i.body),
        line(length: 100%, stroke: black + 2pt)
    )
  }
  rest
}

// General CV entry that is split into a left and right half
#let cv_entry(entries, left-space: 1fr, right-space: 1fr) = {
  let entries_aligned = ()
  let count = 1
  for entry in (entries) {
    if int(count/2) == count/2 {
      entries_aligned.push({
        align(right)[
          #entry
        ]
      })
    } else {
      entries_aligned.push({
        align(left)[
          #entry
        ]
      })
    }
    count += 1
  }
  grid(
    columns: (left-space, right-space),
    row-gutter: 6pt,
    ..entries_aligned,
  )
}

#let add_general_info(general_info) = {
  cv_entry(general_info, left-space: 2fr, right-space: 3fr)
}

#let add_education(education) = {
  cv_entry((
    [*#education.initials* in #education.name],
    [#education.start\-#education.end],
    education.university,
    education.location
  ))
}

#let add_experience(experience) = {
  cv_entry((
    experience.name,
    [#experience.start\-#experience.end],
    experience.university,
    experience.location
  ))

  for info in experience.info [
    - #info
  ]
}

#let add_research(research) = {
  cv_entry((
    research.name,
    [#research.start\-#research.end],
  ), left-space: 3fr, right-space: 2fr)
  text(10pt)[#research.from]
  for info in research.info [
    - #info
  ]
}