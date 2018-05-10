1.1 Verify on your system that the directories dot and dot-dot are not the same, except in the
root directory.

./directory_check.sh

1.2 In the output from the program in Figure 1.6, what happened to the processes with process
IDs 851 and 854?

It is possible an automated process was executed between these processes which caused 852 and 853 to 
already be taken.

1.3 In Section 1.7, the argument to perror is defined with the ISO C attribute const, whereas
the integer argument to strerror isn’t defined with this attribute. Why?

strerror is passed an int which is passed by value therefore we don't have to worry about it's value
being changed in processes outside of this function call, perror is const because we are passed a reference 
and any changes we make to it would be outlast the function therefore it is made constant to avoid this

1.4 If the calendar time is stored as a signed 32-bit integer, in which year will it overflow? How
can we extend the overflow point? Are these strategies compatible with existing
applications?

2^31 / ( 365 days * 24 hrs * 60 mins * 60 secs ) + 1970 (Epoch time) = 2038.09

It will overfow during the year 2038.
We can store the time in a signed 64-bit integer but this might have adverse effects on existing apps

1.5 If the process time is stored as a signed 32-bit integer, and if the system counts 100 ticks per
second, after how many days will the value overflow?

2^31 / ( 24 hrs * 60 mins * 60 secs * 100 ticks) = 248.55

After 248 days

