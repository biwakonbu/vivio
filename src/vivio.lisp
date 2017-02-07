(in-package :vivio-cui)

(export '(init-screen
          end-screen))

(defparameter *raw-mode* nil)

(defun raw-p ()
  *raw-mode*)
(defun raw ()
  (setq *raw-mode* t)
  (charms/ll:raw))
(defun noraw ()
  (setq *raw-mode* nil)
  (charms/ll:noraw))

(defun init-screen ()
  (charms/ll:initscr)
  ;; (getch) による描画をオフに設定
  (charms/ll:noecho)
  ;; ラインバッファリングの無効化 (制御文字も無効化する)
  (raw)
  ;; 改行変換の無効化
  (charms/ll:nonl)
  ;; 画面再描画
  (charms/ll:refresh)
  ;; 特殊キーの読取を on にする
  (charms/ll:keypad charms/ll:*stdscr* charms/ll:TRUE))

(defun end-screen ()
  (charms/ll:endwin))
