[org 0x100]
jmp start

sudoku1 db '   _____ _    _ ____   ____   _  __ _    _ ',0
sudoku2 db '  / ____| |  | |  _ \ /  __ \| |/ /| |  | |',0
sudoku3 db ' | (___ | |  | | |  | | |  | |   / | |  | |',0
sudoku4 db '  \___ \| |  | | |  | | |  | |  <  | |  | |',0
sudoku5 db '  ____) | |__| | |__| | |__| | . \ | |__| |',0
sudoku6 db ' |_____/ \____/|_____/ \____/|_|\_\ \____/ ',0

grid1 db '  _______________________',0
grid2 db ' |       |       |       |',0
grid3 db ' |   1   |   2   |   3   |',0
grid4 db ' |_______|_______|_______|',0
grid5 db ' |       |       |       |',0
grid6 db ' |   7   | SUDOKU|   9   |',0
grid7 db ' |_______|_______|_______|',0
grid8 db ' |       |       |       |',0
grid9 db ' |   4   |   5   |   6   |',0
grid10 db' |_______|_______|_______|',0

; "You Lost" ASCII Art
lost1 db '  __   ______  _    _   _      _____   _____  ________ ',0
lost2 db '  \ \ / / __ \| |  | | | |    /  _  \ /  ___||__   ___|',0
lost3 db '   \ V / |  | | |  | | | |   |  | |  |  (__     |  | ',0
lost4 db '    | || |  | | |  | | | |   |  | |  |\ __  \   |  | ',0
lost5 db '    | || |__| | |__| | | |__ |  |_|  | ___)  |  |  | ',0
lost6 db '    |_| \ __ / \____/  |____| \_____/ |_____/   |__| ',0

skull1 db '      ______      ',0
skull2 db '   .-        -.   ',0
skull3 db '  /            \  ',0
skull4 db ' |,  .-.  .-.  ,| ',0
skull5 db ' | )(_o/  \o_)( | ',0
skull6 db ' |/     /\     \| ',0
skull7 db ' (_     ^^     _) ',0
skull8 db '  \__|IIIIII|__/  ',0
skull9 db '    \ \IIII/ /     ',0
skull10 db '     `--------`   ',0


win1 db '____    ____  ______    __    __   ____    __    ____  __  .__   __.    __ ',0
win2 db '\   \  /   / /  __  \  |  |  |  |  \   \  /  \  /   / |  | |  \ |  |   |  |',0 
win3 db ' \   \/   / |  |  |  | |  |  |  |   \   \/    \/   /  |  | |   \|  |   |  |',0
win4 db '  \_    _/  |  |  |  | |  |  |  |    \            /   |  | |    `  |   |  |',0
win5 db '    |  |    |   --   | |   --   |     \    /\    /    |  | |  |\   |   |__|',0
win6 db '    |__|     \______/   \_____ /       \__/  \__/     |__| |__| \__|    ()',0

trophy1 db '    ___________   ',0
trophy2 db '   .======.   ',0
trophy3 db '   .-\:      /-.  ',0
trophy4 db '   |(|:.     |) | ',0
trophy5 db '    -|:.     |-   ',0
trophy6 db '     \::.    /    ',0
trophy7 db '       ::. .      ',0
trophy8 db '        ) (       ',0
trophy9 db '      .   .     ',0
trophy10 db '      -------    ',0




message1 db 'Welcome to SUDUKO'
message2 db 'Easy Level(E)'
message3 db 'Medium Level(M)'
message4 db 'Difficult Level(D)'
length  dw 17, 13,15, 18 

yourScore: db 'Your score: ',0


changeState: db 0
enteringNumberFlag :db 0
count:db 0
mistakes: db 'Mistakes: 0/3',0
Score: db 'Score:',0
timer: db 'Timer:  00:00',0
printsudoko: db 'SUDOKO', 0
printLevel:db 'LeveL :',0
printEasy:db'Easy',0
scrollState: db 1  ; 0 means the next scroll will be down, 1 means the next scroll will be up
printUndo:db '----> U for Undo',0
printNotes:db '----> N for Notes',0
takeInputText:db'Enter the coordinates of box: ',0
AskForNum : db   'Enter the number:                ', 0
Num_Input: db 0
currentScore dw 0
NotesEnteredSuccessfuly:db 'Note Successfull        ',0
CouldntEnterNote: db'Couldnt Note            ',0

Level : db 'M'
Easy : db 'Easy', 0
Medium : db 'Medium', 0
Difficult : db 'Difficult', 0
easyBorad : db'---26-7-1'
            db'68--7--9-'
            db'19---45--'
            db'82-1---4-'
            db'--46-29--'
            db'-5---3-28'
            db'--93---74'
            db'-4--5--36'
            db'7-3-18---'

easySol :   db'435269781'
            db'682571493'
            db'197834562'
            db'826195347'
            db'374682915'
            db'951743628'
            db'519326874'
            db'248957136'
            db'763418259'

MediumBorad : db'1--6-8---'
            db'58---97--'
            db'--7-4---8'
            db'37----5--'
            db'6--5----4'
            db'--8----13'
            db'-3--2----'
            db'--98---36'
            db'7--3-6-9-'

MediumSol : db'123678945'
            db'584239761'
            db'967145328'
            db'372461589'
            db'691583274'
            db'458792613'
            db'836924157'
            db'219857436'
            db'745316892'

DifficultBoard : db'---6--4--'
            db'7----36--'
            db'----91-8-'
            db'4--------'
            db'-5-18---3'
            db'---3-6-45'
            db'-4-2---6-'
            db'9-3------'
            db'-2----1--'

DifficultSol : db'581672439'
            db'792843651'
            db'364591782'
            db'438957216'
            db'256184973'
            db'179326845'
            db'845219367'
            db'913768524'
            db'627435198'

board: db'--74916-5'
       db'2---6-3-9'
       db'-6---7-1-'
       db'-586----4'
       db'--3----9-'
       db'--62--187'
       db'9-4-7---2'
       db'67-83----'
       db'81--45---'
Actual_board:db'387491625'
            db'241568379'
            db'569327418'
            db'758619234'
            db'123784596'
            db'496253187'
            db'934176852'
            db'675832941'
            db'812945763'



oldTimerIsr: dd 0
TimerInterval:db 0

NotesInput : db 1

NotesFlag: db 0

NotesCoordinatesFlag: db 0
NotesNumInput: db 0

rowTracker:db 1
columnTracker:db 1
TakeInputFlag:db 1
numCards : db'999999999'

mistakeOccured:db'Mistake Occured        ',0
BoxAlreadyFilled:db'Box Already Filled     ',0

moveSuccessFul:db 'Move was successfull     ',0

UndoSuccessFul:db 'Undo was successful                       ',0

undoCoordinates: dw -1

NOTE_C5  equ 523   ; C5 note
NOTE_E5  equ 659   ; E5 note
NOTE_G5  equ 784   ; G5 note
NOTE_A5  equ 880   ; A5 note
NOTE_C6  equ 1047  ; C6 note

; Sound types with musical frequencies
MOVE_SOUND_FREQ    equ NOTE_C6  ; Crisp higher note for movement
SCROLL_SOUND_FREQ  equ NOTE_G5  ; Medium note for scrolling
CORRECT_MOVE_FREQ  equ NOTE_A5  ; Pleasant note for correct moves
WRONG_MOVE_FREQ    equ NOTE_C5  ; Lower note for mistakes
GAME_START_FREQ    equ NOTE_E5  ; Welcoming note for game start
GAME_END_FREQ      equ NOTE_G5  ; Conclusive note for game end

