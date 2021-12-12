#declare N=10000;
#declare pcoord=array[N];

#fopen Pts "temp.dat" read
#declare i=0;
#while (defined(Pts))
    #read(Pts,vec1)
    #declare pcoord[i]=vec1;
    #declare i=i+1;
#end

camera {
  up <0,1,0>
  right <-1.33,0,0>
  location <0,0,2.25>
  sky <0,1,0>
  look_at <0,0,0>
}

light_source {
  <0,0,5>
  color rgb<1,1,1>
}

#declare j=0;
#while(j < i)
sphere {
  pcoord[j] , 0.005
  pigment { color rgb <1,0,0> }
  finish { metallic }
}
#declare j=j+1;
#end
