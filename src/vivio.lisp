(in-package :vivio-cui)

(export '(init-screen
          end-screen))

(defun init-screen ()
  (initscr))

(defun end-screen ()
  (endwin))