sound : db 'e'

handlerArr: dw Notes_Row1, Notes_Row2, Notes_Row3, Notes_Row4, Notes_Row5, Notes_Row6, Notes_Row7, Notes_Row8, Notes_Row9
Notes_Row1: db 0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0   ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0
Notes_Row2: db 0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0   ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0
Notes_Row3: db 0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0   ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0
Notes_Row4: db 0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0   ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0
Notes_Row5: db 0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0   ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0
Notes_Row6: db 0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0   ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0
Notes_Row7: db 0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0   ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0
Notes_Row8: db 0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0   ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0
Notes_Row9: db 0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0   ,0,0,0,0,0,0,0,0,0  ,0,0,0,0,0,0,0,0,0

printstr_StartScreen: 
    push bp 
    mov bp, sp 
    push es 
    push ax 
    push cx 
    push si 
    push di 
    mov ax, 0xb800 
    mov es, ax ; point es to video base 
    mov di, [bp + 8] ; point di to top left column 
    mov si, [bp+6] ; point si to string 
    mov cx, [bp+4] ; load length of string in cx 
    mov ah, 0x8B ; normal attribute fixed in al 
    nextchar: 
        mov al, [si] ; load next char of string 
        mov [es:di], ax ; show this char on screen 
        add di, 2 ; move to next screen location 
        add si, 1 ; move to next char in string 
        loop nextchar ; repeat the operation cx times 
    pop di 
    pop si 
    pop cx 
    pop ax 
    pop es 
    pop bp 
    ret 6


Start_Screen:
    push ax 
    push bx
    push cx 
    push dx 
    push si 
    push di 
    push ds

    mov ah, 0 
    mov al, 3 
    int 10h 

    ; Hide cursor
    mov ah, 01h    ; Set cursor shape
    mov ch, 32     ; Cursor start line (bit 5 set to disable cursor)
    mov cl, 0      ; Cursor end line
    int 10h        ; BIOS video interrupt
     
    ; Print SUDOKU ASCII art at top center 
    mov cx, 6          ; Number of lines to print 
    mov dh, 2          ; Start at row 2 
    mov si, sudoku1 
     
    print_sudoku: 
        push cx 

        ; Center the text horizontally (screen width 80 - text width ~45) / 2 
        mov dl, 18         ; Adjust this value to center the text 
        mov ah, 02h        ; Set cursor position 
        mov bh, 0          ; Page number 
        int 10h 
        mov bl, 0x0E       
    print_char_start: 
        mov al, [si]       ; Get character 
        cmp al, 0          ; Check for end of line 
        je next_line 
        mov ah, 09h        ; Write character function 
        mov cx, 1          ; Number of times to write 
        int 10h 
        inc dl             ; Move cursor right 
        mov ah, 02h        ; Set cursor position 
        int 10h 
        inc si             ; Next character 
        jmp print_char_start 
    next_line: 
        inc si             ; Skip null terminator 
        inc dh             ; Move to next row 
        pop cx 
        loop print_sudoku 
        
    ; Print SUDOKU Grid 
    mov cx, 10          ; Number of lines to print 
    mov dh, 9          ; Start at row 2 
    mov si, grid1
     
    print_grid: 
        push cx 

        ; Center the text horizontally (screen width 80 - text width ~45) / 2 
        mov dl, 25         ; Adjust this value to center the text 
        mov ah, 02h        ; Set cursor position 
        mov bh, 0          ; Page number 
        int 10h 
        
        mov bl, 0x07       
    print_grid_char: 
        mov al, [si]       ; Get character 
        cmp al, 0          ; Check for end of line 
        je next_line_Grid 
        mov ah, 09h        ; Write character function 
        mov cx, 1          ; Number of times to write 
        int 10h 
        inc dl             ; Move cursor right 
        mov ah, 02h        ; Set cursor position 
        int 10h 
        inc si             ; Next character 
        jmp print_grid_char 
    next_line_Grid: 
        inc si             ; Skip null terminator 
        inc dh             ; Move to next row 
        pop cx 
        loop print_grid


    mov bx, 3058; row 15 col 10
    push bx
    mov ax, message2
    push ax
    push word[length + 2]
    call printstr_StartScreen

    mov bx, 3584; row 18 col 33
    push bx
    mov ax, message3
    push ax
    push word[length + 4]
    call printstr_StartScreen

    mov bx, 3150; row 15 col 55
    push bx
    mov ax, message4
    push ax
    push word[length + 6]
    call printstr_StartScreen

    
    ; Wait for keypress 
    mov ah, 0
    int 16h 


    cmp al, 'E'
    je Compare_Easy
    cmp al, 0x4D
    je Compare_Medium
    cmp al, 0x44
    je Compare_Difficult
    cmp al, 'e'
    je Compare_Easy
    cmp al, 'm'
    je Compare_Medium
    cmp al, 'd'
    je Compare_Difficult

    Compare_Easy:
        mov byte[Level], 'E'
        jmp Initialize
    Compare_Medium:
        mov byte[Level], 'M'
        jmp Initialize
    Compare_Difficult:
        mov byte[Level], 'D'

   Initialize:
        call Initialize_Level
        
    ; Remove these pop instructions as they might be interfering with return to main
    pop ds
    pop di 
    pop si 
    pop dx 
    pop cx 
    pop bx 
    pop ax
    ret  ; This ret will return to the caller (main)
    

Sound_Frequency:
    push bp
    mov bp, sp
    push ax
    push bx
    push cx 
    push dx
    
    mov ax, [bp+4]    ; Get frequency from stack
    
    cli               ; Disable interrupts
    
    ; Set PIT channel 2 to mode 3 (square wave)
    mov al, 0xB6      ; 10110110b
   
    out 0x43, al
    
    
    mov ax, 1193      
    mov dx, 0         ; Clear DX for division
    mov bx, [bp+4]    ; Get frequency
    div bx            ; Divide 1193 by frequency
    mov bx, 1000      ; Multiply by 1000
    mul bx          ; Result in AX
    
    ; Program channel 2
    out 0x42, al      ; Low byte
    mov al, ah
    out 0x42, al      ; High byte
    
    ; Enable speaker
    in al, 0x61
    or al, 3          ; Set bits 0-1 to enable speaker and timer
    out 0x61, al
    
    ; Quick delay based on sound type
    mov ax, [bp+4]
    cmp ax, 1000
    ja very_quick     ; Higher frequencies get shorter duration
    
    mov cx, 0x2000    ; Normal delay
    jmp do_delay
    
    very_quick:
        mov cx, 0x1000    ; Shorter delay for quick sounds
        
    do_delay:
        loop do_delay
        
        ; Disable speaker
        in al, 0x61
        and al, 0xFC      ; Clear bits 0-1
        out 0x61, al
    sti               ; Re-enable interrupts
    
    pop dx 
    pop cx 
    pop bx
    pop ax
    pop bp
    ret 2

