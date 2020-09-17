Change Log  (month/day/year) Boy has time flown...

1/30/2008
	sort-region-lines-caseless: small extension on existing code for
	the ever stalwart Jeff W.  This lead to the discovery of the
	untrustworthy TOUPPER/TOLOWER macros on Windows! Gack.

3/19/2006
	If no backup file exists, reset needs-backup bit.  This means if
	you save a file, creating a backup such that deleting this backup
	outside of notGNU has the result of acting like no backup had
	been made before and notGNU will create a new backup on next save.

01-27-06
	Bug fix for the "feature" on the 16.

01-16-06
	All for me - windows versions only - if a buffer was readonly,
	remember it when saving winstate-to-file and restore that state on
	reload. Little things can make you happy.

11-28-2005
    Bug fix with win-list-buffers; dialog string name collision caused
	create error 1814 (lovely and useless error code). Thanks J.E.

07-12-2005
    Silly insert-buffer-name command.  Also Win32 only: read-files-from-buffer.
    Bug fix reported by David W regarding bad paths d:folder\file
    would fail but d:\folder\file would not. (windoze boxes) 

04-22-2005
    Win32 only - save window state to file on each incremental file
    log (quick trick to reconstitute last saved state on crash)

11-16-2004
    Hacky feature, Win32 only, that allows the incremental save files
    to be created in a different root folder.  IE change N: to C:
    (results in C:\inc root) when N is a network (or other slow device)
    in order to make incremental saves less painful.  Use 
    set-incremental-save-folder.

8-20-2004
    Crash fix (windows versions) using pop-and-execute-kbd-macro when
    a file has been changed outside the editor.  Quick & dirty fix 
    forces you to acknowledge file timestamp change before running
    macro.  Macros across multiple buffers may still prompt...
    
8-13-2004
    Complete hack - well the reason is anyway.  Add 'untouch-changed-files'
    which spins through all buffers (except auto-reread set) and
    updates the timestamps to reflect disk time.  Needed because Samba
    on Fedora Core 2 touches the 'modified' time vs the 'access' time
    when a file is read! Gack. Better to just ignore this... 

8-1-2004
    Chris requested a way to reset the notGNU property defaults; Win16
    and Win32 notGNU on Win95 just nuke the whole ini file for you.
    Win32 versions on 98 and above clean out their registry settings
    for the current user.  Noop on non-windows boxes of course.

3-17-04
    Win32 only - make the mouse wheel properly deal with acceleration.

12-16-03
    32 bit Windows only - up'ed the size of the buffer popup menu (from
    the toolbar) so it fits more items.  Also some minimal! sizing
    based on notGNU window size.
    
    Added a way (on request of a user) to turn off the feature that 
    automatically saves modified, unnamed (ie no file name) buffers to 
    <current-directory>/<buffer-name>.not; this feature was added to
    prevent complete data loss on notGNU/Windows crash or other
    unfathomable event (see 09-12-02 note below).
    
11-15-03
    MS Windows versions attempt to recovery from "Display Unusable"
    sizing errors to a default size to stop infinite message box hell.
    
06-30-03
    Store notGNU's .ini file properties in the windows registry (32bit
    only).  This is to handle folks who don't have access to their own
    machine's windows' folder.  Thanks Jeff for forcing me to do this.. ;)

05-01-03
    goto-char for Dave Brown. Not in DOS version.

11-04-02
    set-tab-on-io for tab on read/untab on write. Not DOS version.

11-03-02
    George at it again - bug in saving macro files to disk, fixed.
    Functions effected not in DOS version.

10-31-02
    MS Windows versions: fix broken horizontal scrollbar/save setting/
    startup - would crash :(  Thanks George for reporting that nasty
    trick.

09-16-02
    Hopefully trap a naggin hangup with Windows' versions drag&drop
    that would hang up notGNU if other events happened during file
    read in..

09-12-02
    Modify the method which "scratch.not" is constructed - ie if you
    open notGNU and just start typing without saving or creating a file
    name, notGNU will autosave the current buffer with a generated name
    into the current working folder.  Thanks to Helge M for pinging me
    on the bad behavior and inadvertantly discovering something else
    needing a change - the "Open" dialogs under windows didn't use the
    current working directory.
    

09-04-02
    execute-line, execute-region for Windows 32 bit versions.
    Think of it as a quick way to get info from a buffer to the echo line
    for calling the Win32 API ShellExec.

08-28-02
    Discovered and fixed a very! old memory corruption bug which would 
    be exposed when using long file names and
    save-window-state-to-file.  Went on a hunt for other possible bugs
    of that kind in the code (for those who care, stack variables were
    declared vs using heap and these could be overwritten by long file
    names being copied into them).

    Fixes applied only to non-DOS versions.

07-08-02
    User control over the dancing icon (Win32 only).  See "Properties"
    menu for this new switch.

06-15-02
    Disable message reading (Windows versions) when processing drag/dropped
    files as that can mess up notGNU and the dropper application(sigh).

02-15-02
    Minor refresh fix to the file menu "reread-all-changed-files"
    item. Minor icon tweakage for 32 bit Windows. Also, 32 bit 
    Windows/X11 versions now support max of 300 columns - I don't have 
    a display this wide but someone does. :)

