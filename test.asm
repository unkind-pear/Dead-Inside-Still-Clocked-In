; ***************************************
; *             CONSTANTES              *
; ***************************************
PlayerChar:          var #1
ShotChar:            var #1
ZombieChar:          var #1
EmptyChar:           var #1

loadn r0, #'A'                  ; Caractere do jogador
store PlayerChar, r0
loadn r0, #'*'                  ; Caractere do tiro
store ShotChar, r0
loadn r0, #'Z'                  ; Caractere do zumbi
store ZombieChar, r0
loadn r0, #32                   ; Espaço vazio
store EmptyChar, r0

ScreenWidth:         var #1
ScreenHeight:        var #1
ShotCooldownTime:    var #1
ZombieMoveTime:      var #1

loadn r0, #40                   ; Largura da tela
store ScreenWidth, r0
loadn r0, #30                   ; Altura da tela
store ScreenHeight, r0
loadn r0, #200                  ; Delay de tiro (0.2s em ms)
store ShotCooldownTime, r0
loadn r0, #500                  ; Movimento zumbis (0.5s em ms)
store ZombieMoveTime, r0

; ***************************************
; *             VARIÁVEIS               *
; ***************************************
PlayerPos:           var #1
LastKey:             var #1
ShotActive:          var #1
ShotPos:             var #1
ShotDirection:       var #1
ShotTimer:           var #1
ZombieTimer:         var #1
GameOverFlag:        var #1

loadn r0, #0                    ; Posição atual do jogador
store PlayerPos, r0
loadn r0, #0                    ; Última tecla pressionada
store LastKey, r0
loadn r0, #0                    ; 0=Inativo, 1=Ativo
store ShotActive, r0
loadn r0, #0                    ; Posição do tiro
store ShotPos, r0
loadn r0, #0                    ; Direção do tiro (0-3)
store ShotDirection, r0
loadn r0, #0                    ; Timer para movimento do tiro
store ShotTimer, r0
loadn r0, #0                    ; Timer para movimento zumbis
store ZombieTimer, r0
loadn r0, #0                    ; 0=Jogo ativo, 1=Game Over
store GameOverFlag, r0

; Posições dos zumbis (máx 10)
ZombiesPos:          var #10
                     static ZombiesPos + #0, #0
                     static ZombiesPos + #1, #0
                     static ZombiesPos + #2, #0
                     static ZombiesPos + #3, #0
                     static ZombiesPos + #4, #0
                     static ZombiesPos + #5, #0
                     static ZombiesPos + #6, #0
                     static ZombiesPos + #7, #0
                     static ZombiesPos + #8, #0
                     static ZombiesPos + #9, #0

ZombiesAlive:        var #10
                     static ZombiesAlive + #0, #0
                     static ZombiesAlive + #1, #0
                     static ZombiesAlive + #2, #0
                     static ZombiesAlive + #3, #0
                     static ZombiesAlive + #4, #0
                     static ZombiesAlive + #5, #0
                     static ZombiesAlive + #6, #0
                     static ZombiesAlive + #7, #0
                     static ZombiesAlive + #8, #0
                     static ZombiesAlive + #9, #0

ZombieCount:         var #1
loadn r0, #3                    ; Número de zumbis ativos
store ZombieCount, r0

jmp main ;------------------------------------------------------------JUMP MAIN----------

; ***************************************
; *        FUNÇÃO DE DELAY (ms)         *
; ***************************************
; Input: R1 = Tempo em ms
delay:
    push r0
    push r1
    push r2
    
    loadn r0, #1000       ; 1ms base (10MHz clock)
    mul r1, r1, r0        ; R1 = ms * 1000
    
    delay_loop:
        dec r1            ; 1 ciclo
        jnz delay_loop    ; 2 ciclos
    
    pop r2
    pop r1
    pop r0
    rts