; Enhanced sound playing routine
Play_Sound:
    push ax
    
    cmp byte[sound], 'c'      
    je play_correct
    cmp byte[sound], 'w'      
    je play_wrong
    cmp byte[sound], 's'      
    je play_start
    cmp byte[sound], 'e'    
    je play_end
    cmp byte[sound], 'm'    
    je play_move
    cmp byte[sound], 'r'    
    je play_scroll
    jmp end_sound
    
    play_correct:
        push word CORRECT_MOVE_FREQ
        jmp do_sound
    play_wrong:
        push word WRONG_MOVE_FREQ
        jmp do_sound
    play_start:
        push word GAME_START_FREQ
        jmp do_sound
    play_end:
        push word GAME_END_FREQ
        jmp do_sound
    play_move:
        push word MOVE_SOUND_FREQ
        jmp do_sound
    play_scroll:
        push word SCROLL_SOUND_FREQ
        
    do_sound:
        call Sound_Frequency
        
    end_sound:
        pop ax
        ret



Initialize_Level:
    push ax 
    push bx
    push cx 
    push dx 
    push si 
    push di 
    push ds

        
    cmp byte [Level], 'E'
    je Level_Easy
    cmp byte [Level], 'M'
    je Level_Medium
    cmp byte [Level], 'D'
    je Level_Difficult
    cmp byte [Level], 'e'
    je Level_Easy
    cmp byte [Level], 'm'
    je Level_Medium
    cmp byte [Level], 'd'
    je Level_Difficult
    jmp Level_Exit  ; Invalid level, exit

    Level_Easy:
        mov si, easyBorad
        mov di, board
        call CopyBoard

        mov si, easySol
        mov di, Actual_board
        call CopyBoard
        jmp Level_Exit

    Level_Medium:
        mov si, MediumBorad
        mov di, board
        call CopyBoard

        mov si, MediumSol
        mov di, Actual_board
        call CopyBoard
        jmp Level_Exit

    Level_Difficult:
        mov si, DifficultBoard
        mov di, board
        call CopyBoard

        mov si, DifficultSol
        mov di, Actual_board
        call CopyBoard

    Level_Exit:
        pop ds
        pop di 
        pop si 
        pop dx 
        pop cx 
        pop bx 
        pop ax
        ret
    

CopyBoard:
    push ax 
    push bx
    push cx 
    push dx 
    push si 
    push di 
    push ds

    
    mov cx, 81
    CopyData:
        mov al, [si]   
        mov [di], al    
        inc si
        inc di
        loop CopyData

    pop ds
    pop di 
    pop si 
    pop dx 
    pop cx 
    pop bx 
    pop ax
    ret
    

fill_Notes: 
    push ax
    push bx 
    push cx 
    push dx 
    push si 
    push di 

    xor cx, cx         
    xor bx, bx 
    xor dx, dx  
    xor ax, ax 

    mov bl, [rowTracker]         
    dec bl                      
    mov dl, [columnTracker]      
    dec dl

    mov ax, 0                    ; Calculate board index: (row * 9) + column
    mov al, bl                   ; Copy row index to ax
    mov cl, 9                    ; Number of columns per row
    mul cl                       ; ax = bx * 9
    add al, dl                   ; Add column index to row offset
    

    mov di, board         
    add di, ax  

    cmp byte[di], '-'
    jne end_Fill_Notes_False


    ; Check row for existing number
    mov bl, [rowTracker]         
    dec bl                      
    mov ax, 0                    
    mov al, bl                   
    mov cl, 9                    
    mul cl                       
                 
    mov di, board         
    add di, ax  
    mov cx, 9
    mov al, [NotesInput]
    
    check_notes_row:
        cmp al, [di]
        je end_Fill_Notes_False
        add di, 1
        loop check_notes_row 
    
    ; Check column for existing number
    xor ax, ax
    mov dl, [columnTracker]      
    dec dl
    add al, dl
    mov di, board         
    add di, ax  
    mov cx, 9
    mov al, [NotesInput]
    
    check_notes_col:
        cmp al, [di]
        je end_Fill_Notes_False
        add di, 9
        loop check_notes_col 
    
    ; Check 3x3 grid
    mov bl, [rowTracker]         
    dec bl                      
    mov dl, [columnTracker]      
    dec dl

    ; Calculate starting row of 3x3 grid: (row/3)*3
    mov ax, 0
    mov al, bl
    mov cl, 3
    div cl          ; AL = quotient (row/3), AH = remainder
    mul cl          ; AL = (row/3)*3
    mov bl, al      ; BL = starting row

    ; Calculate starting column of 3x3 grid: (column/3)*3
    mov ax, 0
    mov al, dl
    mov cl, 3
    div cl          ; AL = quotient (column/3), AH = remainder
    mul cl          ; AL = (column/3)*3
    mov dl, al      ; DL = starting column

    ; Now check the 3x3 grid
    mov cx, 3       ; Loop for 3 rows
    mov al, [NotesInput]
    
    check_3x3_row:
        push cx
        mov cx, 3       ; Loop for 3 columns
        push dx         ; Save starting column    
    check_3x3_col:
        push ax
        mov ax, 0
        mov al, bl
        push cx
        mov cl, 9
        mul cl          ; AX = row * 9
        add al, dl      ; AX = row * 9 + column
        pop cx
        mov di, board
        add di, ax
        pop ax
        
        cmp al, [di]    ; Compare with NotesInput
        je end_with_pop
        
        inc dl          ; Move to next column
        loop check_3x3_col
        
        pop dx          ; Restore starting column
        inc bl          ; Move to next row
        pop cx

        loop check_3x3_row
    end_3x3_check:
        jmp continue_fill_notes

    end_with_pop:

        pop dx          ; Clean up stack
        pop cx
        xor dx,dx
        xor cx,cx
        jmp end_Fill_Notes_False
    continue_fill_notes:
        
        mov bl, [rowTracker] 
        dec bl
        mov dl, [columnTracker]
        dec dl

        mov ax, 0
        mov al, dl
        mov cl, 9
        mul cl
        shl bx,1
        mov di, [handlerArr + bx]
        add di, ax
        mov al,[NotesInput]
        dec al
        sub al,'0'
        add di,ax

        mov byte [di], 1
        mov byte[changeState],1

        mov byte[sound], 'c'
        call Play_Sound

        push word 3680
        push word 0xA
        push word NotesEnteredSuccessfuly
        call printStr

        call delay
        jmp end_Fill_Notes
    end_Fill_Notes_False: 
        mov byte[sound], 'w'
        call Play_Sound
        push word 3680
        push word 0xC
        push word CouldntEnterNote
        call printStr
        call delay
    end_Fill_Notes:
        mov byte[rowTracker],1
        mov byte[columnTracker],1
        pop di 
        pop si 
        pop dx 
        pop cx 
        pop bx 
        pop ax 
        ret


erase_notes:
    push ax
    push bx 
    push cx 
    push di

    xor ax, ax 
    xor cx, cx 

    mov bl, [rowTracker] 
    dec bl
    mov dl, [columnTracker]
    dec dl

    mov ax, 0
    mov al, dl
    mov cl, 9
    mul cl
    shl bx,1
    mov di, [handlerArr + bx]
    add di, ax

    mov cx, 9
    loop_eraseNotes:
        mov byte[di], 0
        inc di
        loop loop_eraseNotes

    pop di
    pop cx 
    pop bx 
    pop ax 
    ret



