program random

	implicit none
	integer, dimension(:),alloctable:: seed
	integer :: i,nseed
	real ::x

	
! determine how many seeds needed: 
	do i=1,100
		seed(i)=i
	end do
	call random_seed(size = nseed) 
	!allocate(seed(nseed))
	 ! array of integers
	call random_seed(put = seed) 
deallocate(seed)

end program