(package-initialize)                ;; Initialize & Install Package

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode 1))

;; prepend /usr/local/bin to PATH for xelatex, etc.
(setenv "PATH" (concat "/usr/local/bin" ":" (getenv "PATH")))

;; use command as meta
(setq ns-command-modifier (quote meta))

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Load path for elisp files
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; show a clock for full screen
(display-time-mode 1)

;; Haskell-mode indentation
(add-hook 'haskell-mode-hook 'haskell-indentation-mode)

;; Default to visual-line-mode
(setq global-visual-line-mode 1)

;; set up wc-mode
(load "wc-mode")
(wc-mode)

;; set up Ludwig-mode
(load "ludwig-mode")

;; set up markdown mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; set up character abbreviations
(load "abbreviations")

;; set up ido mode
(require `ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; set up org mode
(setq org-startup-indented t)
(setq org-startup-folded "showall")
(setq org-directory "~/org")
(setq org-latex-pdf-process 
  '("xelatex -interaction nonstopmode %f"
    "xelatex -interaction nonstopmode %f")) ;; for multiple passes

;; -- Display images in org mode
;; enable image mode first
(iimage-mode)
;; add the org file link format to the iimage mode regex
(add-to-list 'iimage-mode-image-regex-alist
  (cons (concat "\\[\\[file:\\(~?" iimage-mode-image-filename-regex "\\)\\]")  1))
;;  add a hook so we can display images on load
(add-hook 'org-mode-hook '(lambda () (org-turn-on-iimage-in-org)))
;; function to setup images for display on load
(defun org-turn-on-iimage-in-org ()
  "display images in your org file"
  (interactive)
  (turn-on-iimage-mode)
  (set-face-underline-p 'org-link nil))
;; function to toggle images in a org bugger
(defun org-toggle-iimage-in-org ()
  "display images in your org file"
  (interactive)
  (if (face-underline-p 'org-link)
      (set-face-underline-p 'org-link nil)
      (set-face-underline-p 'org-link t))
  (call-interactively 'iimage-mode))

;; set up Desktop Mode
(desktop-save-mode 0)

;; Find ispell
(setq ispell-program-name "/usr/local/bin/ispell")

;; set up line wrap mode
(global-visual-line-mode 1)

;; set up ace-jump-mode
(add-to-list 'load-path "which-folder-ace-jump-mode-file-in/")
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c C-SPC" ) 'ace-jump-mode)

;; set up fonts for different OSes. OSX toggles to full screen.
(setq myfont "InputMono")
(cond
((string-equal system-name "Sampo.local")
 (set-face-attribute 'default nil :font myfont :height 144)
 (setq browse-url-browser-function 'eww-browse-url)
 (toggle-frame-fullscreen))
((string-equal system-name "Morpheus.local")
 (set-face-attribute 'default nil :font myfont :height 144))
((string-equal system-name "ILMARINEN")
 (set-face-attribute 'default nil :font myfont :height 106))
((string-equal system-name "UKKO")
 (set-face-attribute 'default nil :font myfont :height 104)))

;; source: http://steve.yegge.googlepages.com/my-dot-emacs-file
(defun rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)
        (progn
          (rename-file name new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil))))))

;; eval pretty-print
(global-set-key [remap eval-expression] 'pp-eval-expression)
