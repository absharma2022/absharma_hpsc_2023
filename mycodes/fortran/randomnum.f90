program randomnum
	implicit none
	real r(5),x
	integer i
	do i=1,5
	call random_number(x)
	r(i)=x
	print*,r(i)
	end do

end program
