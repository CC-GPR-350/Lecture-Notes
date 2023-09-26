(require 'org)

(setq org-publish-project-alist
 '(("website"
    :base-directory "."
    :base-extension "org"
    :html-mathjax-options ((path "https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"))
    :publishing-function org-html-publish-to-html
    :publishing-directory "./public_html")
 ("images"
   :base-directory "."
   :base-extension "png"
   :publishing-function org-publish-attachment
   :publishing-directory "./public_html")))

(org-publish-all t)
