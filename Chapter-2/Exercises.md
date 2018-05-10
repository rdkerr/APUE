2.1 We mentioned in Section 2.8 that some of the primitive system data types are defined in
more than one header. For example, in FreeBSD 8.0, size_t is defined in 29 different
headers. Because all 29 headers could be included in a program and because ISO C does
not allow multiple typedefs for the same name, how must the headers be written?

Headers must include the correct path otherwise a wrong implementation could be used

2.2 Examine your system’s headers and list the actual data types used to implement the
primitive system data types.

char, int, float, long, short, enum, byte, pointers


2.3 Update the program in Figure 2.17 to avoid the needless processing that occurs when
sysconf returns LONG_MAX as the limit for OPEN_MAX.

