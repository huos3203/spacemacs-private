;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.

(+ 2 2)
;2+3*4
(+ 2 (* 3 4))
;定义变量
(setq my-name "hsg")
(message my-name)

;;定义函数  帮助文档调用：C-h f
(defun myfunc()
  (interactive)  ;;M-x 命令行交互支持
  (message "hello,%s" my-name)
)
(myfunc)

;;绑定快捷键 :执行：C-x C-e p
(global-set-key (kbd "p") 'myfunc)