01-21-02 
    Fix problems with folder names with whitespace; specifically
    the 32 bit Windows version on XP (and Windows 2k?) defaults to 
    using "C:\Documents and Settings\<Username>" (who at MS thought 
    this was a good way to name folders??) and then temp folders 
    and spawned task logfile would fail in the shell command.

    Fixed buffer evaluation code so that errors are properly
    echoed into the error buffer and the line number displayed 
    for lines which confuse notGNU. (Loading the startup notgnu.st 
    file and running load-buffer or load-file for example).

    Misc other tweaks to UI but nothing major.  Wes has some
    un*x fixes but they haven't been received yet....

    Note - new packaging bits:
        egrep16.exe for wnot.exe courtesy of Chris Dunford
        (renamed for use by notGNU)

        egrep32.exe - renamed egrep.exe from an NT resource kit which
        I have since lost track of; similar rename for ntnot.exe

    Executing egrep inside notGNU: esc-x egrep brings up 'egrep
    command' with default flags required by notGNU to create a log file
    it can parse. I suggest running the egrep you get outside in a
    shell window to see other useful flags as in ie 

        egrep32 -i means ignore case  (defaults to case sensitive)

    where as

        egrep16 -c means case sensitive (defaults to ignore case)


    Both egrep programs let you append more flags in the command
    line notGNU prepares.

    Some folks having problems with mouse wheel on NT; works for 
    me fine (32 bit version) on Win2k and WinXP so I'm at a loss 
    for a bit as I have no NT machine around at the moment. See 
    previous version (10-6-01)... hmmm

    Save-window-state-to-file (and derivatives) ensure that
    .win is the file extension on the file saved (Windows versions).

10-6-01
    Pop main window to top on drag&drop and message box display.
    (32 bit MS Windows only) and add support for mouse wheel (finally!)
    Tested only on Win2k at this time.

5-4-00
    Modify tabify code to use tabs or whitespace as controlled
    by set-use-tab.

11-2-99
    disable-autosave-on-buffer to kill autosave on a given
    buffer. Useful for slow drives (floppy, network).

10-12-99
    Fix to clear preload line after macro executes.
    Fix sometimes-crash in win16 version on exit.

9-7-99
    compile/egrep/etc commands reuse the same open log
    window vs bouncing the window around the screen (Windows
    95/98 and NT)

8-18-99
    kill-emacs was beeping on exit; reported by Nick. Was due
    to invalid return, no biggie.

8-14-99
    George Y. found a bug using the mouse in DNOT that
    would mess up the editor. Hopefully fixed now. Thanks
    George!

7-24-99
    New command del-file-extension; uses similar syntax
    to add-file-extension. Does the obvious.

6-17-99
    Update doc to point at new website.

6-16-99
    Repackage the wnot and ntnot zip files; notstart.exe was
    corrupt!

6-14-99 
    notstart did stupid things when no file passed in; hopefully
    addressed 16 notGNU crash when as icon started by notstart (not
    tested under windows 3.1)

5-9-99
    Yank was putting mark one char to the left when
    yanking text into the middle of the line.

5-3-99
    Fixed menubar for windows' versions; Alt-m now drops
    the Macros menu when accelerators enabled.

4-1-99
    No joke! Work merged from Wes N. to support iconfiy window
    on X11, support for keypad keys, etc.  Work done on Linux;
    additional cross-notGNU behavior is a prompt on prefix-region
    if you haven't yet specified a string.  Some path changes
    and a new makefile for Linux - Thanks Wes!

1-15-99
    Change default behavior regarding name case when dealing
    with case preserved filesystems under Windows; ntnot will
    nolonger 'neutralize' the pathname case (end filename case
    handling is not changed).  If you want the old (downcasing
    path) behavior, use the neutralize-case command.

    Also added (ughly) hack of recognizing a Samba mounted
    disk (from NT) to make notGNU think the disk can properly
    handle long file names.

11-19-98
    Microsoft Windows versions only: add more code to detect
    ctrl-0 thru ctrl-9. No modifiers supported (ie no ctrl-shift-2)
    as distinct from ctrl-2.

11-9-98
    Change how win-list-buffers dialog refreshes since it messed
    with the kill ring.

8-11-98
    Unpleasant hardcoded check for control-slash and control-bar as well
    as control-backslash while in the code (Windows only). New chars are
    named C-\, C-/ and C-|.

7-24-98
    Win32 version only (I hope) - hang on auto complete.

7-17-98
    Revert to using appath (on Windows) for location of .fun, etc
    files vs using NOTGNU_LIB as for un*x

7-13-98
    Bug in restore-window-state-from-file; if one of the buffers
    currently open is listed in the window state file, and has edits,
    notGNU would 'hang' trying to ask the user if the changes should be
    lost. This would happen when the restore was invoked from the menu,
    thus bringup up the windows dialog box and making the main window
    lose focus.

