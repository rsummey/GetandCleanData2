library(tidyverse)
library(data.table)
getwd()
setwd("/Users/mmynatt/Box/DataScienceCourse/UCI HAR Dataset/test/Inertial Signals")
testsets <- c("body_acc_x_test.txt", "body_acc_y_test.txt", "body_acc_z_test.txt", "body_gyro_x_test.txt",
              "body_gyro_y_test.txt", "body_gyro_z_test.txt", "total_acc_x_test.txt", "total_acc_y_test.txt",
              "total_acc_z_test.txt")
dat <- data.frame(matrix(NA, nrow = 2947, ncol = 0))
for (i in testsets) {
  dat <- cbind(dat, rowMeans(fread(i)))
  dat <- cbind(dat, apply(fread(i), 1, sd))
}
names <- c("body acceleration x axis mean", "body acceleration x axis SD",
           "body acceleration y axis mean", "body acceleration y axis SD",
           "body acceleration z axis mean", "body acceleration z axis SD",
           "angular velocity x axis mean", "angular velocity x axis SD",
           "angular velocity y axis mean", "angular velocity y axis SD",
           "angular velocity z axis mean", "angular velocity z axis SD",
           "total acceleration x axis mean", "total acceleration x axis SD",
           "total acceleration y axis mean", "total acceleration y axis SD",
           "total acceleration z axis mean", "total acceleration z axis SD")
n <- rep(c("test"), each = 2947)
colnames(dat) <- names
dat$group <- n
setwd("/Users/mmynatt/Box/DataScienceCourse/UCI HAR Dataset/test")
test_subjects <- fread("subject_test.txt")
dat$subjects <- test_subjects
setwd("/Users/mmynatt/Box/DataScienceCourse/UCI HAR Dataset/test")
test_activity <- fread("y_test.txt")
test_activity <- test_activity %>%
  mutate(V1 = recode(V1, '1' = 'WALKING', '2' = 'WALKING_UPSTAIRS', '3' = 'WALKING_DOWNSTAIRS',
                     '4' = 'SITTING', '5' = 'STANDING', '6' = 'LAYING'))
colnames(test_activity) <- c("ACTIVITY")
dat$activity <- test_activity

setwd("/Users/mmynatt/Box/DataScienceCourse/UCI HAR Dataset/train/Inertial Signals")
trainsets <- c("body_acc_x_train.txt", "body_acc_y_train.txt", "body_acc_z_train.txt", "body_gyro_x_train.txt",
              "body_gyro_y_train.txt", "body_gyro_z_train.txt", "total_acc_x_train.txt", "total_acc_y_train.txt",
              "total_acc_z_train.txt")
dat2 <- data.frame(matrix(NA, nrow = 7352, ncol = 0))
for (i in trainsets) {
  dat2 <- cbind(dat2, rowMeans(fread(i)))
  dat2 <- cbind(dat2, apply(fread(i), 1, sd))
}
q <- rep(c("train"), each = 7352)
colnames(dat2) <- names
dat2$group <- q
setwd("/Users/mmynatt/Box/DataScienceCourse/UCI HAR Dataset/train")
train_subjects <- fread("subject_train.txt")
dat2$subjects <- train_subjects
setwd("/Users/mmynatt/Box/DataScienceCourse/UCI HAR Dataset/train")
train_activity <- fread("y_train.txt")
train_activity <- train_activity %>%
  mutate(V1 = recode(V1, '1' = 'WALKING', '2' = 'WALKING_UPSTAIRS', '3' = 'WALKING_DOWNSTAIRS',
                     '4' = 'SITTING', '5' = 'STANDING', '6' = 'LAYING'))
colnames(train_activity) <- c("ACTIVITY")
dat2$activity <- train_activity

data <- rbind(dat, dat2)
data <- data[,-20]
colnames(data[,20]) <- c("subjects")
colnames(data[,21]) <- c("activity")
data <- mutate_at(data, vars(subjects), as.factor)

summary <- data %>% group_by(subjects) %>%
  summarise(mean_body_x = mean(data$'body acceleration x axis mean', na.rm = TRUE),
                               mean_body_y = mean(data$'body acceleration y axis mean', na.rm = TRUE),
                               mean_body_z = mean(data$'body acceleration z axis mean', na.rm = TRUE),
            mean_angular_vel_x = mean(data$'angular velocity x axis mean', na.rm = TRUE),
            mean_angular_vel_y = mean(data$'angular velocity y axis mean', na.rm = TRUE),
            mean_angular_vel_z = mean(data$'angular velocity z axis mean', na.rm = TRUE),
            mean_total_acc_x = mean(data$'total acceleration x axis mean', na.rm = TRUE),
            mean_total_acc_y = mean(data$'total acceleration y axis mean', na.rm = TRUE),
            mean_total_acc_z = mean(data$'total acceleration z axis mean', na.rm = TRUE)
  )

