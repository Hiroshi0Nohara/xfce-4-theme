#!/bin/python

import imaplib
obj = imaplib.IMAP4_SSL('imap.gmail.com',993)
obj.login('asmodeus72legions@gmail.com','shanu_310876') # write your email and app password
obj.select()

cnt = len(obj.search(None, 'UnSeen')[1][0].split())
if(cnt>9):
	print("+")
else:
	print(cnt)
