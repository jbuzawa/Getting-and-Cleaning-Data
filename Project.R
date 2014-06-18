##Read all of the tables from folder in working directory
x_test<-read.table("UCI HAR Dataset/test/x_test.txt")
x_train<-read.table("UCI HAR Dataset/train/x_train.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
sub_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
sub_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
act_labels<-read.table("UCI HAR Dataset/activity_labels.txt")
features<-read.table("UCI HAR Dataset/features.txt")
##Combine train data
train<-cbind(sub_train,y_train,x_train)
##Combine test data
test<-cbind(sub_test,y_test,x_test)
##Combine all observations
allobs<-rbind(train,test)
##Create list of the features
featnames<-as.character(features$V2)
##Create column names using the features
names<-c("subject","activity",featnames)
##Assign column names to data
colnames(allobs)<-names
##Replace activity codes with text
allobs$activity[allobs$activity==1]<-"WALKING"
allobs$activity[allobs$activity==2]<-"WALKING_UPSTAIRS"
allobs$activity[allobs$activity==3]<-"WALKING_DOWNSTAIRS"
allobs$activity[allobs$activity==4]<-"SITTING"
allobs$activity[allobs$activity==5]<-"STANDING"
allobs$activity[allobs$activity==6]<-"LAYING"
##Find columns with mean and std measurements
meanstd<-c(1:8,43:48,83:88,123:128,163:168,203,204,216,217,229,230,242,243,255,256,268:273,347:352,426:431,505,506,518,519,531,532,544,545)
##Subset all data to include just mean and std measurements
tidy<-allobs[,meanstd]
##summarize by activity and subject with mean values of observations
tidymean<-aggregate(tidy[,3:68],by=list(subject=tidy$subject,activity=tidy$activity),FUN=mean)
tidymean
