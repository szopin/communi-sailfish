TEMPLATE = subdirs
include(../global.pri)
backend.file = backend/src/src.pro
app.depends = backend
plugins.depends = backend
SUBDIRS += backend app 
#plugins
