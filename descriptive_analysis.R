head(global_covid19_dataset)
#summary measures of global cases
summary(global_covid19_dataset$cases)
boxplot(global_covid19_dataset$cases)
head(local_covid19_dataset)
#summary measures of local cases
summary(local_covid19_dataset$cases)
boxplot(local_covid19_dataset$cases)
print(local_covid19_dataset$cases)
#calculate the no.of outliers in local cases
outliers<-function(dataset){
  count<-0
  for(i in 1:length(dataset)){
    if((dataset[i]<quantile(dataset, 0.25))||(dataset[i]>quantile(dataset, 0.75))){
      count=count+1
    }
  }
  return(count)
}
print(paste("no.of outliers in local cases: ", outliers(local_covid19_dataset$cases)))