The parity generating technique is one of the most widely used error
detection techniques for the digital data transmission. In digital systems, when binary data is
transmitted and processed, data may be subjected to noise so that such noise can alter 0s (of
data bits) to 1s and 1s to 0s. Hence, parity bit is added to the word containing data to make
number of 1s either even or odd. Thus, it is used to detect errors during the transmission of
binary data. The message containing the data bits along with parity bit is transmitted from
transmitter node to receiver node. At the receiving end, the number of 1s in the message is
counted and if it doesn’t match with the transmitted one, then it means there is an error in the
data.
|D6 D5 D4 D3 D2 D1 D0| → Add parity bit → |D6 D5 D4 D3 D2 D1 D0 PAR|
Parity Generator: It is combinational circuit that accepts an n-1 bit stream data and generates
the additional bit that is to be transmitted with the bit stream. This additional or extra bit is
termed as a parity bit. In even parity bit scheme, the parity bit is ‘0’ if there are even number of
1s in the data stream and the parity bit is ‘1’ if there are odd number of 1s in the data stream.
In odd parity bit scheme, the parity bit is ‘1’ if there are even number of 1s in the data stream
and the parity bit is ‘0’ if there are odd number of 1s in the data stream
Parity Checker: It is a logic circuit that checks for possible errors in the transmission. This
circuit can be an even parity checker or odd parity checker depending on the type of parity
generated at the transmission end. The input to the circuit is the [n-bit data + parity bit] and the
output is 1 in case the transmitted data is erroneous or 0 if it is error-free.
