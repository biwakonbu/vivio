(in-package :vivio-cui)

(export '(init-screen))

(defun init-screen ()
  (initscr)
  (endwin))