6-4-98
    If GNUlike is set, try not to unscroll (left/right) when doing
    pageup/pagedown.  This may not be appropriate...? Comments welcome

4-11-98
    Stupid focus-loss echoline refresh bug (windows versions). The fix
    stops the echoline from improperly redrawing but the real cause has
    not been found :(

3-5-98
    Kill display of marked region for DOS due to scroll bug

2-24-98
    Refresh for pending-delete DOS version

2-23-98
    16 bit notGNU wasn't liking being started by notstart...boom
    
2-20-98
    Crash fix in 16 bit notGNU on windows-help command. Fix problem
    with sorting some kinds of regions.

2-9-98
    Integrated modified fill behavior; moved version to 1.94beta

1-16-98
    set-reread added: poor mans "tail -t" unix command.

1-9-98
    show-current-position added: shut down line number and %
    indicators in modeline. Disables scrollbar; useful for VERY
    large files or SLOW machines.

12-27-97
    Bitmap for reread-all-changed files; allows the command to be put
    into the toolbar

12-05-97
    Fix ctrl-g response to "File exists; Overwrite..." message.

11-28-97
    Delete-blank-lines wouldn't delete blank lines if cursor on a
    non-blank but there were no previous blank lines, only following.
    
11-20-97
    Allow proper "All Files" choice in file open dialogs.

11-14-97 
    Bug in set-popup-button (it printed the wrong message!) Thanks
    to jmequin@tif.ti.com for uncovering it...

11-6-97
    J.K.Soutter@lboro had a fill bug. I think it's fixed, but he's
    gonna be the tester :)
    
11/5/97
    Warn user that incremental saveout time exceeds the stupid integer
    size in 16 bit code. Sometime this should be made a long....

10-30-97
    Restore-window-state nukes an unused scratch buffer

10-25-97
    Change default popup. 

10-24-97
    Yet another message prompt buglet...thanks James!

10-23-97
    Mini UI addition for Windows: add set-search-highlight command

10-21-97
    Pop-window-to-top (Windows 3.1*, 95, NT only) when being asked a
    yes/no or y/n question.
    
10-17-97
    Modifiy search (search,regex) functions so regex processing can treat
    "empty" search strings in specific ways, ie support regex search of
    "^" and "$" w/o any other chars as "find begin/end of line". A bit
    of overkill perhaps...but what the heck
    
10-6-97
    Change code so if toggle-flush-undo is off (ie undo not cleared on
    buf save) that saving, then undo-ing till all the way back will now
    mark the buffer as modified

    Changed the version number to 1.93 for housekeeping reasons.
    
10-1-97
    Recompiled 32 bit notGNU to fix optimization bugs which occurred
    (???) with the older compiler. Noted symptom was failure to be able to
    drop files onto notGNU from a network share that had spaces in the
    name! Rezipped all files. 

8-22-97
    If file modified outside editor, prompt indicating change offers to
    reread file or force timestamp sync to disk; previous version
    didn't offer the reread.

7-30-97
    Toolbar not showing up when notGNU launched via cmdline with a
    large file - fixed.

6-25-97
    Change cursor location after transpose-words. It just feels more
    correct here.
    
6-4-97
    Fill in open file dialog file filter with file extensions
    registered with current buffer mode (windows only)

6-1-97
    Apply user-specified margins to left, top & bottom (right side still
    clips on character-line length). NOT TESTED

5-30-97
    More graceful exit from word-wrap (fill-p*) commands when word too
    long. When it fails in the middle, you can recover with undo.

    Handle extended characters in file names from file-open dialog, but
    may require using wildcards since the input line code doesn't deal well
    with the extended characters.

5-9-97
    Fix warning about freeing static memory when loggin message comes
    up.  Be smarter about auto complete with files starting with '.'
    in Windows 95/NT/Unix.

5-7-97
    Fix write-file on readonly buffer - it didn't really save the new
    file even when you said to.

4-25-97
    Hack for potentially weird system configs and " chars

4-16-97
    Cursor during undo cleanup.

4-1-97
    Deal with open dialog triggering 'reread' prompt in echo line. No
    April fool but the blizzard was! (Windows versions)

3-29-97
    Wheelmouse support with 32 bit notGNU inserted. It's not working yet though

2-19-97
    Make sure the timing issue bug fix was actually built into all the
    binaries 

2-17-97
    Rebuild ntnot.exe with msdev 4.1 vs msvc2.0...
    Deal with timing issue and notStart...
    Message on buffer pruning

2/14/97
    * in win-buffer-list dialog to mark modified files

2/13/97
    Put message handling to notstart in a thread to help? keep notgnu
    from hanging when 16 bit subsystem is busy (Win95, NT)

2/12/97
    make "set-autosave-inc 0" really not save the changed buffers, unless
    focus change (windows versions) and set-autosave-on-lose-focus is set.

12/10/96
   restore-window-state-from-file was ignoring the input file name when
   invoked via the notgnu.st file on startup, or in a
   load-file/load-buffer situation. Remember, the param must have a full path.
  
12/5/96
   'k' in bufferlist window leaves dot at reasonable place  

