To Do Application 
-------------------------
User
UserId, primary key
firstName, notNull, char(20),
middleName, null, char(20),
lastName, notNull, char(20)
email, notNull, check constraint, char(30)
password, hash, constraint
isVerified, bool
createdAt, timestamp
updatedAt, timestamp
isDeleted, bool, notNull


List
listId, primary key
name, notNull, char(20)
createdAt, timestamp
updatedAt, timestamp
userId, foreign key (many to one)
taskId, foreign key (one to many)
isDeleted, boolnotNull

Task
taskId, primary key
name, notNull, char(20)
summary, notNull, char(50)
dueDate, null, date
createdAt, timestamp
updatedAt, timestamp
priority, notNull, (HIGH, MEDIUM, LOW)
attachmentId, null, foreign key(one to many)  
reminderId, null, foreign key(one to many)
tagId, null, foreign key(many to many)
commentId, null, foreign(one to many)
listId, notNull, foreign(many to one)
isDeleted, bool, notNull
isPrivate, default = private, notNull
state, notNull, (TODO, COMPLETE, OVERDUE), default= TODO

Attachment
attachmentId, primary key
name, notNull, char(20)
size, notNull, double
dateAttached, notNull, date
path, notNull, char(300)
createdAt, timestamp
updatedAt, timestamp
isDeleted, bool, notNull
taskId, foreign key (one to one)

Tag
tagId, primary key
name, notNull, char(20)
createdAt, timestamp
updatedAt, timestamp
isDeleted, bool, notNull
taskId, foreign key (many to many)
userId, foreign (one to one)

Comment
commentId, primary key
description, notNull, char(20)
createdAt, timestamp
updatedAt, timestamp
isDeleted, bool, notNull
taskId, foreign key (one to one)
userId, foreign (if shareable)

Reminder
reminderId, primary key
dateTime, notNull, dateTime
description, notNull, char(20)
createdAt, timestamp
updatedAt, timestamp
isDeleted, bool, notNull
userId, foreign key (one to one)
taskId, foreign key (one to one)
isDone, bool, notNull







