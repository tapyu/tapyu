#let my_template(name, color, rest) = {
  set text(
    12pt,
    font: "New Computer Modern",
  )
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

// General entry that is split into a left and right half
#let cv_entry(left_content: none, right_content: none) = {
    grid(
    columns: (11fr, 6fr),
    column-gutter: 1cm,
    {
      set align(left)
      left_content
    },
    {
      set align(right)
      right_content
    }
  )
}

#let add_general_info(general_info) = {
  let info_aligned = ()
  let count = 1
  for info in (general_info) {
    if int(count/2) == count/2 {
      info_aligned.push({
        align(right)[
          #info
        ]
      })
    } else {
      info_aligned.push({
        align(left)[
          #info
        ]
      })
    }
    count += 1
  }
  grid(
    columns: (2fr, 3fr),
    row-gutter: 6pt,
    ..info_aligned,
  )
}