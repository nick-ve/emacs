;
; Sample startup file for notGNU emacs (notgnu.st).
; Last modified Fri Jan 22, 1995, by Tor Slettnes
; This type of file can be loaded at anytime using
; the extended command M-x load-file.
;

; Set/suppress automatic mode invokation for certain file extensions (NvE 17-aug-1999)
;(del-file-extension 'C,h);
(add-file-extension 'C,cxx);
(add-file-extension 'C,cc);
(add-file-extension 'C,tex);

(toggle-smooth-scroll); NvE 29-jun-1999

(set-windows-clipboard-active '1);

;*** Switch off the hints messages
;*** NvE 22-mar-1999
if !DOS (win-hints '0)

; Default is to make backups; uncommenting the following
; line will turn backups off.
(toggle-make-backups)


; Default is to NOT check whether a file is edited in two
; places at once; the following will enable this check.
; Slow on floppy drives.
;(toggle-check-file-timestamp)


; Default for DOS/Windows versions is to save in DOS text
; file format (Newline = CR LF).  The following will cause
; files to be saved in UNIX format (Newline = LF):
(toggle-just-write-newline); NvE 24-mar-2020


; Default is not to display linenumber in the modeline; 
; The following toggles line numbers on.
(toggle-show-linenumber)


; Default is to display both the buffername and the filename
; in the status line. If you run out of space on the line,
; one idea may be to remove the filename.  The following
; line toggles filename display off.
(display-filename)


; Default is to provide no linewrapping, and no autoindent.
; The following lines enable these features; when used in
; combination, overflow (wrapped) text will automatically
; be indented.  Nifty for editing text files. :-)
;(auto-indent-mode)             ; First buffer opened
;(set-default-mode 'indent)     ; Subsequent buffers
;(auto-fill-mode)               ; First buffer opened
;(set-default-mode 'fill)       ; Subsequent buffers

; Some file extensions automatically invoke fill mode.
; To become insensitive to this I have put the max. column very far.
; NvE 24-sep-1997 UU-SAP
(set-fill-column '200)

; Default is to let C-n and Down-Arrow insert new lines at the 
; end of the buffer, if moved beyond the end of the text.
; The following disables this Emacs { bug | feature }.
(auto-append '0)


; Default is to query before killing any modified buffer,
; including *scratch*. Uncommenting the following line
; will disable queries for buffers with no file association.
(query-save-buffers '0)


; Default is to query before inserting output from a subtask
; such as compile into a NotGNU buffer. The following line
; causes NotGNU to insert the output automatically, without
; query.
if !DOS (query-on-subtask-done '0)


; Default is to highlight the background on mouse selections.
; Uncomment if you want to highlight the foreground (text) instead:
(set-select-highlight 'f)


; Unix text file format specifies that only LF be used to
; indicate newline, while in DOS and Windows CR is output
; before every LF.  Default for DNOT, WNOT, NTNOT is to use
; DOS file format; uncommenting the following line will
; cause Unix format to be used instead.
; (toggle-just-write-newline)


; GNU-like autocompletion is not set by default; the GNU-ness
; isn't perfect yet. :(  Uncomment if you are a die-hard GNU.
; (set-gnu '1)


; Default autosave interval is 15 seconds.
; Let's be a little more macho than that.
(set-autosave-inc '300)


; Customize your colors in DNOT.  Color attributes are, in order:
; Regular text, touched text, selected text, echoline text[, bacground].
; if DOS (set-dos-colors '10,11,12,13)


; The following toggles the time display in the title bar under
; Windows. Uncomment if you are using a utility like 'barclock',
; 'tick-it' etc..
; if Win3  (display-time)
; if WinNT (display-time)


; Various keybindings. Basic syntax:
; "\^x" is ctrl-x
; "\F1" is function key F1
; "\Eo" is alt-o (or meta-o, ESC o)
; "\Kp-+" is keypad +
; "\Backspace" is a named key
; "\SBackspace" is shift + a named key
; "\CBackspace" is control + a named key
; "\MBackspace" is alt + a named key
; See documentation for details


; C mode map definitions
;(define-key C "\^c\^c"        'compile)


; Global key definitions
;***(global-set-key "\F1"         'goto-line)
;***(global-set-key "\F8"         'other-window)
;***(global-set-key "\e+"         'enlarge-window)
;***(global-set-key "\e-"         'shrink-window)
;***(global-set-key "\^z"         'scroll-one-line-up)
;***(global-set-key "\ez"         'scroll-one-line-down)

;***(global-set-key "\^@"         'set-mark-select)
;(global-set-key "\^x\^i"      'insert-file)
;(global-set-key "\^x!"        'shell-command)
;(global-set-key "\^_"         'undo)

; Uncommenting the following will unbind Alt-F from 'forward-word'
; (global-set-key "\efo"      'find-file)               ; Alt-F o
; (global-set-key "\efs"      'save-buffer)             ; Alt-F s
; (global-set-key "\efx"      'save-buffers-kill-emacs) ; Alt-F x
; (global-set-key "\Insert"   'set-mark-select)         ; A Demacs thing


; These they will fail in the DOS version because
;   (1) these are not legal DOS commands or
;   (2) fkeys beyond 10 are not visible.

;***if !DOS (global-set-key "\F2"         'shell-window)
;***if !DOS (global-set-key "\F9"         'make)
;***if !DOS (global-set-key "\F10"        'next-error)
;***if !DOS (global-set-key "\F12"        'undo)

;if  DOS (global-set-key "\^z"         'shell-command)

;******************** NVE private key settings **********************
;*** Numerical keypad definitions
;(global-set-key "\KP-1" 'beginning-of-buffer)
;(global-set-key "\KP-2" 'end-of-buffer)
(global-set-key "\KP-3" 'kill-emacs)
(global-set-key "\KP-4" 'save-buffer)
;(global-set-key "\KP-5" 'beginning-of-line)
;(global-set-key "\KP-6" 'end-of-line)
;(global-set-key "\KP-7" 'scroll-down)
;(global-set-key "\KP-8" 'scroll-up)
(global-set-key "\KP-9" 'kill-line)
;*** F-key equivalents of the above ***
;(global-set-key "\F1" 'beginning-of-buffer)
;(global-set-key "\F2" 'end-of-buffer)
(global-set-key "\F3" 'kill-emacs)
(global-set-key "\F4" 'save-buffer)
;(global-set-key "\F5" 'beginning-of-line)
;(global-set-key "\F6" 'end-of-line)
;(global-set-key "\F7" 'scroll-down)
;(global-set-key "\F8" 'scroll-up)
(global-set-key "\F9" 'kill-line)
;*********************************
(global-set-key "\^v" 'set-mark-command)
;***(global-set-key "\^c" 'copy-region-to-clipboard)
(global-set-key "\^c" 'copy-region-as-kill)
;***(global-set-key "\^p" 'yank-from-clipboard)
(global-set-key "\^p" 'yank)
;***(global-set-key "\^d" 'kill-region-to-clipboard)
(global-set-key "\^d" 'kill-region)
(global-set-key "\^u" 'undo)
(global-set-key "\^r" 'replace-string)
(global-set-key "\^w" 'write-file)
(global-set-key "\^id" 'insert-date)
(global-set-key "\^it" 'insert-time)
(global-set-key "\^if" 'insert-filename)
;----
(global-set-key "\Shift-Up" 'beginning-of-buffer)
(global-set-key "\Shift-Down" 'end-of-buffer)
(global-set-key "\Shift-Left" 'beginning-of-line)
(global-set-key "\Shift-Right" 'end-of-line)
;***************** NVE end of private key settings ******************

; Begin customized notGNU toolbar 
if !DOS (clear-toolbar)
if !DOS (add-to-toolbar 'find-file)
if !DOS (add-space-to-toolbar)
;if !DOS (add-to-toolbar 'print-buffer)
if Win3 (add-to-toolbar 'print-buffer)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'kill-region-to-clipboard)
if !DOS (add-to-toolbar 'copy-region-to-clipboard)
if !DOS (add-to-toolbar 'yank-from-clipboard)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'undo)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'string-search)
if !DOS (add-to-toolbar 'string-search-replace)
if !DOS (add-to-toolbar 'search-backward)
if !DOS (add-to-toolbar 'search-forward)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'delete-other-windows)
if !DOS (add-to-toolbar 'split-window-vertically)
if !DOS (add-to-toolbar 'switch-to-buffer)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'win-list-buffers)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'goto-line)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'save-buffer)
if !DOS (add-to-toolbar 'save-all-buffers)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'windows-help)
if !DOS (show-toolbar)
; End customized notGNU toolbar 


; Begin customized notGNU toolbar 
if !DOS (clear-toolbar)
if !DOS (add-to-toolbar 'find-file)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'kill-region-to-clipboard)
if !DOS (add-to-toolbar 'copy-region-to-clipboard)
if !DOS (add-to-toolbar 'yank-from-clipboard)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'undo)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'string-search)
if !DOS (add-to-toolbar 'string-search-replace)
if !DOS (add-to-toolbar 'search-backward)
if !DOS (add-to-toolbar 'search-forward)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'delete-other-windows)
if !DOS (add-to-toolbar 'split-window-vertically)
if !DOS (add-to-toolbar 'switch-to-buffer)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'win-list-buffers)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'goto-line)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'save-buffer)
if !DOS (add-to-toolbar 'save-all-buffers)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'windows-help)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'shell-command)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'shell-window)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'win-exec)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'popup-menu)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'mail)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'compile)
if !DOS (show-toolbar)
; End customized notGNU toolbar 


; Begin customized notGNU toolbar 
if !DOS (clear-toolbar)
if !DOS (add-to-toolbar 'find-file)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'kill-region-to-clipboard)
if !DOS (add-to-toolbar 'copy-region-to-clipboard)
if !DOS (add-to-toolbar 'yank-from-clipboard)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'undo)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'string-search)
if !DOS (add-to-toolbar 'string-search-replace)
if !DOS (add-to-toolbar 'search-backward)
if !DOS (add-to-toolbar 'search-forward)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'delete-other-windows)
if !DOS (add-to-toolbar 'split-window-vertically)
if !DOS (add-to-toolbar 'switch-to-buffer)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'win-list-buffers)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'goto-line)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'save-buffer)
if !DOS (add-to-toolbar 'save-all-buffers)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'windows-help)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'shell-command)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'shell-window)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'win-exec)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'popup-menu)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'mail)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'compile)
if !DOS (add-space-to-toolbar)
if !DOS (add-to-toolbar 'print-buffer)
if !DOS (show-toolbar)
; End customized notGNU toolbar 
