
(setq doom-clipboard-enable t)
(setq display-line-numbers-type t)

(setq org-directory "~/org/")

;; Make the window transparent
(set-frame-parameter (selected-frame) 'alpha '(95 . 95))

;; Set theme to doom-electric
;; (setq doom-theme 'doom-outrun-electric)
;; Load Copilot package
(use-package! copilot
  :hook (prog-mode . copilot-mode)  ;; Enable copilot-mode in programming modes
  :bind (("C-TAB" . 'copilot-accept-completion)  ;; Set keybinding to accept completion
         :map copilot-completion-map
         ("C-n" . 'copilot-next-completion)     ;; Keybinding for next completion
         ("C-p" . 'copilot-previous-completion) ;; Keybinding for previous completion
         ("C-g" . 'copilot-clear-overlay)))     ;; Keybinding to clear completion
;; Copilot settings
(use-package! copilot
  :hook (prog-mode . copilot-mode)
  :bind (:map copilot-completion-map
              ("C-<tab>" . copilot-accept-completion)
              ("C-TAB"  . copilot-accept-completion-by-word)
              ("M-TAB"  . copilot-accept-completion-by-line)))


(after! flycheck
  (setq-default flycheck-cppcheck-checks '("all"))  ;; Enable all checks for cppcheck
  ;; Use clang-tidy or cppcheck as the linter for C++
  (setq flycheck-c/c++-clang-tidy-executable "clang-tidy")
  (setq flycheck-c/c++-cppcheck-executable "cppcheck"))

;; Enable bold and italic font
(setq doom-themes-enable-bold t
      doom-themes-enable-italic t)

(setq doom-font (font-spec :family "CaskaydiaCove Nerd Font Mono" :size 14 :weight 'regular)
      doom-variable-pitch-font (font-spec :family "CaskaydiaCove Nerd Font Mono" :size 14))



(after! evil
  ;; Enable 'hjkl' movement in insert mode
  (define-key evil-insert-state-map (kbd "C-h") 'backward-char)
  (define-key evil-insert-state-map (kbd "C-j") 'next-line )
  (define-key evil-insert-state-map (kbd "C-k") 'previous-line)
  (define-key evil-insert-state-map (kbd "C-l") 'forward-char))

(map! :leader
      :desc "Open vterm" "t t" #'vterm)
(require 'wal-mode)
