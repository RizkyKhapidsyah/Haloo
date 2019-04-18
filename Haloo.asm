
    include \masm32\include\masm32rt.inc
    
;--------------------------------------------------------
; Gunakan file "makeit.bat" untuk assembling source code
; Lihat di direktori project ini. thx
;--------------------------------------------------------

    .data?
      value dd ?

    .data
      item dd 0

    .code

start:
   
    call main
    inkey
    exit

main proc

    cls
    print "Haloo, Saya Rizky Khapidsyah,  Apakah saya menyukai Anda??",13,10
    ret

main endp
end start
