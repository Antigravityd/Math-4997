(TeX-add-style-hook
 "presentation"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer10"
    "tgpagella"
    "amsmath"
    "amssymb"
    "amsthm"
    "tikz"
    "minted"
    "physics"
    "siunitx"
    "graphicx"
    "tikz-cd")
   (TeX-add-symbols
    '("ucover" 6)
    '("heegaard" 4)
    '("diagram" 4))
   (LaTeX-add-environments
    "plm"))
 :latex)

