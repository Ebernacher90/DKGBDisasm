SECTION "Home", ROM0[$0]
RST_00::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

;calls JumpFunctionTable, which is used to jump to a specific address
RST_08::
    jp JumpFunctionTable
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

;switches the current bank to the bank number given by a
RST_10::
    ldh [hCurrentBank], a
    ld [$2000], a
    ret
    rst $38
    rst $38

RST_18::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_20::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_28::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_30::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_38::
    ret
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

VBlankInterrupt::
    jp MainLoop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

LCDCInterrupt::
    jp Jump_000_02ad
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

TimerOverflowInterrupt::
    jp Jump_000_02c4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SerialTransferCompleteInterrupt::
    reti
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

JoypadTransitionInterrupt::
    reti

REPT 159
    db $FF
ENDR

Boot::
    nop
    jp Start
