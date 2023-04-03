INCLUDE Irvine32.inc

.data
    x dq ?
	one dq 1.0
    two dq 2.0
    three dq 3.0
    four dq 4.0
    result dq ?

.code
    calc_ln proc
        fld x
        fld one
        fsubp
        fld x
        fdivp

        fld one
        fld two
        fdivp
        fld x
        fld one
        fsubp
        fld x
        fdivp
        fld x
        fld one
        fsubp
        fld x
        fdivp
        fmulp
        fmulp

        faddp

        fld one 
        fld three
        fdivp
        fld x
        fld one
        fsubp
        fld x
        fdivp
        fld x
        fld one
        fsubp
        fld x
        fdivp
        fmulp
        fld x
        fld one
        fsubp
        fld x
        fdivp
        fmulp
        fmulp

        faddp

        fld one
        fld four
        fdivp
        fld x
        fld one
        fsubp
        fld x
        fdivp
        fld x
        fld one
        fsubp
        fld x
        fdivp
        fmulp
        fld x
        fld one
        fsubp
        fld x
        fdivp
        fmulp
        fld x
        fld one
        fsubp
        fld x
        fdivp
        fmulp
        fmulp

        faddp                 
        fstp result             
        ret
    calc_ln endp
    calc_exp proc
        fld one
        fld x

        faddp

        fld x
        fld x
        fmulp
        fld two
        fdivp

        faddp

        fld x
        fld x
        fmulp
        fld x
        fmulp
        fld two
        fld three
        fmulp
        fdivp

        faddp

        fld x
        fld x
        fmulp
        fld x
        fmulp
        fld x
        fmulp
        fld two
        fld three
        fmulp
        fld four
        fmulp
        fdivp

        faddp
        fstp result
        ret
    calc_exp endp
main PROC
    call ReadFloat
    fstp x
    call calc_exp
    fld result
    call WriteFloat
    call calc_ln
    fld result
    call WriteFloat
    exit
main ENDP

END main