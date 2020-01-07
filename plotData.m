#Computational Methods Group Assignment one

#### ______GROUP-MEMBERS_______ ####

####_______               Name_________________   id
####_______       1 yonas yifter ________________209/09
####_______       2 tensay g/tsadik______________111/09
####_______       3 Kibrom Takelle______________ 043/09
####_______       4 weldegebreal bilad___________208/09
####_______       5 Zeberhe Hagos ________________210/09
#this is the ploting an visual analysisng function
#for the dataset
function [] = plotData (X, Y)
  xlabel('city pop');
  ylabel('Profit');
  title('cities and their corresponding profit');
  scatter(X,Y,'g');
endfunction
