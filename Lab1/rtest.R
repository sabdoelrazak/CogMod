check <-TRUE
while(check)
{
  for(i in unique (seq(1,20,1)))
  {
    if(i<12)
    {
      if(i %% 2 == 0)
        {
            print(c(i, i+1))
        }
    }
    else
    {
    check <-FALSE
    }
  }
}



plot(seq(1,15,1),seq(1,15,1),col=rep(2,length(seq(1,15,1))),pch=seq(1,15,1))