; ***************************************
; *         MOVER PERSONAGEM            *
; ***************************************
move_player:
    push r0
    push r1
    push r2
    push r3
    
    ; Apagar personagem antigo
    load r0, PlayerPos
    load r1, EmptyChar
    outchar r1, r0
    
    ; Verificar direção
    load r0, LastKey
    loadn r1, #'w'
    cmp r0, r1
    jeq move_up2
    
    loadn r1, #'s'
    cmp r0, r1
    jeq move_down2
    
    loadn r1, #'a'
    cmp r0, r1
    jeq move_left2
    
    loadn r1, #'d'
    cmp r0, r1
    jeq move_right2
    
    jmp move_done
    
    move_up2:
        load r0, PlayerPos
        loadn r1, #40
        sub r0, r0, r1
        jmp move_update
    
    move_down2:
        load r0, PlayerPos
        loadn r1, #40
        add r0, r0, r1
        jmp move_update
    
    move_left2:
        load r0, PlayerPos
        dec r0
        jmp move_update
    
    move_right2:
        load r0, PlayerPos
        inc r0
    
    move_update:
        ; Verificar limites da tela
        loadn r1, #0
        cmp r0, r1
        jle move_done
        
        loadn r1, #1199   ; 40*30-1
        cmp r0, r1
        jgr move_done
        
        ; Atualizar posição
        store PlayerPos, r0
    
    move_done:
        ; Desenhar novo personagem
        load r1, PlayerChar
        outchar r1, r0
        
        pop r3
        pop r2
        pop r1
        pop r0
        rts

; ***************************************
; *        ATIRAR (COM ENTER)           *
; ***************************************
shoot:
    push r0
    push r1
    
    ; Verificar se tiro já está ativo
    load r0, ShotActive
    push r7
    loadn r7, #0
    cmp r7, r0
    pop r7
    jne shoot_end
    
    ; Ativar tiro na posição do jogador
    load r0, PlayerPos
    store ShotPos, r0
    
    ; Determinar direção (baseado na última tecla)
    load r0, LastKey
    loadn r1, #'w'
    cmp r0, r1
    jeq dir_up
    
    loadn r1, #'s'
    cmp r0, r1
    jeq dir_down
    
    loadn r1, #'a'
    cmp r0, r1
    jeq dir_left
    
    loadn r1, #'d'
    cmp r0, r1
    jeq dir_right
    
    loadn r0, #1  ; Direita padrão
    jmp dir_set
    
    dir_up:    loadn r0, #0 ; jmp dir_set
    dir_down:  loadn r0, #1 ; jmp dir_set
    dir_left:  loadn r0, #2 ; jmp dir_set
    dir_right: loadn r0, #3
    
    dir_set:
        store ShotDirection, r0
        loadn r0, #1
        store ShotActive, r0
        load r0, ShotCooldownTime
        store ShotTimer, r0
    
    shoot_end:
        pop r1
        pop r0
        rts

; ***************************************
; *         MOVER TIRO                  *
; ***************************************
move_shot:
    push r0
    push r1
    push r2
    
    ; Verificar se tiro está ativo
    load r0, ShotActive
    push r7
    loadn r7, #0
    cmp r7, r0
    pop r7
    jeq move_shot_end
    
    ; Atualizar timer
    load r0, ShotTimer
    dec r0
    store ShotTimer, r0
    push r7
    loadn r7, #0
    cmp r7, r0
    pop r7
    jne move_shot_end
    
    ; Resetar timer
    load r0, ShotCooldownTime
    store ShotTimer, r0
    
    ; Apagar tiro antigo
    load r0, ShotPos
    load r1, EmptyChar
    outchar r1, r0
    
    ; Mover na direção apropriada
    load r0, ShotDirection
    load r1, ShotPos
    
    loadn r2, #0
    cmp r0, r2
    jeq shot_up
    
    loadn r2, #1
    cmp r0, r2
    jeq shot_down
    
    loadn r2, #2
    cmp r0, r2
    jeq shot_left
    
    loadn r2, #3
    cmp r0, r2
    jeq shot_right
    
    jmp shot_move_done
    
    shot_up:
        loadn r2, #40
        sub r1, r1, r2
        jmp shot_move_done
    
    shot_down:
        loadn r2, #40
        add r1, r1, r2
        jmp shot_move_done
    
    shot_left:
        dec r1
        jmp shot_move_done
    
    shot_right:
        inc r1
    
    shot_move_done:
        ; Verificar se saiu da tela
        loadn r0, #0
        cmp r1, r0
        jle shot_deactivate
        
        loadn r0, #1199
        cmp r1, r0
        jgr shot_deactivate
        
        ; Verificar colisão com zumbis
        call check_zombie_collision
        loadn r1, #0
        cmp r0, r1
        jne shot_deactivate
        
        ; Atualizar posição
        store ShotPos, r1
        load r0, ShotChar
        outchar r0, r1
        jmp move_shot_end
    
    shot_deactivate:
        loadn r0, #0
        store ShotActive, r0
    
    move_shot_end:
        pop r2
        pop r1
        pop r0
        rts

