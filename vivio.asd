(cl:in-package :cl-user)

#-asdf(require :asdf)
#-uiop(require :uiop)

(defpackage :vivio-asd
  (:use :cl :asdf))

(in-package :vivio-asd)

(defsystem vivio
  :serial t
  :components ((:module "src"
                :serial t
                :components ((:file "term")
                             (:file "window"))))
  :depends-on (:uiop
               :cl-ncurses
               :cl-charms))
