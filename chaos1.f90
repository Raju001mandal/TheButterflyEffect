program chaos1
implicit none

real::x,y,z,xnew,ynew,znew
real,parameter::a=10.0,b=28.0,c=2.6666,dt=0.01
integer::i
print*,"give the value of x,y,z"
read*,x,y,z
!print*,"give the value of dt"
!read*,dt

open(16,file="chaos1.dat")
write(16,*)x,y,z
do i=1,2000
xnew=x+a*(y-x)*dt
x=xnew
ynew=y+(x*(28-z)-y)*dt
y=ynew
znew=z+(x*y-c*z)*dt
z=znew
write(16,*)xnew,ynew,znew
end do

close(16)
end program