delay:
    push cx
    push dx

    mov dx,50

    delayl1:
    mov cx,0xFFFF
    delayL2:
    loop delayL2
    dec dx
    jnz delayl1


    pop dx
    pop cx
    ret

countNumCards:
    push ax
    push cx
    push si
    push di
    push dx       

    
    mov cx, 9
    mov si, numCards
    resetLoop:
        mov byte[si], '9'
        inc si
        loop resetLoop

    mov si, board
    mov cx, 81    

    countLoop:
        cmp byte[si], '-'
        je skipCount
        mov al, [si]
        sub al, '0'    
        dec al         
        mov bl, al     
        mov di, numCards
        add di, bx     
        mov al, [di]   
        cmp al, '0'    
        je skipCount   
        dec byte[di]   
    skipCount:
        inc si
        loop countLoop

    pop dx        
    pop di
    pop si
    pop cx
    pop ax
    ret


clrscr:
    push ax
    mov ax,0xb800
    mov es,ax
    mov di,0
    nxt:
        mov word[es:di],0x0720 
        add di,2
        cmp di,8000
        jne nxt
        pop ax
        ret

printOutline:
    push es
    push ax
    push bx
    push dx
    push si
    push di
    mov ax,0xb800
    mov es,ax
    mov ah,0x0B
    mov al,218
    mov [es:816],ax ; 8 col and 8 row
    mov di,818
    mov al,196
    mov cx,62
    mov byte[count],0 

    printTopRow:
        mov ah,0x0B
        mov al,196 
        cmp byte [count],6
        jne print
    printSpeacial:
        mov al,194
        mov [es:di],ax
        mov byte[count],0
        add di,2
        dec cx  
        jnz printTopRow  
        jmp endTopRow 
    print:
        mov [es:di],ax
        add di,2
        inc byte[count]
        loop printTopRow
    endTopRow:
        mov al,191
        mov [es:di],ax
        mov al,179
        mov di,976
        mov cx,35
        mov byte[count],0
    printleftRightCls:
        mov ah,0x0B
        mov al,179
        cmp byte[count],3
        jne print2
    printSpeacial1:
        mov byte[count],0
        mov al,195
        mov [es:di],ax
        mov al,180
        mov [es:di+126],ax
        add di,160
        dec cx  
        jnz printleftRightCls  
        jmp endCols
    print2:
        mov [es:di],ax
        mov [es:di+126],ax
        add di,160
        inc byte[count]
        loop printleftRightCls
    endCols:
        mov al,192
        mov [es:6576],ax
        mov al,196
        mov di,6578
        mov bx,10
        mov cx,62
        mov byte[count],0
    printBottomRow:
        mov ah,0x0B
        mov al,196 
        cmp byte[count],6
        jne print1
    printSpeacial2:
        mov byte[count],0
        mov al,193
        mov [es:di],ax
        mov byte[count],0
        add di,2
        dec cx 
        jnz printBottomRow
        jmp endBottomRow
    print1:
        inc byte[count]
        mov [es:di],ax
        add di,2
        loop printBottomRow
    endBottomRow:
        mov al,217
        mov [es:di],ax
    pop di
    pop si
    pop dx
    pop bx
    pop ax
    pop es
    ret

printCl:
    mov byte[count],0
    push es
    push ax
    push bx
    push cx
    push dx
    push si
    push di
    
    mov ax, 0xb800
    mov es, ax
    mov di, 990 ; 1296 + 7(2) + 160
    mov al, 179
    mov cl, 1   
    l1:
        mov ch, 43
        mov byte[count],1
        mov si, di
        mov ah, 0x07
        cmp cl, 3
        je blue_column
        jmp l2    
    blue_column:
        mov ah, 0x0B
        mov cl,0    
    l2:
        mov al, 179  
        cmp byte[count], 5
        je intersection
        jmp print_char
        
    intersection:        
        mov byte[count],1
        mov al, 197 
        mov [es:di-160], ax
        dec ch
        cmp ch,0
        jne l2
        jmp shiftNext

    print_char:
        mov [es:di], ax
        add di, 160
        inc byte[count]
        dec ch
        cmp ch,0
        jne l2
    shiftNext:
        inc cl
        mov di, si
        add di, 14
        cmp di, 1102
        jne l1
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    pop es
    ret

printRows:
    mov byte[count],0
    push ax
    push es
    push di
    push cx
    push si
    push bx
    mov ax,0xb800
    mov es,ax
    mov di,1458 ; 1296 + 160(4) + 2
    mov al,196
    mov cl,1
    outer:
        mov si, di
        mov bx,di
        add bx,124
        mov ch,0
        mov ah,0x07
        cmp cl, 3
        je blue_row
        jmp inner
    blue_row:    
        mov ah,0x0B
        mov cl,0
   inner:
        cmp ch,6
        je incrementDi
        jmp printChar
    incrementDi:
        add di,2
        mov ch,0
    printChar:
        mov [es:di],ax
        add di,2
        inc ch
        cmp di,bx
        jne inner
        inc cl
        mov di,si
        add di,640
        inc byte[count]
        cmp byte[count],8
        jne outer
    pop bx
    pop si
    pop cx
    pop di
    pop es
    pop ax
    ret

printStr:
    push bp
    mov bp,sp
    push es
    push ax
    push cx
    push si
    push di
    push ds
    pop es
    mov di,[bp+4]
    mov cx,0xFFFF
    xor al,al
    repne scasb
    mov ax,0xFFFF
    sub ax,cx
    dec ax
    jz exit
    mov cx,ax
    mov ax,0xb800
    mov es,ax
    mov ah,[bp+6]
    mov di,[bp+8]
    mov si,[bp+4]
    cld
    nextChar:
        lodsb
        stosW
        loop nextChar
    exit:
        pop di
        pop si
        pop cx
        pop ax
        pop es
        pop bp
        ret 6