; ***************************************
; *      MOVER ZUMBIS (IA SIMPLES)      *
; ***************************************
move_zombies:
    push r0
    push r1
    push r2
    push r3
    push r4
    push r5
    push r6
    
    ; Atualizar timer
    load r0, ZombieTimer
    dec r0
    store ZombieTimer, r0
    push r7
    loadn r7, #0
    cmp r7, r0
    pop r7
    jne move_zombies_end
    
    ; Resetar timer
    load r0, ZombieMoveTime
    store ZombieTimer, r0
    
    ; Loop por cada zumbi
    loadn r2, #0            ; Índice
    load r3, ZombieCount
    
    move_zombies_loop:
        cmp r2, r3
        jeq move_zombies_end
        
        ; Verificar se zumbi está vivo
        loadn r0, #ZombiesAlive
        add r0, r0, r2
        loadi r1, r0
        push r7
        loadn r7, #0
        cmp r7, r1
        pop r7
        jeq next_zombie
        
        ; Calcular movimento em direção ao jogador
        loadn r0, #ZombiesPos
        add r0, r0, r2
        loadi r4, r0        ; R4 = posição zumbi
        load r5, PlayerPos   ; R5 = posição jogador
        
        ; Calcular diferença vertical (delta Y)
        push r4
        push r5
        loadn r6, #40
        div r4, r4, r6      ; R4 = linha zumbi
        div r5, r5, r6      ; R5 = linha jogador
        sub r1, r5, r4      ; R1 = delta Y
        pop r5
        pop r4
        
        ; Calcular diferença horizontal (delta X)
        push r4
        push r5
        mod r4, r4, r6      ; R4 = coluna zumbi
        mod r5, r5, r6      ; R5 = coluna jogador
        sub r0, r5, r4      ; R0 = delta X
        pop r5
        pop r4
        
        ; Escolher direção (prioridade horizontal)
        loadn r6, #0        ; Valor zero para comparação
        
        ; Verificar se delta X != 0
        cmp r0, r6
        jeq move_vertical   ; Se delta X = 0, mover verticalmente
        
        ; Mover horizontalmente
        jgr move_right      ; Se delta X > 0, mover para direita
        
        ; Mover para esquerda (delta X < 0)
        dec r4
        jmp zombie_move_done
        
        move_right:
            inc r4
            jmp zombie_move_done
        
        move_vertical:
            ; Verificar se delta Y != 0
            cmp r1, r6
            jeq zombie_move_done  ; Se delta Y também = 0, não mover
            
            ; Mover verticalmente
            jgr move_down         ; Se delta Y > 0, mover para baixo
            
            ; Mover para cima (delta Y < 0)
            loadn r6, #40
            sub r4, r4, r6
            jmp zombie_move_done
            
            move_down:
                loadn r6, #40
                add r4, r4, r6
        
        zombie_move_done:
            ; Atualizar posição
            loadn r0, #ZombiesPos
            add r0, r0, r2
            storei r0, r4
            
            ; Redesenhar zumbi
            load r1, ZombieChar
            outchar r1, r4
    
    next_zombie:
        inc r2
        jmp move_zombies_loop
    
    move_zombies_end:
        pop r6
        pop r5
        pop r4
        pop r3
        pop r2
        pop r1
        pop r0
        rts

; ***************************************
; *     VERIFICAR COLISÕES COM ZUMBIS   *
; ***************************************
check_zombie_collision:
    push r1
    push r2
    push r3
    push r4
    
    loadn r0, #0
    load r1, ShotPos
    load r2, ZombieCount
    loadn r3, #0            ; Índice
    
    collision_loop:
        cmp r3, r2
        jeq collision_end
        
        ; Verificar se zumbi está vivo
        loadn r4, #ZombiesAlive
        add r4, r4, r3
        loadi r0, r4
        push r7
        loadn r7, #0
        cmp r7, r0
        pop r7
        jeq next_collision
        
        ; Verificar colisão com tiro
        loadn r4, #ZombiesPos
        add r4, r4, r3
        loadi r0, r4
        cmp r0, r1
        jne next_collision
        
        ; Matar zumbi
        loadn r0, #0
        storei r4, r0        ; Atualizar estado
        loadn r0, #ZombiesPos
        add r0, r0, r3
        loadi r0, r0
        load r1, EmptyChar
        outchar r1, r0       ; Apagar zumbi
        loadn r0, #1         ; Retornar colisão=true
        jmp collision_end
    
    next_collision:
        inc r3
        jmp collision_loop
    
    collision_end:
        pop r4
        pop r3
        pop r2
        pop r1
        rts

