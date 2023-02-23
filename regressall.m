## (C) 2022-2023 Pablo Alvarado
## EL5857 Aprendizaje automático
## Tarea 2

## Template file for the whole solution

1;

## Just use 0,1% of the total available data in the experiments
[X,z] = gendata(0.001);

## This is the ground-truth (reference) data to be used for comparison
[RX,rz] = gendata(1,0,0);

## Show the sensed data
close all;

figure(1,"name","Sensed data");
plot3(X(:,1),X(:,2),z',".");
xlabel("x")
ylabel("y")
zlabel("z")
daspect([1,1,0.001]);

## Extract from the ground-truth RX the coordinate range:
minx=min(RX(:,1));
maxx=max(RX(:,1));

miny=min(RX(:,2));
maxy=max(RX(:,2));

## partition is the size of the desired final grid
## the smaller the value, the faster the estimation but
## the coarser the result.
partition=25;
##partition=50;
##partition=75;
[xx,yy]=meshgrid(round(linspace(minx,maxx,partition)),
                 round(linspace(miny,maxy,partition)));

## Flatten the mesh
NX = [xx(:) yy(:)];

printf("Linear regression with no intercept started...");
fflush(stdout);
tic();
nz = linreg_nointercept(NX,X,z);
printf("done.\n");
toc()
fflush(stdout);


figure(2,"name","Linearly regressed data with no intercept");
hold off;
surf(xx,yy,reshape(nz,size(xx)));
xlabel("x")
ylabel("y")
zlabel("z")
daspect([1,1,0.001]);

## Insert here the calls to your implementations of:
## - the linear regression with intercept
## - the polynomial regression with intercept
## - the locally weighted regression