printCards:
    push es
    push ax
    push di
    push si
    push cx
    push bx
    push dx
    mov ax,0xb800
    mov es,ax
    mov di,6754
    mov ah,0x09
    mov al,218
    mov [es:di],ax
    mov di,6756
    mov al,196
    mov cx,44
    mov byte[count],0

    printTop:
    mov al,196
    cmp byte[count],4
    jne printNorm

    printS:
    mov al,194
    mov [es:di],ax
    mov byte[count],0
    add di,2
    dec cx
    jnz printTop
    jmp endT

    printNorm:

    mov [es:di],ax
    add di,2
    inc byte[count]
    loop printTop


    endT:
    mov al,191
    mov [es:di],ax
    mov al,179
    mov di,6914
    mov byte[count],0
    mov cx,3

    printleftRight:

    mov al,179
    cmp byte[count],1
    jne printNorm1
    printS1:

    mov byte[count],0
    mov al,195
    mov[es:di],ax
    mov al,180
    mov [es:di+90],ax
    add di,160
    dec cx
    jnz printleftRight
    jmp endCol

    printNorm1:

    mov [es:di],ax
    mov [es:di+90],ax
    add di,160
    inc byte[count]
    loop printleftRight

    endCol:

    mov al,192
    mov[es:di],ax
    add di,2
    mov byte[count],0
    mov cx,44
    printBottom:
    mov al,196
    cmp byte[count],4
    jne printNorm2

    mov byte[count],0
    mov al,193
    mov [es:di],ax
    add di,2
    dec cx
    jnz printBottom
    jmp endB

    printNorm2:
    inc byte[count]
    mov [es:di],ax
    add di,2
    loop printBottom

    endB:
    mov al,217
    mov [es:di],ax

    printColumn:
    mov di,6924
    mov cx,3
    lop:
    mov cx,4
    mov byte[count],0
    mov si,di

    lop2:
    mov al,179
    cmp byte[count],2
    je inter
    jmp printNorm3

    inter:
    mov byte[count],0
    mov al,197
    mov [es:di-160],ax
    dec cx
    jnz lop2
    jmp shift

    printNorm3:
    mov [es:di],ax
    add di,160
    inc byte[count]
    loop lop2

    shift:
    mov di,si
    add di,10
    cmp di,7014
    jne lop

    printRow:
        
    mov byte[count],0
    mov di,7076
    mov al,196
    mov cx,9
    xor dx,dx

    lop1:

    mov [es:di],ax
    add di,2
    inc dx
    cmp dx,4
    jne lop1
    xor dx,dx
    add di,2
    loop lop1

    sub di,2
    mov al,180
    mov [es:di],ax

    mov al,0x31
    mov di,6918
    mov cx,9

    mov si, numCards
    mov bl, 0x31
   

    fillNum:
    mov al, bl

    mov ah,0xE
    mov [es:di],ax
    mov ah,0x0F
    add di,320

    mov al, [si]


    mov [es:di],ax
    sub di,320
    add di,10
    inc bl
    inc si
    loop fillNum

    push word 7646
    push word 0x0F
    push word printUndo
    call printStr

    push word 7966
    push word 0x0F
    push word printNotes
    call printStr

    pop dx
    pop bx
    pop cx
    pop si
    pop di
    pop ax
    pop es

    ret


printUtiliTy:
    push di
    push si
    push es
    push ax
    push cx

    mov ax, 76
    push ax
    mov ax,0x0F
    push ax
    mov ax,printsudoko
    push ax
    call printStr

    mov ax,228
    push ax
    mov ax,0x0F
    push ax
    mov ax,printLevel
    push ax
    call printStr

    
    mov ax,246
    push ax
    mov ax,0x0F
    push ax

    cmp byte [Level], 'E'
    je printeasy
    cmp byte [Level], 'M'
    je printmedium
    cmp byte [Level], 'D'
    je printdifficult
    cmp byte [Level], 'e'
    je printeasy
    cmp byte [Level], 'm'
    je printmedium
    cmp byte [Level], 'd'
    je printdifficult
    
    printeasy:
        mov ax, Easy
        jmp print_level
    printmedium:
        mov ax, Medium
        jmp print_level
    printdifficult:
        mov ax, Difficult
    print_level:
        push ax
        call printStr


    mov ax,490
    push ax
    mov ax,0x0E
    push ax
    mov ax,mistakes
    push ax
    call printStr

  

    mov ax,550
    push ax
    mov ax,0x0E
    push ax
    mov ax,Score
    push ax
    call printStr

    mov ax,[currentScore]  
    mov di, 564 
    push word 0x0E          
    push di                 
    push ax                  
    call printnum

    mov ax,600
    push ax
    mov ax,0x0E
    push ax
    mov ax,timer
    push ax
    call printStr
    
    call countNumCards
    call printCards

    cmp byte[TakeInputFlag],1
    jne exitUtil

    xor ax,ax
    mov ax,0x0F
    
    cmp byte[NotesFlag],1
    jne printMode1Util
    mov ax,0x0E
    printMode1Util:
    push word 7680
    push word ax
    push word takeInputText
    call printStr
    
    push 0xb800
    pop es
    xor ax,ax
    mov ah,0x0F
    cmp byte [NotesFlag],1
    jne printMode1UtilCord
    mov ah,0x0E
    printMode1UtilCord:
    mov al,'1'
    mov [es:7740],ax
    mov al,','
    mov [es:7742],ax
    mov al,'1'
    mov [es:7744],ax


    exitUtil:
    pop cx
    pop ax
    pop es
    pop si
    pop di
    ret

storeData:
    push ax
    push es
    push ds
    push si
    push di
    cld 
    mov ax,0xb800
    mov es,ax
    mov ds,ax
    mov cx,2000
    xor si,si
    mov di,10000
    rep movsw
    pop di
    pop si
    pop ds
    pop es
    pop ax
    ret

scrollUp:
    push ds
    push es
    push ax
    push si
    push di
    push cx
    call storeData
    cld
    mov si, 4000 ; source index to scroll up 
    mov di,0
    mov cx,2000
    mov ax,0xb800
    mov es,ax
    mov ds,ax 
    rep movsw
    pop cx
    pop di
    pop si
    pop ax
    pop es
    pop ds
    ret

retriveData:

    push ds
    push es
    push ax
    push si
    push di
    push cx
    mov ax,0xb800
    mov es,ax
    mov ds,ax
    cld
    xor di,di
    mov si,10000
    mov cx,2000
    rep movsw
    mov cx,2000
    mov di,10000
    mov ax,0x0720
    rep stosw
    pop cx
    pop di
    pop si
    pop ax
    pop es
    pop ds
    ret

scrollDown:
    push ds
    push es
    push ax
    push si
    push di
    push cx
    mov ax,0xb800
    mov es,ax
    mov ds,ax
    std
    mov si,3998 ;point si to the ending offset of screen
    mov di,7998;point di to ending offset of the data till we want to store
    mov cx,2000;same cx as scroll up used
    rep movsw
    call retriveData
    pop cx
    pop di
    pop si
    pop ax
    pop es
    pop ds
    ret

printnum: 
    push bp 
    mov bp, sp 
    push es 
    push ax 
    push bx 
    push cx 
    push dx 
    push di 
    mov ax, 0xb800 
    mov es, ax 
    mov ax, [bp+4] 
    mov bx, 10 
    mov cx, 0 
    nextdigit:
        mov dx, 0
        div bx 
        add dl, 0x30 
        push dx 
        inc cx 
        cmp ax, 0 
    jnz nextdigit 
      mov di,[bp+6]
    nextpos: 
        pop dx 
        mov dh, [bp+8]
        mov [es:di], dx 
        add di, 2 
        loop nextpos 
    pop di 
    pop dx 
    pop cx 
    pop bx 
    pop ax 
    pop es 
    pop bp 
    ret 6

print_num_in_box:
    push ax
    push di
    push es
    push cx
    mov ax, 0xb800
    mov es, ax
    mov ah,0x0F
    mov ch,9
    mov di,1142
    mov si,board
    printBoardOuter:
    push di
    mov cl,9
    printBoardInner:
    mov al,[si]
    cmp al,'-'
    je dontPrintDash
    mov [es:di],ax
    dontPrintDash:
    add di,14
    inc si
    dec cl
    jnz printBoardInner
    pop di
    add di,640
    dec ch
    jnz printBoardOuter
    pop cx
    pop es
    pop di
    pop ax 
    ret

