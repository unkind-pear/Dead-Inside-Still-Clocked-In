store playerX, r1        ; Save new player X
    store playerY, r2        ; Save new player Y

    ;-- Update zombie position (chase player) --
    load r3, zombieX         ; r3 = zombie X
    load r4, zombieY         ; r4 = zombie Y
    load r1, playerX         ; r1 = player X (for comparison)
    load r2, playerY         ; r2 = player Y (for comparison)

    ; Move zombie horizontally
    cmp r3, r1
    jeq zombie_vert          ; Skip if X already matches
    jgr zombie_left
    inc r3                   ; Move right (zombieX < playerX)
    jmp zombie_vert
zombie_left:
    dec r3                   ; Move left (zombieX > playerX)

zombie_vert:
    ; Move zombie vertically
    cmp r4, r2
    jeq zombie_done          ; Skip if Y already matches
    jgr zombie_up
    inc r4                   ; Move down (zombieY < playerY)
    jmp zombie_done
zombie_up:
    dec r4                   ; Move up (zombieY > playerY)

zombie_done:
    store zombieX, r3        ; Save new zombie X
    store zombieY, r4        ; Save new zombie Y

    ;-- Draw player and zombie --
    loadn r5, #40            ; Screen width = 40
    ; Draw player '@' at (playerX, playerY)
    load r2, playerY
    mul r6, r2, r5           ; r6 = y * 40
    load r1, playerX
    add r6, r6, r1           ; r6 = screen position
    loadn r7, #'@'
    outchar r7, r6           ; Draw character

    ; Draw zombie 'Z' at (zombieX, zombieY)
    load r4, zombieY
    mul r0, r4, r5           ; r0 = y * 40
    load r3, zombieX
    add r0, r0, r3           ; r0 = screen position
    loadn r7, #'Z'
    outchar r7, r0

    ;-- Check collision --
    load r1, playerX
    load r2, playerY
    load r3, zombieX
    load r4, zombieY
    cmp r1, r3
    jne no_collision
    cmp r2, r4
    jne no_collision

    ; Collision occurred - show 'X' and freeze
    loadn r5, #40
    mul r6, r2, r5
    add r6, r6, r1
    loadn r7, #'X'
    outchar r7, r6
collision_loop:
    jmp collision_loop       ; Infinite freeze loop

no_collision:
    ; Delay to control game speed
    loadn r0, #2000
delay_loop:
    dec r0
    jnz delay_loop

    jmp main_loop            ; Continue game loop