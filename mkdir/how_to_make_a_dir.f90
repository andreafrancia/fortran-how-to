program test
use iso_c_binding
interface
  function mkdir(path,mode) bind(c,name="mkdir")
    use iso_c_binding
    integer(c_int) :: mkdir
    character(kind=c_char,len=1) :: path(*)
    integer(c_int16_t), value :: mode
  end function mkdir
end interface

integer :: i
i = mkdir("cicci-amore-mio", int(o'770',c_int16_t))

end