printNotesInBox:    
    push bp
    mov bp, sp
    push bx        
    push cx
    push ax
    
    xor bx,bx
    mov bx, [bp+4]
    mov ah, 0xE           ; Attribute
    mov al, '1'           ; Start with 1
    mov ch, 3             ; 3 rows
    
    notesBoxl1:
        push bx               ; Save row position
        mov cl, 3             ; 3 numbers per row
        
    notesBoxL2:
        cmp byte[si], 1       ; Check if current bit is 1
        jne skipPrint
        mov [es:bx], ax       ; Print number if bit is 1
        
    skipPrint:
        add bx, 4             ; Move to next position on screen
        inc al                ; Move to next number
        inc si                ; Move to next bit
        dec cl
        jnz notesBoxL2
        
        pop bx                ; Restore row position
        add bx, 160           ; Move to next row
        dec ch
        jnz notesBoxl1
        
        pop ax
        pop cx
        pop bx
        pop bp
        ret 2

printNotesInBoard:
    push bx
    push es
    push cx
    push di
    push si
    push 0xb800
    pop es
    xor bx,bx
    mov ch,9
    mov di, 978

    notesPrintingl1:
    push di
    mov si,[handlerArr+bx]
    mov cl,9

    notesPrintingl2:
    push di
    call printNotesInBox
    add di,14
    dec cl
    jnz notesPrintingl2

    pop di               
    add di, 640     
    add bx, 2             
    dec ch
    jnz notesPrintingl1

    pop si
    pop di
    pop cx
    pop es
    pop bx
    ret

printGame:
    
    mov byte[changeState],0
    mov  byte[scrollState],1
    call clrscr   
    call printUtiliTy
    call printOutline  
    call printCl  
    call printRows
    call print_num_in_box
    call printNotesInBoard
    ret


TimerIsr:
    push di
    push ax
    push bx
    push es
    
    push 0xb800
    pop es
    
    inc byte[cs:TimerInterval]
    cmp byte[cs:TimerInterval], 18
    jne endTimerIsr
    
    mov byte[cs:TimerInterval], 0
    
    
    mov di, timer
    
    add di, 12
    mov al, byte[cs:di]
    inc al
    cmp al, '9' + 1
    jne updateSecOnes
    
   
    mov byte[cs:di], '0'
    dec di          
    mov al, byte[cs:di]
    inc al
    cmp al, '6'   
    jne updateSecTens
    
   
    mov byte[cs:di], '0'
    sub di, 2    
    mov al, byte[cs:di]
    inc al
    cmp al, '9' + 1
    jne updateMinOnes
    
    
    mov byte[cs:di], '0'
    dec di        
    mov al, byte[cs:di]
    inc al
    cmp al, '6'     
    jne updateMinTens
    
 
    mov byte[cs:di], '0'      
    inc di
    mov byte[cs:di], '0'     
    add di, 2
    mov byte[cs:di], '0'      
    inc di
    mov byte[cs:di], '0'     
    jmp displayTimer
    
    updateSecOnes:
        mov byte[cs:di], al
        jmp displayTimer
        
    updateSecTens:
        mov byte[cs:di], al
        jmp displayTimer
        
    updateMinOnes:
        mov byte[cs:di], al
        jmp displayTimer
        
    updateMinTens:
        mov byte[cs:di], al

    displayTimer:
        cmp byte[scrollState],1
        jne endTimerIsr
        push word 600           
        push word 0x0E        
        push word timer
        call printStr
        
    endTimerIsr:
        
        pop es
        pop bx
        pop ax
        pop di
        jmp far[cs:oldTimerIsr]

                
handleScroll:
    mov byte[sound], 'r'
    call Play_Sound

    cmp byte [scrollState], 0   
    je performScrollDown        
    cmp byte [scrollState], 1   
    je performScrollUp          
    ret                         
    performScrollUp:
        call scrollUp               
        mov byte [scrollState], 0    
        ret                         
    performScrollDown:
        call scrollDown             
        mov byte [scrollState], 1    
        ret 



winning_condition:
    push bx
    push cx
    push si

    mov cx, 81
    xor ax, ax 

    check_Mistakes:
        mov bl, [mistakes + 10]
        cmp bl, '3'
        jne checkOtherCondition    
        mov ax,2
        jmp winning_exit
    checkOtherCondition:
        mov si, board
    winningl1:
        cmp byte[si], '-'
        je winningl2
        inc si
        loop winningl1
        mov ax, 1
        jmp winning_exit
    winningl2:
        mov ax, 0
    winning_exit:
        pop si
        pop cx
        pop bx
        ret

HandleKeys:

    push es
    push ax
    push dx
    push bx
    cmp byte[scrollState],0
    jne exitHandleKeys
    cmp ah,4BH     
    JE LEFT_KEY
    CMP AH, 4DH       
    JE RIGHT_KEY
    CMP AH, 48H       
     JE UP_KEY
     CMP AH, 50H       
    JE DOWN_KEY
    CMP AH, 1CH       
    JE ENTER_KEY
    JMP DISPLAY_COORD

    LEFT_KEY:
        mov byte[sound], 'm'
        call Play_Sound
        cmp byte[columnTracker], 1
        JNE DECR_COL
        mov byte [columnTracker], 9      
        JMP DISPLAY_COORD

    DECR_COL:
        dec byte[columnTracker]
        JMP DISPLAY_COORD

    
    RIGHT_KEY:
        mov byte[sound], 'm'
        call Play_Sound
        cmp byte[columnTracker], 9
        JNE INCR_COL
        MOV byte[columnTracker],1      
        JMP DISPLAY_COORD
    INCR_COL:
        INC byte[columnTracker]
        JMP DISPLAY_COORD


    UP_KEY:
        mov byte[sound], 'm'
        call Play_Sound
        cmp byte[rowTracker], 1
        JNE DEC_ROW
        mov byte [rowTracker], 9      
        JMP DISPLAY_COORD
        DEC_ROW:
        dec byte[rowTracker]
        JMP DISPLAY_COORD

    DOWN_KEY:
        mov byte[sound], 'm'
        call Play_Sound
        CMP byte[rowTracker],9
        JNE INC_ROW
        MOV byte[rowTracker], 1      
        JMP DISPLAY_COORD
    INC_ROW:
        inc byte [rowTracker]
        JMP DISPLAY_COORD

    ENTER_KEY:
        mov byte [TakeInputFlag], 0
        push word 3680
        push word 0x0F
        push word AskForNum
        mov byte[enteringNumberFlag],1

        call printStr
        jmp exitHandleKeys
        

    DISPLAY_COORD:
    push 0xb800
    pop es
    mov ah,0xF
    mov al,[rowTracker]
    add al,0x30
    mov [es:3740],ax
    mov al,','
    mov [es:3742],ax
    mov al,[columnTracker]
    add al,0x30
    mov [es:3744],ax
    
    
    exitHandleKeys:
    pop bx
    pop dx
    pop ax
    pop es
    RET

Handle_Num_Input:
    push es
    push ax
    push dx
    push bx
    cmp byte[scrollState],0
    jne exitHandle_Num_Input

    cmp byte[enteringNumberFlag], 0   
    je exitHandle_Num_Input

    cmp ah, 1Ch
    je confirm_number

    
    cmp al, '1'
    jb exitHandle_Num_Input
    cmp al, '9'
    ja exitHandle_Num_Input

    push 0xb800
    pop es
    mov [Num_Input], al              
    mov ah, 0x0F
    mov [es:3720], ax               
    jmp exitHandle_Num_Input

    confirm_number:
        mov byte[enteringNumberFlag], 0   
        mov byte[TakeInputFlag], 1        
        call Check_Num_Entered             

    exitHandle_Num_Input:
        pop bx
        pop dx
        pop ax
        pop es
        RET



