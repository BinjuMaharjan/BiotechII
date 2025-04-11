"""
Stringslicing.py
Purpose: To extract character at different position, string slicing and replace it.
Author: Binju
Date: April 10, 2025

"""
dnaseq = 'ANTGCTG'
dnaseq[0]
dnaseq[1]
dnaseq[-1]
dnaseq[-2]
dnaseq[-5]
dnaseq[1:4]
dnaseq[1:5]
dnaseq.replace('N','C')

#Activity String
#Create a string for more than 10 DNA sequences with N as missing sequence
myseq = 'ATGCNACNAN'

#Replace N with any other DNA sequence
myseq.replace('N','G')
myseq[4]

#Assign new name for replaced sequence
newmyseq = myseq.replace('N','G')

#Extract any character in the DNA sequence string
newmyseq[4]

#Extract a series of characters from the string
newmyseq[5:6]

newmyseq[1:6]
