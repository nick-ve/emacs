________________________________________________________________________
File      : notgnu.fun
Purpose   : Function descriptions for notGNU's M-x describe-function.
Created on: Nov 27, 1993 by Tor Slettnes <tor@netcom.com>
Last modifications:
            Jan 22, 1995 by Tor Slettnes, Julie Melbin
            Jan 29, 2008 by Julie Melbin

The notGNU Copyrights are reserved (C) 1993, 1994, 1995 by Julie Melbin.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
________________________________________________________________________

abbrev-mode  (No default keybinding) [Not on DOS]
    Activates abbreviation mode; typing a know abbreviation followed
    by the command expand-abbrev causes the abbreviated text to
    be replaced by the full text. 
    See also: expand-abbrev, add-abbrev

add-abbrev (No default keybinding) [Not on DOS]
    Define abbrev for last word(s) before point. notGNU provides a
    small subset of the GNU Emacs abbreviation functions. Abbreviations
    allow you to type a subset of a word followed by the expand key
    (defaults to <space> if abbrev-mode) to have the subset (or single char)
    replaced by the full word or string. Note that you can bind
    expand-abbrev to any key via global/local-set-key. 

    Typing ctrl-u prior to executing add-abbrev lets you enter a more
    complex string as the abbreviation replacement text.
    
    See also:expand-abbrev, abbrev-mode