Check_Num_Entered:
    push es
    push ax
    push dx
    push bx
    push si
    push di

    mov bl, [rowTracker]         
    dec bl                      
    mov dl, [columnTracker]      
    dec dl

    mov ax, 0                    ; Calculate board index: (row * 9) + column
    mov al, bl                   ; Copy row index to ax
    mov cl, 9                    ; Number of columns per row
    mul cl                       ; ax = bx * 9
    add al, dl                   ; Add column index to row offset

    mov di, board         
    add di, ax  

    mov si, Actual_board         
    add si, ax                   ; Calculate address in Actual_board
    mov bl, [si]                

    check_box:
        cmp byte [di],'-'
        jne boxFilled

        mov al, [Num_Input]     
        cmp al, bl               
        jne Increase_Mistakes    
        
        mov byte[sound], 'c'
        call Play_Sound

        call erase_notes
        mov [di], al  
        mov byte[changeState],1 
        push word 3680
        push word 0xA
        push word moveSuccessFul
        call printStr
        call delay
        add word[currentScore],50
        mov al,[rowTracker]
        mov [undoCoordinates+0],al
        mov al,[columnTracker]
        mov [undoCoordinates+1],al
        jmp exitHandleNums      
       
    Increase_Mistakes:
        mov byte[sound], 'w'
        call Play_Sound

        inc byte [mistakes + 10]      
        mov byte[changeState],1
        push word 3680
        push word 0x0C
        push word mistakeOccured
        call printStr

        call delay
        jmp exitHandleNums

        boxFilled:
            mov byte[sound], 'w'
            call Play_Sound

            push word 3680
            push word 0x0C
            push word BoxAlreadyFilled
            call printStr

            call delay
   
    exitHandleNums:    
        mov byte[columnTracker],1
        mov byte[rowTracker],1

        push word 3680
        push word 0x0F
        push word takeInputText
        call printStr

        mov ah,0xF
        mov al,'1'
        mov [es:3740],ax
        mov al,','
        mov [es:3742],ax
        mov al,'1'
        mov [es:3744],ax

        mov byte[enteringNumberFlag], 0    
        mov byte[TakeInputFlag], 1 
    pop di
    pop si
    pop bx
    pop dx
    pop ax
    pop es
    ret

HandleNotesKey:
    push es
    push ax
    push dx
    push bx
    
    cmp byte[scrollState], 0
    jne exitHandleNotesKeys
    cmp ah, 4BH     
    JE NOTES_LEFT_KEY
    CMP AH, 4DH       
    JE NOTES_RIGHT_KEY
    CMP AH, 48H       
    JE NOTES_UP_KEY
    CMP AH, 50H       
    JE NOTES_DOWN_KEY
    CMP AH, 1CH       
    JE NOTES_ENTER_KEY
    JMP NOTES_DISPLAY_COORD

    NOTES_LEFT_KEY:
        mov byte[sound], 'm'
        call Play_Sound
        cmp byte[columnTracker], 1
        JNE NOTES_DECR_COL
        mov byte [columnTracker], 9      
        JMP NOTES_DISPLAY_COORD

    NOTES_DECR_COL:
        dec byte[columnTracker]
        JMP NOTES_DISPLAY_COORD

    NOTES_RIGHT_KEY:
        mov byte[sound], 'm'
        call Play_Sound
        cmp byte[columnTracker], 9
        JNE NOTES_INCR_COL
        MOV byte[columnTracker], 1      
        JMP NOTES_DISPLAY_COORD
    
    NOTES_INCR_COL:
        
        INC byte[columnTracker]
        JMP NOTES_DISPLAY_COORD

    NOTES_UP_KEY:
        mov byte[sound], 'm'
        call Play_Sound
        cmp byte[rowTracker], 1
        JNE NOTES_DEC_ROW
        mov byte [rowTracker], 9      
        JMP NOTES_DISPLAY_COORD
    
    NOTES_DEC_ROW:
        dec byte[rowTracker]
        JMP NOTES_DISPLAY_COORD

    NOTES_DOWN_KEY:
        mov byte[sound], 'm'
        call Play_Sound
        CMP byte[rowTracker], 9
        JNE NOTES_INC_ROW
        MOV byte[rowTracker], 1      
        JMP NOTES_DISPLAY_COORD
    
    NOTES_INC_ROW:
        inc byte [rowTracker]
        JMP NOTES_DISPLAY_COORD

    NOTES_ENTER_KEY:
        mov byte [NotesCoordinatesFlag], 0
        push word 3680
        push word 0x0E           ; Yellow color for notes mode
        push word AskForNum
        mov byte[NotesNumInput], 1
        call printStr
        jmp exitHandleNotesKeys

    NOTES_DISPLAY_COORD:

        mov ah, 0x0E             ; Yellow color for notes mode
        mov al, [rowTracker]
        add al, 0x30
        mov [es:3740], ax
        mov al, ','
        mov [es:3742], ax
        mov al, [columnTracker]
        add al, 0x30
        mov [es:3744], ax 
    exitHandleNotesKeys:
        pop bx
        pop dx
        pop ax
        pop es
        RET


HandleNotes:
    push es
    push ax
    push dx
    push bx
    push si
    push di

    cmp byte[scrollState], 0
    jne exitHandleNotes
    
    cmp byte[NotesCoordinatesFlag], 1
    jne check_notes_num_input
    call HandleNotesKey
    jmp exitHandleNotes

    check_notes_num_input:
        cmp byte[NotesNumInput], 1
        jne exitHandleNotes
        
        cmp ah, 1Ch      
        je confirm_notes_number

        cmp al, '1'
        jb exitHandleNotes
        cmp al, '9'
        ja exitHandleNotes
    
        mov [NotesInput], al
        push 0xb800
        pop es
        mov ah, 0x0E    
        mov [es:3720], ax
        jmp exitHandleNotes

    confirm_notes_number:
        mov byte[NotesNumInput], 0
        mov byte[NotesCoordinatesFlag], 1
        call fill_Notes  
        push word 3680
        push word 0x0E
        push word takeInputText
        call printStr 

        mov ah, 0x0E             
        mov al, [rowTracker]
        add al, 0x30
        mov [es:3740], ax
        mov al, ','
        mov [es:3742], ax
        mov al, [columnTracker]
        add al, 0x30
        mov [es:3744], ax


    exitHandleNotes:
        pop di
        pop si
        pop bx
        pop dx
        pop ax
        pop es
        ret


ModeChange:
    push es
    push ax
    push di

    cmp byte[NotesFlag],1
    jne printMode1
    mov byte[NotesCoordinatesFlag],1
    mov ah,0X0E
    push word 3680
    push word 0x0E          
    push word takeInputText
    call printStr
    jmp exitModeChange

    printMode1:
    mov ah,0X0F
    push word 3680
    push word 0x0F          
    push word takeInputText
    call printStr
    exitModeChange:
        push 0xb800
        pop es
        mov al,[rowTracker]
        add al,0x30
        mov [es:3740],ax
        mov al,','
        mov [es:3742],ax
        mov al,[columnTracker]
        add al,0x30
        mov [es:3744],ax
    pop di
    pop ax
    pop es
    ret
    
