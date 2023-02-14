(TeX-add-style-hook
 "draw"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "tikz")
   (TeX-add-symbols
    '("diagram" 4)))
 :latex)

