# uncompyle6 version 3.7.4
# Python bytecode 2.7 (62211)
# Decompiled from: Python 2.7.17 (default, Sep 30 2020, 13:38:04) 
# [GCC 7.5.0]
# Embedded file name: get_data.py
# Compiled at: 2018-04-01 15:30:47
import zipfile

def unpack(filename):
    with zipfile.ZipFile(filename) as (zf):
        zf.extractall()