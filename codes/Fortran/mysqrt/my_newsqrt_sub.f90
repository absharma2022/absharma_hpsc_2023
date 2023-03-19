! A fortran subroutine for calculating square root 
! using the Newton's method

program mysqrt
	
	implicit none
	integer::i
	real (kind=8):: y,x
	print *, "Please enter the positive number"
	read *, y
	call mysqroot(y,x,i)
	print*,"The root of ",y," is = ", x, "at the iteraton ",i

end program

subroutine mysqroot(y,x,i)
	implicit none
	real(kind=8),intent(inout)::x
	real(kind=8), intent(in)::y
	integer,intent(inout)::i
	real (kind=8):: tol,tmp
	tol=1.d0-14
	x=1.d0 !initial guess
	do i=1,1000
		tmp=x
		x=0.5d0*(x+y/x)
		if(abs(tmp-x)/x.LT.tol) then
			!print*, "Root is converged and root is",x,i
			exit
		end if! A fortran subroutine for calculating square root 
! using the Newton's method

program mysqrt
	
	implicit none
	integer::i
	real (kind=8):: y,x
	print *, "Please enter the positive number"
	read *, y
	call mysqroot(y,x,i)
	print*,"The root of ",y," is = ", x, "at the iteraton ",i

end program

subroutine mysqroot(y,x,i)
	implicit none
	real(kind=8),intent(inout)::x
	real(kind=8), intent(in)::y
	integer,intent(inout)::i
	real (kind=8):: tol,tmp
	tol=1.d0-14
	x=1.d0 !initial guess
	do i=1,1000
		tmp=x
		x=0.5d0*(x+y/x)
		if(abs(tmp-x)/x.LT.tol) then
			!print*, "Root is converged and root is",x,i
			exit
		end if
	end do
end subroutine mysqroot


