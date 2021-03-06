function solv_May(dias,mutualism)
       fn=mfilename();
       fnwp = mfilename('fullpath');
       fdat=strrep(fnwp, fn, '');
       Ma=dlmread(strcat(fdat,'..\input\1dat_a.txt'));
       Mb=dlmread(strcat(fdat,'..\input\1dat_b.txt'));
       
       period=365;
       r1=Ma(4)  % nacimientos a�o por bicho
       r1period=rp(r1,period);
       N1_0=Ma(2);
       K1=Ma(3); % capcidad limite
       %beta12=Ma(1)*K1/r1
       
       
       if (mutualism==1)
          beta12=Ma(1)
          beta21=Mb(1)
       else
          beta12=0
          beta21=0
       end

       r2=Mb(4)  % nacimientos a�o por bicho
       r2period=rp(r2,period);
       N2_0=Mb(2);
       K2=Mb(3); % capcidad limite
       %beta21=Mb(1)*K2/r2
       
       
      
       
       tspan=[0 dias];
       y0=[N1_0 N2_0];
       r1=r1period;
       b12=beta12;
       
       r2=r2period;
       b21=beta21;
       
       options = odeset('reltol',1e-6);
       tic;
       [t,y] = ode23(@diff_May, tspan,y0,options,r1,K1,b12,r2,K2,b21);
       toc;
       plot(t,y,'-.k','LineWidth',2), xlabel('Time'), ylabel('Population')