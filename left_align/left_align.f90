double precision :: a = 5.
character* 255 left_align
write(*, '(a)') left_align('(f10.5)', a)
end

character *255 function left_align(format, number)
    character(len=255) buffer
    character(len=*) format
    double precision number
    write(buffer, format) number
    left_align=adjustl(buffer)
end function

