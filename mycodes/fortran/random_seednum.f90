

    program random_seednum
    
    
    
        INTEGER :: i, n, clock
    INTEGER, DIMENSION(:), ALLOCATABLE :: seed
    n=5
  
    CALL RANDOM_SEED(size = n)
    ALLOCATE(seed(n))
  
    CALL SYSTEM_CLOCK(COUNT=clock)
  
    seed = clock + 37 * (/ (i - 1, i = 1, n) /)
    CALL RANDOM_SEED(PUT = seed)
  
    print *, "Using random seed = ", seed
    print *, " "

    DEALLOCATE(seed)
    
    
     ! implicit none
!integer, allocatable :: seed(:)
      !integer :: n

      !call random_seed(size = n)
      !allocate(seed(n))
      !call random_seed(get=seed)
      !write (*, *) seed
    end program 


