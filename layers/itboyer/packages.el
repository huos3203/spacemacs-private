;;; packages.el --- itboyer layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: jhmac <iTBoyer@qq.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `itboyer-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `itboyer/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `itboyer/pre-init-PACKAGE' and/or
;;   `itboyer/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst itboyer-packages
  '(lsp-sourcekit)
)
;;  "The list of Lisp packages required by the itboyer layer.

;;; packages.el ends here
  ;;sourcekit-lsp 相关配置
  (setenv "SOURCEKIT_TOOLCHAIN_PATH" "/Library/Developer/Toolchains/swift-latest.xctoolchain")
  (setq lsp-sourcekit-executable (expand-file-name "/usr/local/bin/sourcekit-lsp"))

  (use-package swift-mode
        :hook (swift-mode . (lambda () (lsp))))