add-file-extensions (No default keybinding)
    notGNU has the concept of internal modes (notably fill mode, indent
    mode, etc). notGNU will guess at the appropriate mode to used based
    on file extension. The modes notGNU defaults based on extension
    are:
  
        cmode	.h, .c, .cpp, .hpp
        fill    .txt, .doc
        CR      .ini, .bat, .sys		DOS/Windows/NT defaults
   
    You can cause notGNU to recognize additional file types with this
    command; Windows 3.1 and DOS limit the extension length to 3.
     
    An example command input would be 
    
        C,cxx
         
    to cause notGNU to treat .cxx files the same way as .cpp files
    An example line in the notgnu.st file might be:
   
       (add-file-extension 'C,lsp)  ; lisp files should pretend to use C mode
   
    See also: set-default-mode, auto-fill-mode, cmode, set-write-cr, 
				del-file-extension etc.
    
add-separator-to-popup (No default keybinding) [Windows/NT only]
    Syntax: (add-separator-to-popup)
    Append a separator line to the popup menu.

add-space-to-toolbar (No default keybinding) [Windows/NT only]
    Syntax: (add-space-to-toolbar)
    Insert a space between the last added toolbar button and the next.
    If used to define a toolbar in startup file, show-toolbar should be
    called at the end of the toolbar definition;

add-to-popup (No default keybinding) [Windows/NT only]
    Syntax: (add-to-popup 'function-name)
    Append a notGNU function to the popup menu.

add-to-toolbar (No default keybinding) [Windows/NT only]
    Syntax: (add-to-toolbar 'function-name)
    Append a supported notGNU function to the toolbar.
    If used to define a toolbar in startup file, show-toolbar should be
    called at the end of the toolbar definition;

align-indented (No default keybinding)
    Currently incomplete attempt at 'smart' c indent. To be enhanced
    in future versions.

append-region-to-buffer (C-x a)
    Append region between cursor and mark to specified buffer. 
    If the buffer does not exist, create a new one. 
    See also: copy-region-to-buffer

apropos (C-h a)
    List all commands containing specified argument. For a list of all
    commands, do M-x apropos RET (C-h a RET).

auto-append (No default keybinding)
    Syntax: (auto-append 'bool)
    Controls whether to allow "next-line" (Ctrl-N, Down Arrow) to
    append new lines to the end of the buffer, similar to RET.
    Default: 1 (allow new lines to be added)

auto-fill-mode (No default keybinding)
    Toggle automatic line wrap on/off. If on, inserting a space at a
    column beyond the fill column (see set-fill-column) automatically
    breaks the line at a previous space.  If auto-indent mode is active,
    then the newline created will be indented to match the indent of the
    current line.  Fill-prefix is also used when auto-fill is active;
    newly created lines will have the fill-prefix prepended to them.
    Default: off.

auto-indent-mode (No default keybinding)
    Syntax: (auto-indent-mode)
    Swap key bindings for LFD (newline-and-indent) and CR (newline),
    i.e. toggle automatic indentation on/off.  Auto-indent works with
    auto-fill-mode and with fill-paragraph.
    Default: 0 (no auto-indent).
    See also: newline, newline-and-indent

auto-modified-fill-mode (No default keybinding)
    Syntax: (auto-modified-indent-mode)
    Like auto-fill-mode, except that a line with '.' in the first
    column is implicitly treated as the first line of the next
    paragraph. This effectively stops fill-paragraph from advancing
    to that line.

back-to-indentation (M-m)
  Move point to the first non-whitespace character on this line.

backward-char (C-b, Left-Arrow)
    Move cursor one position to the left, or to the end of previous
    line if already at beginning of line.

backward-kill-word (MBackspace)
    Kill word to the left of cursor.

backward-paragraph (M-[, Control-Home)
    Move to the beginning of this or the previous paragraph.

backward-sexp (No default keybinding)
    Move backward to a sexpression. Moves while in a word, until hits
    (){}<> or[].

backward-word (M-b, Control-Left)
    Move to the beginning of this or previous word.

beginning-of-buffer (M-<, Control-PgUp)
    Move cursor to the beginning of current buffer.

beginning-of-line (C-a, Home)
    Move cursor to the beginning of current line.

blink-match (No default keybinding)
    If character under cursor is one of ()[]{}, and there exists a
    match for that character in the current buffer, show the match
    by moving cursor there for about 1/4 second.

blink-matching-paren (No default keybinding)
    Same as "cmode" currently.

buffer-flush-undo (No default keybinding)
    Clear the undo stack; free memory.

bury-buffer (No default keybinding)
    Put BUFFER at the end of the list of all buffers.  Effects result
    of previous-buffer-in-list and next-buffer-in-list but not the
    default buffer in switch-to-buffer.

c-indent-off (No default keybinding)
    Currently unavailable.

c-indent-on (No default keybinding)
    Currently unavailable.

c-x 4 prefix (C-x 4)
    Apply certain extended commands to other pane/window.
    Example: "C-x 4 d" runs dired-other-window

c-x prefix (C-x)
    Apply extended command to this pane/window.
    Example: "C-x C-c" runs save-buffers-kill-emacs

call-last-kbd-macro (C-x e)
    Execute recorded key sequence. See start-kbd-macro.

capitalize-word (M-c)
    Convert word, beginning with character under cursor, to uppercase,
    and the rest of the word to lowercase.

center-line (No default keybinding)
    Center text on current line between left column and fill column.

center-region (No default keybinding)
    Center all lines that start between cursor and mark.

clear-popup (No default keybinding) [Windows/NT only]
    Syntax: (clear-popup)
    Remove all functions from the popup menu. Useful in the startup
    file, normally followed by a series of add-to-popup commands.

clear-toolbar (No default keybinding) [Windows/NT only]
    Syntax: (clear-toolbar)
    Remove all functions from the toolbar. Useful in the startup
    file, normally followed by a series of add-to-toolbar commands.

clear-rectangle (No default keybinding)
    Fill rectangle region with blanks.

cmode (No default keybinding)
    Toggle parenthesis matching on/off. 
    Default: off
    See also: blink-match

compile (No default binding)
    Spawn an external command with redirection to a log file, then
    optionally insert that log file into a separate buffer.  Default
    command can be specified with the MEMAKE environment variable;
    otherwise it is "nmake" under DOS/Windows, and "make" under
    Unix.  Same as 'make'.

compile-auto-save (No default binding)
    For compile command, set whether all changed buffers are
    automatically saved before starting the compile command.
    Default: False
    See also: compile,make

copy-rectangle (C-x r)
    Copy text from rectangle between cursor and mark to the
    rectangle kill buffer.

copy-region-as-kill (M-w)
    Copy region between cursor and mark to kill buffer.

copy-region-to-buffer (No default keybinding)
    Copies region between cursor and mark to specified buffer.
    If buffer already exists, its contents will be erased before
    copying; if not, a new one will be created.
    See also: append-region-to-buffer

copy-region-to-clipboard (C-x x) [Windows/NT only]
    Copy region to the Windows clipboard or X11 cutbuffer 0.

count-matches (No default keybinding) (Not on DOS)
    Print number of matches for REGEXP following point.
    Ctrl-g (Windows/NT) should abort a lengthy search.
    Regex is case sensitive.
    See also: regex-isearch-forward

count-region-words (No default keybinding)
    Count words in a region. Uses normal notGNU definition of a word.

count-lines-region (No default keybinding)
    Another name to access to count-region-words for Gnu compatability. 
    See also: count-region-words.

cursor-to-center (No default keybinding)
    Puts dot on the middle line in the window pane.
    See also: cursor-to-top, cursor-to-bottom

cursor-to-bottom (No default keybinding)
    Puts dot on the last line in the window pane.
    See also: cursor-to-top, cursor-to-center

cursor-to-top (No default keybinding)
    Puts dot on the topline in the window pane.
    See also: cursor-to-center, cursor-to-bottom
        
default-popup (No default keybinding) [Windows/NT only]
    Syntax: (default-popup)
    Reset the popup menu to the notGNU defaults.

default-toolbar (No default keybinding) [Windows/NT only]
    Syntax: (default-toolbar)
    Reset the toolbar to the notGNU defaults. In order to see the
    complete default toolbar, you will probably have to maximize the
    notGNU window. notGNU will clip the right side toolbar based on the
    width of the window. If the windows-help button is in the toolbar
    (the default) then it will always be the rightmost button visible.
    
    Normally accessed via Properties/Toolbar/Customize Toolbar.

define-key (No default keybinding)
    Syntax: (define-key keymap "Sequence" 'extended-command)
    Define a key sequence in specified keymap. Available keymaps
    are: *, fill, modified, indent, C, overwrite, help, dired, blist.

del-file-extensions (No default keybinding)
	See add-file-extension.  Removes an extension from
	a mode map.

delay-file-read (No default keybinding)
    Syntax: (delay-file-read 'bool)
    Specify whether files specified on the command line are read
    when the editor starts up, or only when the buffer is visited for
    the first time. Default: 0 (All files read at startup)

delete-backward-char (Backspace)
    Delete character to the left of cursor.

delete-blank-lines (C-x C-o)
    On blank line, delete all surrounding blank lines, leaving just
    one. On isolated blank line, delete that one. On nonblank line,
    delete all blank lines that follow it.

delete-char (C-d, Delete)
    Delete character under cursor.

delete-horizontal-space (M-\)
    Delete all spaces and tabs around cursor.

delete-indentation (M-^)
    Join this line to previous and fix up whitespace at join. The
    joined lines will have a single space between last non-whitespace
    of previous line and first non-whitespace of joined line.

delete-line (M-m)
    Kill current line, including the trailing newline character.

delete-rectangle (No default keybinding)
    Delete text in rectangle (do not save in kill buffer).
    See also: kill-rectangle.

delete-other-windows (C-x 1)
    Remove all window panes, except the one containing cursor.

delete-window (C-x 0)
    Remove the window pane that contains the cursor.

describe-bindings (C-h b)
    List all key bindings currently active.

describe-function (C-h f)
    Display the full documentation of a function.

describe-key-briefly (C-h c)
    Print the name of the function that the subsequent key sequence
    invokes.

digit-argument (M-0 .. M-9)
    Part of the numeric argument for the next command.

dired (C-x d)
    Interactive mode that lets you edit, view, or delete
    files in a specified directory. The following keymap is
    available in 'dired':
        e = Edit this file (same as find-file, GNU compatability)
        f = find-file
        v = view-file
        d = Delete this file
        m = Mark file for batch processing.
            Available in single column mode only.
    
    Mouse double-click is equal to find-file. Typing c-u before e,f, or
    v will cause notGNU to read the file into the same window (on top
    of the dir listing). Otherwise, notGNU reads files into a
    new/different window.

dired-other-window (C-x 4 d)
    Open a dired buffer in other window pane. See also: dired

dired-show-hidden-files (No default keybinding) (Windows NT - 32bit notGNU only)
    Controls whether dired buffers show hidden files.
    Default: false

dired-single-column (No default keybinding)
    Syntax: (dired-single-column 'bool)
    Specify whether to use single columns when listing files in the
    dired buffer.  If 1, all file information is displayed, and the
    'm' (mark for batch) command will be available. If 0, multiple
    columns will be used.
    Default: 1

display-filename (No default keybinding)
    Toggle filename display in modeline on/off.
    Default: on

display-time (No default keybinding)
    Toggle time display in modeline or titlebar (Windows/X11 only) on/off.
    Default: on

downcase-region (C-x C-l)
    Convert all characters between cursor and mark into lowercase.

downcase-word (M-l)
    Convert the following word, or the rest of the current word,
    into lowercase.

edit-abbrevs (No default keybinding) [Not on DOS]
    Edit existing abbrevitation definitions.
    See also: add-abbrev,expand-abbrev.

egrep (No default keybinding) [Windows/NT only]
    'egrep' is a GNU copylefted tool. notGNU integrates the use of
    egrep.exe, but does not modify or support the binary in anyway. 
    GNU Copyleft restrictions apply in the distribution of egrep.exe. 

    Use egrep from within notGNU by completing the command echoed in
    the prompt line. For example, to find 'foo' in all text files,
    you would type "m-x egrep <return>" and then complete the line
    as follows:
    
        egrep -n foo *.txt

    and hit return.  Use egrep -? from a DOS window to find all
    searching options. An egrep-generated log file can be traversed
    using the extended command next-error. 

    Setting the environment variable MEGREPCMD allows you to
    customize/add additional flags to egrep. The default command is
    always 'egrep -n' but you can add flags, for example:
    
        set MEGREPCMD=-i
        
    to add the ignore case flag. Be sure to add a space after the last
    customize flag.
    
    Caveat: specifing a directory path within the egrep command will
    prevent notGNU from locating the source files for the
    next/previous-error commands.
    See also: next-error, previous-error.
    
Emacs-version (No default keybinding)
    Print current version of notGNU, with compile date, in the echo line.

end-kbd-macro (C-x ))
    End recording key sequence.
    See also: start-kbd-macro.

end-of-buffer (M->, Control-PgDn)
    Move cursor to the end of current buffer.

end-of-line (C-e, End)
    Move the cursor the end of current line.

enlarge-window (C-x ^)
    Increase the size of the current window pane by one line.  If
    called interactively with universal-argument (C-u), increase by
    that number of lines.

esc prefix (Esc)
    Extended command prefix.

eval-expression (No default keybinding)
    Evaluate (execute) function given as argument;  print result in
    minibuffer. Useful for interactively testing load file syntax of
    a function.

exchange-point-and-mark (C-x C-x)
    Exchange the positions of cursor and mark. If new cursor is
    outside visible window pane, update display.

expand-abbrev (' ')  [Not on DOS]
    Replace the current 'word' with it's full definition. Example, if
    you have previous defined an abbreviation for SomeLongWord to be
    the letter s, then typing s! will replace s with SomeLongWord. Note
    that <space> is the default character for expand-abbrev but you can use
    global/local-set-key to add additional bindings.

    Please note that using fill modes will interfer with the default
    binding of the <space> key; which ever mode is set last "wins". If
    you set abbrev mode before fill mode, then <space> will behave
    based on the fill mode behaviour, and vs versa.

    See also:add-abbrev

execute-extended-command (M-x)
    Execute any emacs command by name.  To go to a specific line,
    type: M-x goto-line <RET>, followed by the line number you want
    to go to.

execute-line (M-x)
	Windows 32 bit versions only - this command takes the content of the
	current buffer's current line and treats it as a command to
	execute.  For example, if the line contained "http://www.yaho.com"
	then execute-line would launch the registered Windows app to open
	that 'file'.  Leading whitespace trimmed. See execute-region.

execute-region (M-x)
	Windows 32 bit versions only - this command takes the content of the
	marked region and treats it as a command to execute; will ONLY
	operate on a region that does not span more than one line. For
	example, if the line contained "http://www.yaho.com" then
	execute-region would launch the registered Windows app to open that
	'file'.  Leading whitespace trimmed. See execute-line. 

filename-completion-match-case (No default keybinding) [NT only]
    Windows 95/Windows NT support case preserving filesystems. This
    means that you can name a file 'FooFile.Case' and the filesystem
    will remember the caps and small letters used. However, it is not a
    case sensitive filesystem; the files FooFile.Case and FOOFILE.CASE
    and foofile.case (and all other permutations) are equivalent.  This
    command toggles whether or not notGNU will allow cap or small
    letter to complete a partial filename match.  When enabled, typing
    f or F space is equivalent. When disabled, typing f space will only
    match files which begin with the small letter f.  NOTE that this case
    matching only effects partial match; if you type f.o space and
    there is a file F.O in the current directory, it will match.
    
    Default: enabled

fill-paragraph (M-q)
    Reformats lines in current paragraph to even out margins based
    on the value of "fill-column". If auto-indent is active, the the
    lines created when filling will be indented to match the first line
    of the paragraph. Fill prefix will be prepended to each newly
    created line while filling.

fill-region (No default keybinding)
    Reformats lines in all paragraphs between point and mark to even
    out margins based on the value of fill-column.

fill-region-as-paragraph (No default keybinding)
    Reformats lines in all text as if it were a single paragraph.
    See also: fill-paragraph.

find-all-files (No default keybinding) [Windows/NT/DOS only]
    See find-file; behaves identical to find-file except that entering
    a filespec such as x*.c will find and read in all files that match
    that expression.  Expression matching is defined by Microsoft API
    for each platform/executable type.

find-alternative-file (No default keybinding)
    Like find-file except that file in current buffer is killed first.
    Like kill-buffer followed by find-file.
    See also: view-file

find-file (C-x C-f)
    Loads a file for editing.  Autocompletion is available: Press
    the space key after typing in the first few characters of the
    filename, and the filename will be completed if unique, or a
    new buffer with the list of alternatives will pop up if not.
    See also: view-file

find-file-other-window (C-x 4 C-f)
    Loads a file for editing in other window pane.
    See also: find-file.

find-first-change (No default keybinding)
    Go to first line that has been changed since last save.

find-next-change (No default keybinding)
    Go to next line (from current position) that has been changed
    since last save.

flush-lines: (No default keybinding) [Not on DOS]
    Delete all lines containing string.  If a match is split across
    lines, all the lines it lies in are deleted.  Applies to lines after
    point. 
    See also: keep-lines

forward-char (C-f)
    Move cursor one position to the right, or to the beginning of
    next line if already at end of line.

forward-paragraph (M-])
    Move cursor to the end of this or next paragraph.

forward-sexp (No default keybinding)
    Move forward to a sexpression. Moves while in a word, until hits
    (){}<> or[].

forward-word (M-f, Control-Right)
    Move cursor to the end of this or next word.

global-set-key (No default keybinding)
    Syntax: (global-set-key "Sequence" 'extended-command)
    Assign specified key sequence to specified command.
    See also: global-unset-key

global-unset-key (No default keybinding)
    Syntax: (global-unset-key "Sequence")
    Unassign specified key sequence from any command.
    See also: global-unset-key

gosmacs-twiddle (No default keybinding)
    Swap position of characters like transpose-chars, only move left from
    cursor position before doing transpose.
    See also: transpose-chars.

goto-bookmark (No default keybinding) [Windows/NT]
    Move dot to a named bookmark.
    A toolbar only function; will not work from extended command line.
    See also: set-bookmark.

goto-line (No default keybinding)
    Move cursor to beginning of specified line.

goto-match (No default keybinding)
    Move cursor to matching character if one of (){}[]<>, otherwise
    move to the previous occurrence of the same character.

half-tab (TAB)
    Inserts spaces to the next half tab column.
    See also: set-tab-stop.

hard-tab (C-TAB)
    Insert a TAB character (^I) in the text at cursor.  Equivalent to
    ctrl-q ctrl-i.

help-help (C-h)
    Help prefix.  Default map:
        C-h a = apropos
        C-h b = describe-bindings
        C-h c = describe-key-briefly
        C-h d = list-key-names
        C-h f = describe-function

hide-toolbar (No default keybinding) [Windows/NT only]
    Hides the toolbar.  Normally accessed via menubar choice
    Properties/Toolbar/Show Toolbar. State saved when Properties/Save
    Settings chosen. 

insert-buffer (No default keybinding)
    Insert specified buffer into current buffer at cursor position.

insert-chars (No default keybinding)
    Insert a string into current buffer at cursor position.

insert-date (No default keybinding)
    Insert a string into current buffer at cursor position which is the
    computer's current date formatted as "mos date, year".

insert-file (C-x i)
    Insert a file into buffer at cursor position.

insert-filename  (No default keybinding)
    Insert filename into current buffer; filename is complete
    path of current buffer. Name is forced lowercase on 
    Windows 3.1/DOS.

indent-newline-with-wrap (No default keybinding)
    An internal command. Not useful via keyboard.

insert-newline-with-wrap (No default keybinding)
    An internal command, triggered when fill-mode is on and RET is
    pressed.

insert-time (No default keybinding)
    Inserts time string at dot. Currently not internationalized.

insert-with-wrap (No default keybinding)
    An internal command, triggered when fill-mode is on and a blank
    character is entered.

isearch-backward (C-r)
    Incremental search backward.  Interactively search as you type,
    and move the cursor to the closest occurrence of the string typed
    so far.  Not available inside keyboard macros.
    Ctrl-g (Windows/NT) should abort a lengthy search.
    See also: search-backward (for in macros)

isearch-forward (C-s)
    Incremental search forward.  Interactively search as you type,
    and move the cursor to the closest occurrence of the string typed
    so far. Not available inside keyboard macros.
    Ctrl-g (Windows/NT) should abort a lengthy search.
    See also: search-forward (for in macros)

just-one-space (No default keybinding)
    If executed, will make sure that there is at most 1 blank
    between the beginning of the line/next non-whitespace character
    from current position.

keep-lines: (No default keybinding) [Not on DOS]
    Delete all lines except those containing string.
    A match split across lines preserves all the lines it lies in.
    Applies to all lines after point.
    See also: flush-lines

keyboard-quit (C-g)
    Abort an extended command.  Under Windows/NT, ctrl-g can be pressed
    to abort a lengthy search. Responsiveness of command is directly
    related to the timeslicing code.
    See also: set-yield-rate.

kill-abbrevs  (No default keybinding) [Not on DOS]
    Remove an abbrevitation definition. 
    See also: add-abbrev, expand-abbrev, edit-abbrevs.

kill-buffer (C-x k)
    Remove specified buffer from the buffer list.  If the buffer
    has been updated since last save to a file, you will be asked
    whether to save before quitting.

kill-current-buffer (No default keybinding)
    Same as kill-buffer, but remove current buffer.

kill-emacs (No default keybinding)
    Ask for confirmation, then exit without saving the contents of
    updated buffers.  No confirmation per buffer.
    See also: save-buffers-kill-emacs.

kill-line (C-k)
    Kill the rest of the current line; if there are no non-blanks
    there, include the following newline character.

kill-kbd-macro (No default keybinding) [Not on DOS]
    Delete the named macro from the current in-memory list of named
    kbd macros.
    See also: name-kbd-macro, save-kbd-macros, pop-kbd-macro.

kill-paragraph (No default keybinding)
    Kill to the end of current or next paragraph.

kill-rectangle (No default keybinding)
    Kill text from rectangle between cursor and mark to the
    rectangle kill buffer.

kill-region (No default keybinding)
    Kill region between cursor and mark to the kill buffer.

kill-region-to-clipboard (No default keybinding)
    Cut region between cursor and mark to the Windows clipboard or
    X11 cutbuffer 0.

kill-whole-line (No default keybinding)
    Kill the entire line. Like delete-line except that content does go into
    the internal clipboard and thus can be yanked.

kill-word (M-d)
    Kill to the end of current or next word.

line-to-bottom (No default binding)
    Moves the cursor to the bottom line of the current window.
    See also: line-to-top, cursor-to-bottom

line-to-top (No default binding)
    Moves the cursor to the top line of the current window.
    See also: line-to-bottom, cursor-to-top

list-abbrevs (No default binding) [Not on DOS]
  Function: Display a list of all defined abbrevs.

list-buffers (C-x C-b)
    Open a (new) window pane containing list of available buffers.
    The following keymap is available in buffer list:
        u = Use Buffer	(switch-to-buffer)
        s = Save Buffer	(save-buffer)
        k = Kill Buffer (kill-buffer)
    
    Mouse-double click is equal to switch-to-buffer.
    Windows/NT see also:  win-list-buffers.

list-key-names (C-h d)
    Print all legal key names.  Useful reference for startup file
    binding of 'special named keys'.

load-buffer (No default keybinding)
    Evaluate (execute) commands given in current buffer.

load-file (No default keybinding)
    Evaluate (execute) given file.

load-kbd-macros (No default keybinding) [Not on DOS]
    Load a saved notGNU macro file.
    See also: save-kbd-macros, name-last-kbd-macro, pop-kbd-macro

local-set-key (No default keybinding)
    Syntax: (local-set-key "Sequence" 'extended-command)
    Assign key sequence to a specified command in current mode map.
    Modes available are: *, fill, modified, indent, C, overwrite,
    help, dired, blist.
    See also: global-set-key, define-key.

local-unset-key (No default keybinding)
    Syntax: (local-unset-key "Sequence")
    Unassign specified key sequence from any command in current
    mode map.
    See also: local-set-key, global-unset-key

mail (No default keybinding) [Windows/NT/Unix/X11 only]
    Mail a buffer via MAPI on Windows/NT, sendmail on Un*x.

make (No default keybinding)
    Spawn an external command with redirection to a log file, then
    optionally insert that log file into a separate buffer.  Default
    command can be specified with the MEMAKE environment variable;
    otherwise it is "nmake" under DOS/Windows, and "make" under
    UNIX.  Same as 'compile'.

make-backup-files (No default keybinding)
    Syntax: (make-backup-files)
    Toggles whether to create backup files on/off.
    Same as toggle-make-backups.
    Default: on.

mark-whole-buffer (No default keybinding)
    Mark all lines in the buffer; equal to setting mark on first or
    last line and moving dot (cursor) to last or first line. Region
    defined equals whole buffer.

minimize-window (No default keybinding)[Windows/NT only]
    Minimize the notGNU window to an icon on the Windows desktop.

negative-argument (No default keybinding)
    Specify negative argument for subsequent command.
    See also: universal-argument.

newline (C-m/RET)
    Insert a newline character at cursor position, and move
    the cursor to the beginning of the newly opened line.

newline-and-indent (C-j/LFD)
    Insert a newline character at cursor position; move cursor to
    the newly opened line, at the maximum column that satisfies both
    of the following requirements:
        1) No larger than the current column
        2) No larger than the column of the first non-white character
           in previous non-blank line.
    If auto-indent-mode is on, CR and LFD are swapped. CR will then be
    bound to newline-and-indent.

next-buffer-in-list (M-n)
    Switch to the next buffer in the buffer list.
    See also: bury-buffer.

next-error (C-x `)
    Visit next compilation error message and corresponding source code.
    This operates on the log file output from the M-x compile or M-x make
    commands.  Supported for MSC 6 and 7, MSVC++, Borland C++, the MS
    compiler on NT, and a number of different Unix compilers.
    See also: compile, previous-error.

next-line (C-n)
    Move cursor one line down.

open-line (C-o)
    Insert a newline character at cursor position.

open-rectangle (No default keybinding)
    Inserts spaces into rectangle defined by cursor position and mark.

other-window (C-x o)
    Move cursor to the next window pane.

overwrite-mode (No default keybinding)
    Syntax: (overwrite-mode)
    Toggle overwrite mode on/off.
    Default: off.

point-to-register (No default keybinding)
    Stores current cursor position to one of 10 internal registers, values
    0-9. Saved point is a line, cursor offset. Editting/deleting the
    line which contains the could cause the register to move.
    
    Undo operations may lose register values; if a register points to a
    line that is deleted, undo-ing the delete operation can not restore
    the register to the pre-deleted state; destructive edits cause registers
    to be reset, as best as possible, to a nearby line.
    
    See also: register-to-point, set-bookmark

pop-and-execute-kbd-macro (No default binding) [Not on DOS]
    Pop a previously defined and named keyboard macro into the current
    macro, then execute it using call-last-kbd-macro.
    See also: name-kbd-macro, save-kbd-macros, pop-kbd-macro.

pop-kbd-macro (No default binding) [Not on DOS]
    Pop a previously defined and named keyboard macro into the current
    macro in order to execute it using call-last-kbd-macro.
    See also: name-kbd-macro, save-kbd-macros, pop-and-execute-kbd-macro.

popup-menu (Right mouse button)
    Invoke the Windows popup menu.
    Default: Bound to right mouse button only.
    See also: set-popup-button

previous-error (No default keybinding)
    Visit previous compilation error message and corresponding source code.
    This operates on the log file output from the M-x compile or M-x make
    commands.  Supported for MSC 6 and 7, MSVC++, Borland C++, the MS
    compiler on NT, and a number of different Unix compilers.
    See also: compile, next-error.

prefix-region (No default keybinding)
    Prefix a region with the current prefix string; each line included in
    the region has the fill-prefix string prepended to the line.
    See also: set-fill-prefix.

previous-buffer-in-list (M-p)
    Switch to the previous buffer in buffer list.
    See also: bury-buffer.

previous-line (C-p)
    Move cursor one line up.

previous-window (M-C-Up)
    Move cursor to previous window pane.

print-buffer (No default keybinding)
    Send current buffer to printer or printer driver.

print-file (No default keybinding)
    Send specified file to printer or printer driver.

print-file-exit (No default keybinding)
    Send specified file to printer or printer driver, then exit notGNU.

print-header (No default keybinding)
    Syntax: (print-header 'bool)
    Specifies whether to print file name and page numbers on top of
    each page on printouts.
    Default: 1 (print)

print-region (No default keybinding)
    Send region, defined by cursor and mark, to printer or printer driver.

promote-kbd-macro (No default binding) [Only on Windows/NT]
    Push a named keyboard macro to the front of the list of named 
    keyboard macros. This effects the order it shows up in the
    Windows/NT popup menu.
    See also: name-kbd-macro, save-kbd-macros, pop-kbd-macro.

query-on-subtask-done (No default keybinding)
    Syntax: (query-on-subtask-done 'bool)
    If 1, ask for confirmation before inserting the output from
    subtasks such as compile into a separate buffer upon completion;
    if 0, insert automatically.
    Default: 1

query-replace (M-%)
    Replace one string with another, query on each replace. Prompts to
    navigate thru all open buffers.
    See also: replace-string, set-case

query-save-buffers (No default keybinding)
    Syntax: (query-save-buffers 'bool)
    If 1, ask for confirmation before killing any buffer (also
    *scratch*); if 0, ask only for those buffers that are
    associated with a file.
    Default: 1

quoted-insert (C-q)
    Read next input character and insert it raw.  Useful for
    inserting control characters.  You may also type up to 3 octal
    digits, to insert a character with that code.
    When typing in echo line, at most one quoted character can be added,
    ie if you wished to type a tab (ctrl-i) type c-q c-i. 

read-abbrev-file (No default keybinding) [Not on DOS]
    Load abbreviation definitions from a file. Default file is
    notgnu.abr written/read from your home directory.
    See also:add-abbrev, write-abbrev-file
    
read-files-from-buffer (No default) [Win32 only]
	takes a buffer of the form:

		./somepath/filename
		/somefullpath/somedir/filename

	and loads each file encountered where 1) the file name begins on the first
	line of the buffer 2) the file name is parseable based on the filesystem
	rules 3) the file is not already in memory (ie this will not re-read a file)


recenter (C-l)
    Redraw with line that contains cursor in the center of
    current window pane. Typing c-u -1 c-l causes the current
    line to be the bottom line of the current pane.  C-u 0 c-l causes
    the current line to be the top line in the window.
    See also: cursor-to-bottom, cursor-to-top, cursor-to-center

rectangle (No default keybinding)
    Interface to rectangle commands; this commands prints out a short
    prompt of the supported rectangle commands by first letter only.
    Useful for binding to a key to simulate a rectangle-mode command.
    See also: copy-rectangle, delete-rectangle, kill-rectangle,
              open-rectangle, string-rectangle, yank-rectangle
        
recover-file (No default keybinding)
    Get the contents from last auto-save of the file specified.

redraw-display (No default keybinding)
    Redraw entire notGNU window/content.

regex-isearch-backward (No default keybinding)(Not on DOS)
    Performs isearch-backward using regular expressions.
    Ctrl-g (Windows/NT) should abort a lengthy search.
    Regex is case sensitive.
    See also: isearch-backward.

regex-isearch-forward (No default keybinding)(Not on DOS)
    Performs isearch-forward using regular expressions.
    Ctrl-g (Windows/NT) should abort a lengthy search.
    Regex is case sensitive.
    See also: isearch-forward.

regex-search-again (No default keybinding)(Not on DOS)
    Performs search-again using regular expressions.
    Ctrl-g (Windows/NT) should abort a lengthy search.
    Regex is case sensitive.
    See also: search-again.

regex-search-backward (No default keybinding)(Not on DOS)
    Performs search-backward using regular expressions.
    Regex is case sensitive.
    See also: search-backward.

regex-search-forward (No default keybinding)(Not on DOS)
    Performs search-forward using regular expressions.
    Ctrl-g (Windows/NT) should abort a lengthy search.
    Regex is case sensitive.
    See also: search-forward.

regex-set-mode (No default keybinding) (Not on DOS)
    This function modifies the search engine behavior; if set on, ALL
    subsequent search commands will be in REGEX mode (ie this basically
    disables the regular string matching code).  When off, both search
    engines are available (case modifiable string searching) and regex.
    Regex is case sensitive.

regex-query-replace (No default keybinding)(Not on DOS)
    Performs query-replace using regular expressions for search 
    string only; replacement string is a plain string. 
    Regex is case sensitive.
    See also: query-replace.

register-to-point (No default keybinding)
    Moves cursor to position stored in a given register. Legal
    register values are 0-9.
    See also: point-to-register, goto-bookmark

remove-from-popup (No default keybinding) [Windows/NT only]
    Syntax: (remove-from-popup 'function-name)
    Remove an existing function from the popup menu.
    If used to define a toolbar in startup file, show-toolbar should be
    called at the end of the toolbar definition;

remove-from-toolbar (No default keybinding) [Windows/NT only]
    Syntax: (remove-from-toolbar 'function-name)
    Remove an existing function from the toolbar.

replace-string (No default keybinding)
    Unconditional string replace.
    See also: query-replace, set-case.

reread-file (No default keybinding)
    Equal to killing w/o saving the current file, then revisiting.
    See also: revert-buffer.

reread-all-changed-files (No default keybinding)
    Similar to reread-file; for every open buffer that has a valid
    filename associated with the buffer, and the file timestamp on the
    disk is newer than the buffer - indicating the file was changed
    outside the editor - reread that file.  If a buffer has been changed
    within notGNU, the user is prompted before the file is reloaded. 
    See also: reread-file.

reread-log-file (No default keybinding)
    Force notGNU to read or reread the log file that is normally
    created by shell-command and compile.

restore-window-state (No default keybinding)  [Not on DOS]
    Restore window/buffer state from last save. Prompts for id value in
    range 0-9, A-Z and a-z.
    See also: save-window-state.

restore-window-state-from-file (No default keybinding) [Windows/NT only]
    Restore window/buffer state from named file; very similar to
    restore-window-state (above) except that all buffers which had
    filename are also re-created from the saved state file, and read in
    when accessed. A more accurate description might be
    restore-session-state. 
    See also: save-window-state-from-file, save-window-state.

revert-buffer (No default keybinding)
    Equal to killing w/o saving the current file, then revisiting.
    See also: reread-file.

revert-to-incremental (No default keybinding)
    Get the contents from last auto-save of the file specified. Same
    as M-x recover-file.

save-all-buffers (C-x C-s)
    Save the contents of all currently modified buffers to disk.

save-buffer (C-x C-s)
    Save the contents of current buffer to file.

save-buffers-kill-emacs (C-x C-c)
    Save unsaved buffers and exit notGNU. Doing c-u c-x c-c will close
    notGNU w/o prompting on each buffer; all modified buffers are
    written and any errors reported.

save-kbd-macros (No default binding) [Not on DOS]
    Write all currently defined and named keyboard macros into a notGNU
    macro file.
    See also: load-kbd-macros, start-kbd-macro, name-kbd-macro.

save-some-buffers (C-x s)
    For each modified buffer, query the user whether to save.

save-window-state (No default keybinding)  [Not on DOS]
    Save the state (size, current buffer, current line) of all visible
    notGNU windows into a window state register.  Deleting/modifing
    buffers can cause a restored state to be different from saved state.
    Values are 0-9, A-Z and a-z. Similiar to a bookmark.
    See also: restore-window-state

save-window-state-to-file (No default keybinding)  [Windows/NT only]
    Saves the current window state to a named file; same as
    save-window-state (above) except information is stored to a file
    which may be loaded at anytime during current or future sessions.
    All buffers which have a filename are also listed in the saved
    state file. A more accurate description might be
    save-session-state.
    See also: save-window-state, restore-window-state-from-file.

scroll-down (M-v, Page-Up)
    Move text in current buffer one windowpane worth down.

scroll-left (Shift left-arrow on Windows/DOS/X11)
    Scroll content of current window (pane) off to left 1 char.

scroll-one-line-down (Control-Up) (Hardwired in Windows, X11)
    Move text in current buffer one line down.

scroll-one-line-up (Control-Down) (Hardwired in Windows, X11)
    Move text in current buffer one line up.

scroll-other-window (No default keybinding)
    Scroll text in other window ARG lines up.
    See also: negative-argument, universal-argument.

scroll-right (Shift right-arrow on Windows/DOS/X11)
    Scroll content of current window (pane) off to right 1 char.

scroll-up (C-v, Page-Down)
    Move text in current buffer one windowpane worth up.

search-again (No default keybinding)
    Repeat last search-backward or search-forward.
    Ctrl-g (Windows/NT) should abort a lengthy search.
    See also: isearch-forward/isearch-backward/search-*

search-backward (M-r)
    Search backward from cursor for given string.  Can be used
    inside keyboard macros rather than isearch-backward; also useful
    if using notGNU remotely via a slow modem line.
    Ctrl-g (Windows/NT) should abort a lengthy search.

search-forward (M-s)
    Search forward from cursor for given string.  Can be used inside
    keyboard macros rather than isearch-forward;  also useful if
    using notGNU remotely via a slow modem line.
    Ctrl-g (Windows/NT) should abort a lengthy search.

self-insert-command (SP .. ~, \200 .. \377)
    Insert typed character into current buffer at cursor.

set-autosave-inc (No default keybinding)
    Syntax: (set-autosave-inc 'value)
    Specify approximate interval between each auto-save, in seconds.
    Each time the number of autosave seconds has passed, notGNU checks
    for new buffer changes and writes an autosave file to disk for each
    changed buffer that has a file name. Using a value of 0 disables
	autosave.
    Default: ~15
    See also: set-autosave-on-lose-focus

set-autosave-on-lose-focus (No default keybinding)
    Syntax: (set-autosave-on-lose-focus 'bool) 
    Deterimines whether notGNU for Windows/NT/X11 autosaves all 
    changed buffers when focus is moved to another window. 
    See also: set-autosave-inc

set-bg-color (No default keybinding)
    Syntax: if X11 (set-bg-color 'color)
    Specify background color.  In Windows/NT, bring up a dialogue box;
    should not be executed from the startup file.  Not available in
    DOS or Unix curses versions.

set-bookmark (No default keybinding) [Windows/NT only]
    Set a named bookmark.  Like a 'register'; saves similar marking
    information (like a register), but allows a user defined name to be
    applied (vs selecting from a preset list of register names).
    See also: point-to-register, goto-bookmark
    
    Undo operations may lose bookmars; if a bookmark points to a
    line that is deleted, undo-ing the delete operation can not restore
    the bookmark to the pre-deleted state; destructive edits cause bookmarks
    to be adjusted, as best as possible, to a nearby line.
    
    A toolbar-only function; will not work from extended command line.

set-case (No default keybinding)
    Syntax: (set-case 'value)
    Specify whether replace-string and query-replace should do case
    insensitive search, and/or preserve case when replacing. The
    value given should be one of the following:
    
        00 - case insensitive search, case-match replace.
        01 - case exact search, case-match replace
        10 - case insensitive search, exact replace
        11 - case exact search, exact replace

    See also: query-replace, replace-string

set-default-mode (No default keybinding)
    Syntax: (set-default-mode 'mode)
    Toggle whether a mode is activated in subsequent buffers.
    The following modes are available:
    
        fill, modified, indent, C, overwrite.
    
    Default: All except 'C' off, 'C' on if buffername ends with one of
    ".c", ".h", ".cpp", ".hpp".

set-dos-colors (No default keybinding) [DOS only]
    Syntax: if DOS (set-dos-color 'n,n,n,n,n)  ; No spaces
    Set the supported foreground color types; the types are (in order):
    
        Normal   Text - the buffers characters
        Touched  Text - an editted line
        Selected Text - a selected region
        Echoline Text - prompt line
        WindowBackground
    
    Available choices are:
    
        1 = BLUE          9 = LIGHTBLUE
        2 = GREEN        10 = LIGHTGREEN
        3 = CYAN         11 = LIGHTCYAN
        4 = RED          12 = LIGHTRED
        5 = MAGENTA      13 = LIGHTMAGENTA
        6 = BROWN        14 = YELLOW
        7 = LIGHTGRAY    15 = WHITE
        8 = DARKGRAY
    
    NOTE: Only LIGHTGRAY and BLACK may be used for background color!
    
    The function prompts for the decimal choices for all colors, and
    prefills the current values into the echo line for you to edit.
    
    Any unsupplied value will be set to default, without checking
    whether the default makes sense when used with the supplied colors.

set-doubleclick (No default keybinding) [Windows/NT/X11/DOS]
    Changes left button double-click behavior of setting mark or
    selecting the word under the cursor. If no word found, mark is set
    anyway. When word selected via doubleclick, cursor (dot) is moved to
    end of word.
    Default: set mark

set-env (No default keybinding) [Windows/NT only]
    Display and allow editing of some relevant environment variables:
    "exe path", "cwd", "home", "MEMAKE", "MESHELL", "MEEXEC", "MELOG".
    
      * MEMAKE contains the command line to use for compilation.
        Default: "nmake" under DOS and Windows, and "make" under UNIX.
    
      * MESHELL contains the path to the command interpreter or shell.
        Default: "command.com" for Windows, or "cmd.exe" under NT, or
        "sh" for Unix/X11
    
      * MEEDIT specifies what editor 'notStart' invokes.  Default is
        'wnot.exe' for Windows 3.x; 'ntnot.exe' for Windows NT and
        Windows 95.
    
      * MEEXEC contains a format string used for spawning background
        processes such as compilation. Default formats are:
            Windows NT    "%s /c %s 1>%s 2>&1"
            Windows 3.x   "%s /c %s > %s"
    
      * MELOG contains the name of the log file. Default is meXXXXXX.log,
        where XXXXXX is a unique processid (or like).
    
    See the documentation for more details, especially if you are using
    an alternative command interpreter (such as 4dos or Ndos) or a
    compiler different from Microsoft C.

set-fg-color (No default keybinding) [Windows/NT/X11 only]
    Syntax: if X11 (set-fg-color 'color)
    Specify normal text color.  In Windows, bring up a dialogue box;
    should not be executed from the startup file.

set-fg2-color (No default keybinding) [Windows/NT/X11 only]
    Syntax: if X11 (set-fg2-color 'color)
    Specify touched text color.  In Windows, bring up a dialogue box;
    should not be executed from the startup file.

set-fg3-color (No default keybinding) [Windows/NT/X11 only]
    Syntax: if X11 (set-fg3-color 'color)
    Specify prompt.  In Windows, bring up a
    dialogue box;  should not be executed from the startup file.

set-fg4-color (No default keybinding) [Windows/NT/X11 only]
    Syntax: if X11 (set-fg4-color 'color)
    Specify highlight color.  In Windows, bring up a
    dialogue box;  should not be executed from the startup file.

set-fill-column (C-x f)
    Syntax: (set-fill-column 'value)
    Set fill column for line wrapping to specified value. If called
    interactively, current column is used, or one can be specified
    via M-x universal-argument (C-u).

set-fill-position (No default keybinding)
    Determines whether cursor position is retained after filling a
    paragraph. If set, cursor position is set to closest matching position
    in newly formatted paragraph.
    Default: FALSE.

set-fill-prefix (No default keybinding)
    set-Sets the character string to prepend to a region being filled;
    the string is defined from the left column of the current line
    to the current cursor position in that line.
    See also: prefix-region.

set-find-after-replace (No default keybinding) [Windows/NT]
    Controls whether clicking on Replace in the Find/Replace dialog
    will automatically do a Find Next.
    Default: Disabled.
    See also: string-search-replace

set-focus-click (No default keybinding) [Windows/NT]
    Controls whether clicking in the main window area to activate
    notGNU also moves the insert point. 

    Default: non-destructive; ie first click activates window;
    subsequent clicks move insert point, popup menu, etc.

set-font (No default keybinding) [Windows/NT/X11 only]
    Syntax: if X11 (set-font 'fontname)
    Specify text font. Only monospaced fonts should be used.
    In Windows, bring up a dialogue box;  should not be executed from
    the startup file.

set-gnu (No default keybinding)
    Syntax: (set-gnu 'bool)
    Specify whether GNU-style autocompletion on commands and
    filenames should be used.
    Default: 0  (turned off).

set-horizontal-scroll (No default keybinding)
	Syntax: (set-horizontal-scroll 'bool)
	Specify whether long lines should wrap in the display
	or whether the text window should scroll left/right.
	Default:1 (turned on, 0 is off)

set-isearch-wrap (No default keybinding)
    Syntax: (set-isearch-wrap 'bool)
    If a search is failing and you ask to repeat it by typing another
    `C-s', it starts again from the beginning of the buffer.  Repeating a
    failing reverse search with `C-r' starts again from the end.  This is
    called "wrapping around"; (wrapped) appears in the search prompt once
    this has happened. 
    Default: 0  (turned off).
    See also: isearch-forward (C-s), isearch-backward (C-r)
    
set-incremental-save-folder (No default keybinding)
    Syntax: (set-isearch-wrap 'M:)
	For Win32 only - allows setting a different root 
	disk for the creation of all incremental save files
	where the natural path to the file is N: ie this will not
	using \\machine\share syntax.  Caveat - on crash recovery,
	incremental save files are referred to in the log file
	by original file spec, processed to a temp name and then
	if the incremental folder has been set, modified further.
	Proper crash recovery requires set-incremental-save-folder to
	be called in the notgnu.st file to ensure consistency.

set-keypad (No default keybinding) [Windows/NT only]
    Syntax: (set-keypad)
    When NumLock is on, determines whether keys on the keypad are
    bindable via "global-set-key" (keynames are Kp-0 .. Kp-9, Kp-/,
    Kp-*, Kp--, and Kp-+), or if they run "self-insert-command",
    thus inserting "0", "1" etc. in the buffer.
    Default: bindable

set-kill-ring (No default keybinding)
    Specifiy number of killbuffers to put in the kill ring.  Each
    kill/delete uses a buffer; setting to 10 means that you can yank
    back 10 different kills.  Dependent on undo buffer allocation stack.
    Default: 10, Max is 20
    See also yank, yank-pop, undo-high-threshold

set-mark-command (C-@, C-space)
    Set mark at current cursor position. After subsequent moves with
    cursor, area between mark and cursor will then become the current
    region.
    See also: set-mark-select, kill-region, copy-region-as-kill

set-mark-select (No default keybinding)
    Syntax: (set-mark-select)
    Exactly like set-mark-command, except that immediately subsequent
    cursor movements with the arrow keys will cause the region between
    cursor and mark to be highlighted.  Any editing operation will
    disengage the highlight.

set-pending-delete (No default keybinding)
    Syntax: (set-pending-delete [1,0])
    This command controls pending-delete behavior. Pending delete
    causes a highlite region to be automatically deleted when a new
    character is inserted.  This is similar to Windows and X11 text
    widget controls.
    Default: disabled.
    See also: kill-region

set-popup-button (No default keybinding) [Windows/NT only]
    Syntax: (set-popup-button 'button)
    Specify whether to invoke the popup menu via left or right
    mouse button. Legal buttons are "l" and "r".
    Default: r
    
    The function that was originally bound to the button can be
    accessed by holding down the control key. For instance, the
    default binding for yank-from-clipboard is Ctrl + Right button.

set-reread (No default keybinding) [Not supported in DOS version]
	Syntax: (set-reread)
	Allows for setting boolean state on the current buffer; this
	state governs whether the buffer is reread (as needed)
	both when it becomes current and at an automatic interval 
	equal to the autosave timeout. 
	NOTE: if the buffer is set to auto reread, and dot is on the
	last line, each reread of the buffer will reset dot to the
	end of the buffer.

set-search-all-buffers (No default keybinding)
    Toggle search/replace behavior of asking to navigate all 
    open buffers.
    Default is TRUE
    See also: query-replace, replace-string

set-select-highlight (No default keybinding)
    Syntax: (set-select-highlight 'value)
    If value is "f", highlighted regions will be marked by changing
    the color of the text; if value is "b", marking is done by
    changing the background color.
    Default: b  (background)

set-tab-stop (No default keybinding)
    Syntax: (set-tab-stop 'value)
    Specify the maximum number of spaces between all tabstops.
    Legal range is 1 to 16, inclusive.
    Default: 8

set-text-color (No default keybinding)
    See set-fg-color.

set-touched-text-color (No default keybinding)
    See set-fg2-color.

set-use-tab (No default keybinding)
    Syntax: (set-use-tab 'bool)
    If 1, insert TAB characters when filling or invoking 'soft-tab',
    rather than spaces.
    Default: 0  (spaces used)

set-window-color (No default keybinding)
    See set-bg-color.

set-window-pos (No default keybinding) [Windows/NT/X11 only]
    Syntax: (set-window-pos 'x,y)
    Specify location of the notGNU window. Under X, subject to
    X window manager approval. Internally limits window origin
    position to within 10 pixels of right/bottom of display screen.

set-window-size (No default keybinding) [DOS/Windows/NT/X11 only]
    Syntax: if !DOS (set-window-size 'rows,cols)
            if DOS  (set-window-size 'rows)
    Specify the size of the notGNU window. In DOS version, rows
    restricted to 25, 43, or 50, and cols is fixed at 80.
    Default: Depends on notGNU version.

set-window-title (No default keybinding) (Windows/NT only)
    Replaces the text of the window title bar; does not effect the
    display of the time in the title bar. 
    See also: display-time
    
set-windows-clipboard-active (No default keybinding)  (Windows/NT only)
    Controls whether mouse selection/copying/cutting goes to the
    internal notGNU clipboard only (default) or also to the windows
    clipboard.

set-write-cr (No default keybinding)
    Specify whether to insert a CR before each newline character
    when writing the current buffer to file.
    
    CR mode will be set based on the line terminator found in an
    existing file.  CR mode can be defaulted for new buffers/files by
    calling (set-write-cr 'y) [or 'n] in the notgnu.st file. CR mode
    will be set regardless of the previous rules if the file extension
    is defined as part of CR mode.  See add-file-extensions for a
    description of built-in mode associations.

    See also: add-file-extensions

set-yield-rate (No default keybinding) [Windows/NT only]
    Syntax: (set-yield-rate 'milliseconds)
    Sets the yield-rate for I/O and other lengthy operations.
    Default: 500 for 16 bit notGNU, 2000 for 32 bit notGNU.
    notGNU will yield the processor after 1/2 second or 2 seconds,
    respectively, based on these defaults.
    
    Legal range is 55 to 10000;  very large values essentially disables
    yielding.  Smaller numbers will make the computer appear to run more
    smoothly between tasks, but will proportionally increase the total
    amount of time it takes to perform the operation.
    
    During a yield, notGNU can process events and react to an abort
    command if applicable.
    See also: isearch-backward, isearch-forward.

shell-command (No default keybinding)
    Syntax: (shell-command 'command)
    Executes the command that COMSPEC (DOS/Windows/NT) points to, or the
    MESHELL environment variable points to, or COMMAND.PIF, or
    command.com/cmd.exe, in that order of priority, with "/c command" as
    argument under DOS/Windows, or "command" as argument under Unix/X11. 

shell-window (C-z) (Not available under X11)
    Executes the command that that COMSPEC (DOS/Windows/NT) points to,
    or the MESHELL environment variable points to, or MESHELL.PIF, or
    command.com/cmd.exe(DOS/Windows/NT), in that order of priority, with
    no arguments, in a separate window. Under Un*x curses, suspends the
    editor to return control to parent shell.

shift-region-left (No default keybinding)
    Move lines in region to left (removing leading whitespace only);
    each line that intersects the region will be shifted regardless of
    point or mark offset into the line.
    See shift-region-right.

shift-region-right (No default keybinding)
    Move lines in region to right (inserting leading whitespace);
    each line that intersects the region will be shifted regardless of
    point or mark offset into the line.
    See also: shift-region-left.

show-env (No default keybinding)
    In the minibuffer, print home and executables directories.
    See also: set-env

show-current-position (Default true) (No default keybinding)
	Determines if notGNU shows current line number or 
	position (%) in modeline. Turning this off increases 
	performance in very large files.  Disables scrollbar in
	windowed versions.

show-filename (No default keybinding)
    In the minibuffer, print the name of the file currently being
    edited.

show-region (No default keybinding)
    Highlight current region.

show-toolbar (No default keybinding) [Windows/NT only]
    Displays the currently defined toolbar.  Normally accessed via
    menubar choice Properties/Toolbar/Show Toolbar.  State saved when
    Properties/Save Settings chosen.

shrink-window (No default keybinding)
    Decrease the size of the current window pane by one line. If
    called interactively with universal-argument (C-u), decrease by
    that number of lines.

simple-buffer-diff
    Not available at this time.

soft-tab (No default keybinding)
    Insert spaces until the next tab stop.

split-window-vertically (C-x 2)
    Split current window pane into two equally sized screen windows,
    separated by the modeline of the top pane.

start-kbd-macro (C-x ()
    Start recording key sequence. Subsequent keys will be stored
    in a macro, until M-x end-kbd-macro ("C-x )") is called. The
    recorded macro can then be executed (multiple) times via
    M-x universal-argument and M-x call-last-kbd-macro.
    See also: end-kbd-macro, call-last-kbd-macro, universal-argument.

name-last-kbd-macro (No default binding) [Not on DOS]
    Name the currently defined keyboard macro; created by using
    start-kbd-macro.  Naming the current keyboard macro causes it to be
    copied to an internal list of keyboard macros. The macro remains in
    the macro list for the remainder of the session. 
    
    Defining a new macro w/o first naming the current macro will erase
    the current macro from memory.
    
    See also: save-kbd-macros, pop-kbd-macro, call-last-kbd-macro

string-rectangle (No default keybinding)
    Insert a string repeatedly between mark and cursor, with the leftmost
    one of the two defining the start column. If the region is defined
    with upper right and lower left corners, insert the string only at
    empty lines; if upper left and lower right, overwrite existing text
    also in non-empty lines.

string-search (No default keybinding) [Windows/NT only]
    Displays Microsoft common dialog for searching for a string. Like
    search-forward/search-backward/search-again.
    Ctrl-g (Windows/NT) should abort a lengthy search.

string-search-replace (No default keybinding)  [Windows/NT only]
    Displays Microsoft common dialog for search/replacing a string.
    Like query-replace/replace-string.

strip-trailing-blanks-in-region (No default keybinding)
    Remove blanks/whitespace from end of all lines in region.

sort-region-lines (No default keybinding) [Not available for DOS version]
    Sort all lines in region; sort comparitor used is strncmp() from C
    runtime library. Sorting large regions is slow; on Windows/NT,
    notGNU will do cooperative processing switching during a sort, but
    a sort can not currently be terminated with a ctrl-g.

sort-region-lines-caseless (No default keybinding) [Not available for DOS version]
    Similar to sort-region-lines but case-independent line content is used.

switch-to-buffer (C-x b)
    Display another existing buffer in current screen window.

switch-to-buffer-other-window (C-x 4 b)
    Display another existing buffer in another window pane.

tabify (No default keybinding)
    Converts spaces to TABs between cursor and mark.
    See also: set-tab-stop

toggle-abbrev-insert (No default bindings)  [Not on DOS]
    Toggles whether the expand-abbrev bound key is also inserted into
    the buffer. For example, <space> is the default binding in
    abbrev mode for expand-abbrev; if you toggle-abbrev-insert to on,
    then hitting <space> will expand the string and then append a space
    character as well.
    Default: off
    See also: expand-abbrev, add-abbrev

toggle-beep (No default keybinding) [Un*x versions only]
    Toggles state of beep flag; determines if spawned
    background job should cause a beep on completion.

toggle-check-file-timestamp (No default keybinding)
    Toggle state of file timestamp checking. When enabled, each
    operation that would modify a buffer checks see that the file is
    not newer than the buffer content.  Useful if multiple tasks
    have access to the same files (i.e. a network accessable drive or
    a multi-tasking operating evironment). Slow on floppy drives.
    Default: no.

toggle-doublespace-on-fill (No default binding)
    Toggle whether fill code doublespaces after punctuation; if
    existing double spaces and line break after punctation, notGNU will
    optionally doublespace after punctuation. 
    See also: fill-paragraph
    Default: yes.

toggle-extended (No default keybinding)
    Control whether M-x preloads the last executed extended command
    into the echo line.
    Default: off.

toggle-file-read-only (No default keybinding) [Windows/NT/DOS only]
    Toggle whether the current buffer and disk file should be 
	marked read-only (no editing allowed).  Toggles the file state
    from existing state, ie if filereadonly now, using this function
	will flip state. Subject to OS permissions.

toggle-flush-undo (No default keybinding)
    Toggles state of undo stack after file save. If on, clears undo
    information for a buffer when buffer is written.
    Default: on

toggle-minimize-job-window (No default keybinding) [Windows/NT only]
    Determines whether spawned jobs will display as a minimized icon
    or normal application-defined size; useful only for shell-commands, not
    win-exec commands.
    Default: on == minimize

toggle-just-write-newline (No default keybinding)
    Obsolete.

toggle-make-backups (No default keybinding)
    Toggle whether notGNU should back up old files when saving.
    Default: yes.

toggle-modified-state (M-~)
    Toggle whether a buffer should be marked as modified (Symbolized
    with "*") or not.  May clear undo stack.

toggle-mouse-paste-where (No default keybinding)
    Toggle whether the right mouse button pastes at cursor or at
    mouse pointer.
    Default: pointer

toggle-read-only (C-x C-q)
    Toggle whether the buffer should be marked read-only (no editing
    allowed). 
    Default: no.

toggle-set-default-filename (No default keybinding)
	notGNU by default attempts to prevent disaster by giving all new
	unnamed buffers a file name (using the current directory, the buffer
	name and the extension ".not") so that in the event of a disaster,
	the buffer will have been autosaved to prevent complete loss of
	data.  Use this command to disable that feature.

toggle-show-linenumber (No default keybinding)
    Toggle whether line and column number should be displayed in
    modeline. Depends on show

toggle-show-touched-lines (No default keybinding)
    Toggle whether modified lines should be displayed in a different
    color.  For supported versions, CURSES/Unix dependent on the
    curses library used.
    See also: set-fg2-color.
    Default: yes.

toggle-smooth-scroll (No default keybinding)
    If on, moving dot off the top or bottom of a window (pane) will
    scroll by 1 line else by 1/2 window (pane) height.
    Default: off.

transpose-chars (C-t)
    Swap position of character to the left of cursor and character
    under cursor; if not at end of line, move one character forward.

transpose-words (Esc-t)
    Swap words; if cursor on first char, or between words, swap this
    and previous words.  Otherwise, swaps this and following word. Will
    cross lines. Cursor set at end of second word.

toggle-visible-bell (No default keybinding) [Windows/NT only]
    Deterimines whether a beep or titlebar flash is to be used for an
    alert.

undo (No default keybinding)
    Multilevel undo.  Change the text and editor state back to
    what it was before last operation. Multiple undo's can be
    executed in a row to go back several levels.
    See also: undo-high-threshold

undo-high-threshold (No default keybinding)
    Syntax: (undo-high-threshold 'value)
    Specify the maximum number of undo's available. The higher the
    number, the higher memory usage.  Setting the value to 0 will
    disable undo, and also disable the kill ring/yank-pop.
    Default: 100, DOS max == 500 , others no max.
    See also: set-kill-ring

universal-argument (C-u)
    Specify an argument for the next command; usually the number of
    times to execute that command.  For instance, "C-u 79 -" will insert
    79 hyphens in the text. Limited to sizeof(int).

unix-exec (No default keybinding)
    Spawn a unix process without waiting for it to finish.

untabify (No default keybinding)
    Convert TABs to spaces between cursor and mark.

upcase-region (C-x C-u)
    Converts all characters between cursor and mark into uppercase.

upcase-word (M-u)
    Convert the following word, or the rest of the current word,
    into uppercase.

untouch-changed-files (No default keybinding)
	Reset internal buffer timestamps to ignore file changes
	from external tools. When notGNU detects that another
	program has touched a file since notGNU loaded it, it
	prompts for a re-read (or automatically reloads if set).
	This resets the timestamps but does not reload or change
	the buffer contents.

view-file (No default keybinding)
    Load a file as with find-file; mark buffer read-only.
    See also: find-file, toggle-read-only

what-cursor-position (C-x =)
    In the minibuffer, display information on the current character
    and offset from beginning of buffer in bytes, percent, lines,
    and columns.

what-line (No default keybinding)
    In minibuffer, display current line and column number.

windows-help (No default keybinding) [Windows/NT only]
    Displays the .hlp file.  Normally accessed off
    menubar Help/windows-help choice.

write-abbrev-file (No default keybinding) [Not on DOS]
    Save abbreviation definitions to a file. Default file is
    notgnu.abr written/read from your home directory.
    See also:add-abbrev, read-abbrev-file

win-exec (No default keybinding)
    Spawn a Windows program without waiting for completion.

win-dired (No default bindings) [Windows/NT only]
    Interactive mode that lets you edit, view, or delete
    files in a specified directory; directory selection is
    via a Windows dialog box for ease of directory selection/navigation.
    See also: dired.

win-hints (No default keybinding)  [Windows/NT only]
    Syntax: (win-hints 'bool)
    Controls whether notGNU peridocially displays a 1 line hint message
    in the echo line.
    Default: True

win-list-buffers (No default keybinding) [Windows/NT only]
    Open a dialog box containing list of available buffers. Buffers can
    be deleted from the dialog box; navigation thru buffers can be
    accomplished by double clicking on a selection, or pressing 'ok'
    after selecting a buffer.
    
    The order of buffers listed in the dialog is alphabetical, and does
    not neccessarily reflect the order the buffers would be traversed in
    using "M-x next-buffer".  The reasoning here is that it's easier to
    find a buffer if the name is in order.
    
    Dialog is modeless and can be invoked from the startup file.
    See also: list-buffers.

win-list-buffers-on-top (No default keybinding) [Windows/NT only]
    Sets flag controlling whether buffer list dialog remains on top of
    main notGNU window (ie a child of the main window), or if the
    dialog can be pushed under the main window. 
    
    If the dialog is not a child, ie it can be pushed under the main
    window, then alt-tab can navigate to the dialog box- usefull for
    power keyboard users.
    
    See also: win-list-buffers

write-file (C-x C-w)
    Save the contents of current buffer to a file; prompt for filename.

    Will query you to overwrite if a file of that name already exists
    on the disk. 
    
    Will warn you if the write-to name is equal to the name of a file
    already open (in an active buffer) in the editor.  You will be
    prompted to choose a new name, or quit the write-file operation.

write-region (No default keybinding)
    Like write-file, except only writes the current region. Does not
    rename the buffer.
    
    See also: write-file.

yank (C-y)
    Insert text from kill buffer at cursor position. If GNU mode is
    turned on, do not accept universal-argument for
    repeated yanking.
    See also: set-gnu

yank-from-clipboard (C-x g, Ctrl-Right mouse button) [Windows/NT/X11 only]
    Paste text from the Windows clipboard or X11 cutbuffer 0 at
    cursor position.

yank-pop (M-y)
    Performs 'yank' then cycles thru kill ring and replaces yank with
    content of previous kills/deletes.
    See set-kill-ring, yank.

yank-rectangle (No default keybinding)
    Inserts text from the rectangle kill buffer into rectangle at
    cursor.

zap-to-char (M-z) [Not available on DOS]
    Kill up to and including ARG'th occurrence of char.  Reads a
    character and kills from point up to (but not including) the ARG'th
    occurrent of the character in the buffer.  A numeric argument acts
    as a repeat count.  A negative argument means to search backward and
    kill text before point. 

    Internally, notGNU executes set-mark-command, searchs for the
    requested character (ARG'th times) and if successful, does a
    kill-region. On failure, point is restored.
    
    See universal-argument, negative-argument, digit-argument.
