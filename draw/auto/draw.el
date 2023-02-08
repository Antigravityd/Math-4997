(TeX-add-style-hook
 "draw"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "tikz")
   (TeX-add-symbols
    '("heegaard" 4)))
 :latex)

