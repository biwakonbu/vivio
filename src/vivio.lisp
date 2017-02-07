(in-package :vivio-cui)

(export '(init-screen
          end-screen))

(defun init-screen ()
  (charms/ll:initscr))

(defun end-screen ()
  (charms/ll:endwin))
