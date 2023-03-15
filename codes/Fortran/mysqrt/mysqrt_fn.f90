! A fortran subroutine for calculating square root 
! using the Newton's method

program mysqrt_fn
	
	implicit none
	real (kind=8):: y,x
	real(kind=8),external::mysqroot
	print *, "Please enter the positive number"
	read *, y
	x= mysqroot(y,x)
	print*, "The root of y is = ", x

end program

real(kind=8) function mysqroot(y,x)
	implicit none
	real(kind=8),intent(inout)::x
	real(kind=8), intent(in)::y
	integer :: i
	real (kind=8):: tol,tmp
	tol=1.d0-14
	x=1.d0 !initial guess
	do i=1,1000
		tmp=x
		x=0.5d0*(x+y/x)
		if(abs(tmp-x).LT.tol) then
			print*, "Root is converged and root is",x,i
			exit
		end if
	end do
	mysqroot=x
		
end function mysqroot
