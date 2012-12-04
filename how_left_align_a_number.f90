character *255 function left_align(format, number)
    character(len=255) buffer
    character(len=*) format
    double precision number
    write(buffer, format) number
    left_align=adjustl(buffer)
end function

program pippo
    double precision w 
    character* 255 left_align
    w = 9.9283982
    write(*, '(f10.5)') w
    write(*, '(a)') left_align('(f10.5)', w)
end program

