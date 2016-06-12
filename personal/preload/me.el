(global-linum-mode 1) ;; show line number
(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))

(eval-after-load 'flycheck
  '(progn
     (require 'flycheck-google-cpplint)
    ;; Add Google C++ Style checker.
    ;; In default, syntax checked by Clang and Cppcheck.
           (flycheck-add-next-checker 'c/c++-cppcheck
                                '(warning . c/c++-googlelint))))
;;((c++-mode
;;       (flycheck-gcc-includes "./" "./include" )))

;; use apsell as ispell backend
(setq-default ispell-program-name "aspell")
;; use American English as ispell default dictionary
(ispell-change-dictionary "american" t)
