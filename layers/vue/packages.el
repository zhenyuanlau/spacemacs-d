;;; packages.el --- vue layer packages file for Spacemacs.
;;
;; Copyright (c) 2018-2020 ZhenyuanLau
;;
;; Author: Zhenyuan Lau <zhenyuanlau@icloud.com>
;; URL: https://github.com/zhenyuanlau/spacemacs-d/layers/vue
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst vue-packages '(web-mode))

(defun vue/post-init-web-mode ()
  (use-package web-mode
    :defer t
    :init
    (define-derived-mode vue-mode web-mode "Vue")
    :config
    (setq web-mode-markup-indent-offset 2
          web-mode-css-indent-offset 2
          web-mode-code-indent-offset 2
          web-mode-enable-current-element-highlight t
          web-mode-enable-current-column-highlight t)
    :mode
    (("\\.vue\\'" . vue-mode))))

;;; packages.el ends here
