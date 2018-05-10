1.1 Verify on your system that the directories dot and dot-dot are not the same, except in the
root directory.

./directory_check.sh

1.2 In the output from the program in Figure 1.6, what happened to the processes with process
IDs 852 and 853?

1.3 In Section 1.7, the argument to perror is defined with the ISO C attribute const, whereas
the integer argument to strerror isn’t defined with this attribute. Why?

1.4 If the calendar time is stored as a signed 32-bit integer, in which year will it overflow? How
can we extend the overflow point? Are these strategies compatible with existing
applications?

1.5 If the process time is stored as a signed 32-bit integer, and if the system counts 100 ticks per
second, after how many days will the value overflow?
