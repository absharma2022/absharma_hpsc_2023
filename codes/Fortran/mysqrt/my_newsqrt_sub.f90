! A fortran subroutine for calculating square root 
! using the Newton's method

program mysqrt
	
	implicit none
	integer::i,kmax
	real (kind=8):: y,x,tol
	logical:: debug=.TRUE.
	tol=1.d0-4
	kmax=100
	print *, "Please enter the positive number"
	read *, y
	call mysqroot(y,kmax,tol,debug,x,i)
	print*,"The root of ",y," is = ", x, "at the iteraton ",i

end program

subroutine mysqroot(y,kmax,tol,debug,x,i)
	implicit none
	real(kind=8),intent(inout)::x
	real(kind=8), intent(in)::y,tol
	logical,intent(in)::debug
	integer,intent(in)::kmax
	integer,intent(inout)::i
	real (kind=8)::tmp
	x=4.d0 !initial guess
	do i=1,kmax
		tmp=x
		x=0.5d0*(x+y/x)
		if (debug)then
		print*, "At iteration",i,"Root is",x
		endif
		if(abs(tmp-x).LT.tol) then
			!print*, "Root is converged and root is",x,i
			exit
		end if
	end do
end subroutine mysqroot