Undo_Move:
    push es
    push ax
    push bx
    push cx
    push dx
    push si
    push di

    xor di,di
    mov al,[undoCoordinates]
    dec al
    mov cl,9
    mul cl
    mov cl,[undoCoordinates+1]
    dec cl
    add al,cl
    mov di,board
    add di,ax
    mov byte[di],'-'
    mov word[undoCoordinates],-1

    cmp word[currentScore], 50
    jl score_zero
    sub word[currentScore], 50
    jmp print_undo_message

    score_zero:
    mov word[currentScore], 0

    print_undo_message:
    push word 3680
    push word 0xA       ; Green color
    push word UndoSuccessFul
    call printStr
    call delay

    mov byte[changeState], 1
    mov byte[rowTracker],1
    mov byte[columnTracker],1
    cmp byte[NotesFlag],1
    je EndOfUndo
    mov byte[TakeInputFlag],1

    EndOfUndo:
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    pop es
    ret

    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    pop es
    ret

Game_Moves:
    push ax
    push bx
    push dx
    push di
    push es

    mov dl,1

    mov ah, 0          
    int 16h

    cmp al, 's'
    je handle_scroll
    cmp al, 'S'
    je handle_scroll

    cmp al, 'n'
    je toggle_notes
    cmp al, 'N'
    je toggle_notes

    cmp al, 'u'
    je handle_undo
    cmp al, 'U'
    je handle_undo

    cmp byte[NotesFlag],1
    jne checkWithoutNotes
    call HandleNotes
    jmp moves_done

    checkWithoutNotes:
    cmp byte[TakeInputFlag],1 
    jne checkforNumsNow
    call HandleKeys
    jmp moves_done

    checkforNumsNow:
    cmp byte[enteringNumberFlag],1
    jne moves_done
    call Handle_Num_Input
    jmp moves_done

   toggle_notes:
    mov byte[sound], 's'
    call Play_Sound

    cmp byte[scrollState],0
    jne moves_done
    mov byte[columnTracker],1
    mov byte[rowTracker],1
    sub dl,[NotesFlag]
    mov[NotesFlag],dl
    call ModeChange
    jmp moves_done
        
    

    handle_scroll:
    call handleScroll
    jmp moves_done

    handle_undo:
    cmp byte[scrollState],0
    jne moves_done
    cmp word[undoCoordinates],-1
    je moves_done
    call Undo_Move

    moves_done:
    pop es
    pop di
    pop dx
    pop bx
    pop ax
    ret

Winning_Screen:
    push ax 
    push bx 
    push cx 
    push dx 
    push si

    
    mov ah, 0
    mov al, 3
    int 10h

    mov ah, 01h
    mov ch, 32
    mov cl, 0
    int 10h

    push word 324
    push word 0x0F
    push word win1
    call printStr

    push word 484
    push word 0x0F
    push word win2
    call printStr

    push word 644
    push word 0x0F
    push word win3
    call printStr

    push word 804
    push word 0x0F
    push word win4
    call printStr

    push word 964
    push word 0x0F
    push word win5
    call printStr

    push word 1124
    push word 0x0F
    push word win6
    call printStr

    push word 1658
    push word 0x0E
    push word trophy1
    call printStr

    push word 1818
    push word 0x0E
    push word trophy2
    call printStr

    push word 1978
    push word 0x0E
    push word trophy3
    call printStr

    push word 2138
    push word 0x0E
    push word trophy4
    call printStr

    push word 2298
    push word 0x0E
    push word trophy5
    call printStr

    push word 2458
    push word 0x0E
    push word trophy6
    call printStr

    push word 2618
    push word 0x0E
    push word trophy7
    call printStr

    push word 2778
    push word 0x0E
    push word trophy8
    call printStr

    push word 2938
    push word 0x0E
    push word trophy9
    call printStr

    push word 3098
    push word 0x0E
    push word trophy10
    call printStr

   
    push word 3426
    push word 0x83
    push word yourScore
    call printStr

    mov ax,[currentScore]
    push word 0x83
    push word 3450
    push ax
    call printnum

    push word 3586
    push word 0x83
    push word mistakes
    call printStr

    push word 3746
    push word 0x83
    push word timer
    call printStr
    
    
    pop si 
    pop dx 
    pop cx 
    pop bx 
    pop ax
    ret

Losing_Screen:
    push ax 
    push bx 
    push cx 
    push dx 
    push si

    
    mov ah, 0
    mov al, 3
    int 10h

    mov ah, 01h
    mov ch, 32
    mov cl, 0
    int 10h

    push word 346
    push word 0x0F
    push word lost1
    call printStr

    push word 506
    push word 0x0F
    push word lost2
    call printStr

    push word 666
    push word 0x0F
    push word lost3
    call printStr

    push word 826
    push word 0x0F
    push word lost4
    call printStr

    push word 986
    push word 0x0F
    push word lost5
    call printStr

    push word 1146
    push word 0x0F
    push word lost6
    call printStr

    push word 1658
    push word 0x04
    push word skull1
    call printStr

    push word 1818
    push word 0x04
    push word skull2
    call printStr

    push word 1978
    push word 0x04
    push word skull3
    call printStr

    push word 2138
    push word 0x04
    push word skull4
    call printStr

    push word 2298
    push word 0x04
    push word skull5
    call printStr

    push word 2458
    push word 0x04
    push word skull6
    call printStr

    push word 2618
    push word 0x04
    push word skull7
    call printStr

    push word 2778
    push word 0x04
    push word skull8
    call printStr

    push word 2938
    push word 0x04
    push word skull9
    call printStr

    push word 3098
    push word 0x04
    push word skull10
    call printStr

    push word 3586
    push word 0x8E
    push word yourScore
    call printStr

    mov ax,[currentScore]
    push word 0x8E
    push word 3610
    push ax
    call printnum

    push word 3746
    push word 0x8E
    push word timer
    call printStr
    
    
    pop si 
    pop dx 
    pop cx 
    pop bx 
    pop ax
    ret
    


start:
    call clrscr
    call Start_Screen
    call clrscr

    push 0h
    pop es
    mov ax,[es:8*4]
    mov [oldTimerIsr],ax
    mov ax,[es:8*4+2]
    mov [oldTimerIsr+2],ax
    cli
    mov word [es:8*4],TimerIsr
    mov [es:8*4+2],cs
    sti

    
    mov byte[sound], 's'
    call Play_Sound
    call printGame
    xor ax,ax
    Game_loop:
    
        call winning_condition
        cmp ax, 0
        jne end_screen_print
        call Game_Moves
        cmp byte [changeState],1
        jne dontPrintNewState
        call printGame
        dontPrintNewState:
        jmp Game_loop

        push 0h
        pop es
       
        mov bx,[oldTimerIsr]
        mov dx,[oldTimerIsr+2]
        cli 
        mov  [es:8*4],bx
        mov [es:8*4+2],dx
        sti
    
    end_screen_print:
        cmp ax, 1
        je Winning_Screen_Printing
        cmp ax, 2
        je LosingScreenPrinting
        jmp end

    LosingScreenPrinting:
        call Losing_Screen
        mov byte[sound], 'e'
        call Play_Sound
        jmp end
    Winning_Screen_Printing:
        call Winning_Screen
        mov byte[sound], 'w'
        call Play_Sound

    end:
        mov ax, 0x4c00
        int 0x21