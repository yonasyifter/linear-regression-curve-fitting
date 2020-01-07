#Computational Methods Group Assignment one

#### ______GROUP-MEMBERS_______ ####

####_______               Name_________________   id
####_______       1 yonas yifter ________________209/09
####_______       2 tensay g/tsadik______________111/09
####_______       3 Kibrom Takelle______________ 043/09
####_______       4 weldegebreal bilad___________208/09
####_______       5 Zeberhe Hagos ________________210/09

# here is the implementation
#use code vectorization on the matrix operations, rather than explicit summation or looping.
# please add with a matrix of ones in the first column to make our computation matrix operations
# rather than explicit summation
  clc;
  clear all;
  fprintf("\nLets See the cities with thier corresponding profit\n");
  data=load('dataSet.txt');
  X=data(:,1);
  Y=data(:,2);
  plotData(X,Y);
  # here the linear regresser will be plotted as the fig below.
  fprintf("press Enter to continue linear regresser!!!\n");
  pause;
  fprintf("lets calculate the optimum parameters!\n");
  fprintf(" to plot the linear regresser we need to know m and b\n");
  n=length(X);
  X=[ones(n,1),data(:,1)];
  theta=zeros(2,1);# column vector
  alpha=0.01;
  iter=1000;
  theta=computeParameters(X, Y,theta,iter,alpha);
  fprintf("the theta values are: %f and %f\n",theta(1),theta(2));
  hold on;
  fprintf("the linear regressed plot.....\n");
  fprintf("press enter to continue.....\n");
  pause;
  plot(X(:,2),X*theta,'r-');
  title("the fitted line");
  xlabel('profit');
  ylabel('population');
  legend('Training Data', 'Linear Regression')
  disp("we are done with Linear regression(Curve fitting) !!!");
  hold off;
  fprintf('press enter to predict the values for pop of 35,000 and 70,000');
  pause;
  #lets make prediction for the data of 35,000 and 70,000 population
  # according our matrix X=[1,3.5] normalized as function of 10,000
  # for 70,000 X=[1,7]
  #predict=mX+b
  prediction_for_35=[1,3.5]*theta;
  prediction_for_70=[1,7]*theta;
  fprintf("\n the predicted profit for 35,000 population is %f \n the predicted profit for population of 70,000 is %f \n",prediction_for_35,prediction_for_70);

