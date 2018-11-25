Red [
    Purpose: "100 Doors"
    Rosettacode: http://www.rosettacode.org/wiki/100_doors 
    Author: "Guaracy Monteiro"
    Date: 24/10/2018
]

closed: "◼"
opened: "◻"
n: 100

doors: make bitset! n

; print doors numbers
ruller: does [
    print  [newline append/dup copy "" "123456789." 10]
]

; print doors state
doors-state: does[
    repeat i n [
        prin [either doors/:i[opened][closed]]
        doors/:i: false
    ]
    print ""
]

; unoptimized version
ruller
doors-state
repeat i n [
    j: i
    while [j <= n] [
        doors/:j: not doors/:j
        j: j + i
    ]
]
doors-state

; optimized version
ruller
doors-state
repeat i n / 10 [
    doors/(i * i): true
]
doors-state
