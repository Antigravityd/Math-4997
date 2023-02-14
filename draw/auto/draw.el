(TeX-add-style-hook
 "draw"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "graphicx"
    "tikz")
   (TeX-add-symbols
    '("ucover" 6)
    '("heegaard" 4)
    '("diagram" 4)))
 :latex)