; ***************************************
; *       VERIFICAR GAME OVER           *
; ***************************************
check_game_over:
    push r0
    push r1
    push r2
    push r3
    
    load r0, PlayerPos
    load r1, ZombieCount
    loadn r2, #0            ; Índice
    
    game_over_loop2:
        cmp r2, r1
        jeq game_over_end
        
        ; Verificar apenas zumbis vivos
        loadn r3, #ZombiesAlive
        add r3, r3, r2
        loadi r3, r3
        push r7
        loadn r7, #0
        cmp r7, r3
        pop r7
        jeq next_zombie_check
        
        ; Verificar colisão
        loadn r3, #ZombiesPos
        add r3, r3, r2
        loadi r3, r3
        cmp r0, r3
        jne next_zombie_check
        
        ; Game Over!
        loadn r0, #1
        store GameOverFlag, r0
        jmp game_over_end
    
    next_zombie_check:
        inc r2
        jmp game_over_loop2
    
    game_over_end:
        pop r3
        pop r2
        pop r1
        pop r0
        rts

; ***************************************
; *         INICIALIZAR JOGO            *
; ***************************************
initialize_game:
    ; Posição inicial do jogador
    loadn r0, #615          ; Centro da tela (linha 15, coluna 15)
    store PlayerPos, r0
    
    ; Inicializar zumbis
    loadn r1, #ZombiesPos
    loadn r0, #100          ; Zumbi 1
    storei r1, r0
    inc r1
    loadn r0, #500          ; Zumbi 2
    storei r1, r0
    inc r1
    loadn r0, #800          ; Zumbi 3
    storei r1, r0
    
    loadn r1, #ZombiesAlive
    loadn r0, #1            ; Estado vivo
    storei r1, r0
    inc r1
    storei r1, r0
    inc r1
    storei r1, r0
    
    ; Timers
    load r0, ShotCooldownTime
    store ShotTimer, r0
    load r0, ZombieMoveTime
    store ZombieTimer, r0
    
    ; Flags
    loadn r0, #0
    store ShotActive, r0
    store GameOverFlag, r0
    
    ; Desenhar elementos iniciais
    load r0, PlayerPos
    load r1, PlayerChar
    outchar r1, r0
    
    loadn r2, #ZombiesPos
    loadi r0, r2
    load r1, ZombieChar
    outchar r1, r0
    
    inc r2
    loadi r0, r2
    outchar r1, r0
    
    inc r2
    loadi r0, r2
    outchar r1, r0
    
    rts

; ***************************************
; *          TELA DE GAME OVER          *
; ***************************************
show_game_over:
    ; Limpar tela
    loadn r0, #0
    loadn r1, #1200
    loadn r2, #' '
    
    clear_loop:
        outchar r2, r0
        inc r0
        cmp r0, r1
        jne clear_loop
    
    ; Mostrar mensagem
    loadn r0, #560          ; Posição central
    loadn r1, #'G'
    outchar r1, r0
    inc r0
    loadn r1, #'A'
    outchar r1, r0
    inc r0
    loadn r1, #'M'
    outchar r1, r0
    inc r0
    loadn r1, #'E'
    outchar r1, r0
    
    load r3, ScreenWidth
    add r0, r0, r3
    loadn r3, #3
    sub r0, r0, r3
    loadn r1, #'O'
    outchar r1, r0
    inc r0
    loadn r1, #'V'
    outchar r1, r0
    inc r0
    loadn r1, #'E'
    outchar r1, r0
    inc r0
    loadn r1, #'R'
    outchar r1, r0
    
    ; Esperar eternamente
    game_over_loop:
        jmp game_over_loop

; ***************************************
; *             MAIN LOOP               *
; ***************************************
main:
    call initialize_game
    
    game_loop:
        ; Ler teclado
        inchar r0
        store LastKey, r0
        
        ; Processar entrada
        loadn r1, #13       ; Tecla Enter
        cmp r0, r1
        jeq shoot_player
        
        loadn r1, #'w'
        cmp r0, r1
        jeq move_player_call
        
        loadn r1, #'a'
        cmp r0, r1
        jeq move_player_call
        
        loadn r1, #'s'
        cmp r0, r1
        jeq move_player_call
        
        loadn r1, #'d'
        cmp r0, r1
        jeq move_player_call
        jmp after_input
        
        move_player_call:
            call move_player
            jmp after_input
        
        shoot_player:
            call shoot
        
        after_input:
            ; Atualizar elementos do jogo
            call move_shot
            call move_zombies
            
            ; Verificar condições de fim
            call check_game_over
            load r0, GameOverFlag
            push r7
            loadn r7, #0
            cmp r7, r0
            pop r7
            jne game_over
        
        ; Delay para controle de FPS
        loadn r1, #50
        call delay
        
        jmp game_loop
    
    game_over:
        call show_game_over