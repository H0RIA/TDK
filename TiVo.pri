# On windows, a shared object is a .dll
# win32: SONAME=dll
# else:  SONAME=so

# This function sets up the dependencies for libraries that are built with
# this project.  Specify the libraries you need to depend on in the variable
# DEPENDENCY_LIBRARIES and this will add
for(dep, DEPENDENCY_LIBRARIES) {
    #message($$TARGET depends on $$dep ($${DESTDIR}/$${dep}.$${SONAME}))
#    CONFIG(debug)
#    {
##        #message(Debug)
##        #message($${DESTDIR}/$${dep}/debug/$${dep}.$${QMAKE_EXTENSION_SHLIB})
#        #message($$OUT_PWD/../$${dep}/debug/$${dep}.$${QMAKE_EXTENSION_SHLIB})
##        win32: LIBS += $${DESTDIR}/$${dep}/debug/$${dep}.$${QMAKE_EXTENSION_SHLIB}
##        else:  LIBS += $${DESTDIR}/$${dep}/lib$${dep}.$${QMAKE_EXTENSION_SHLIB}
#        win32: LIBS += $$OUT_PWD/../$${dep}/debug/$${dep}.$${QMAKE_EXTENSION_SHLIB}
#        else:  LIBS += $$OUT_PWD/../$${dep}/lib$${dep}.$${QMAKE_EXTENSION_SHLIB}
#    }


    #message($$absolute_path($${DESTDIR}))
    #message($$OUT_PWD/../$${dep}))
    CONFIG(release)
    {
        #message(Release)
        ##  message($${DESTDIR}/$${dep}/release/$${dep}.$${QMAKE_EXTENSION_SHLIB})
        #message($$OUT_PWD/../$${dep}/release/$${dep}.$${QMAKE_EXTENSION_SHLIB})
        win32: LIBS += $$OUT_PWD/../$${dep}/release/$${dep}.$${QMAKE_EXTENSION_SHLIB}
        else:  LIBS += $$OUT_PWD/../$${dep}/lib$${dep}.$${QMAKE_EXTENSION_SHLIB}
    }

#    CONFIG(debug)
#    {
#        #message(Debug2)
#        win32: PRE_TARGETDEPS += $$OUT_PWD/../$${dep}/debug/$${dep}.$${QMAKE_EXTENSION_SHLIB}
#        else: PRE_TARGETDEPS += $$OUT_PWD/../$${dep}/lib$${dep}.$${QMAKE_EXTENSION_SHLIB}
#    }

#    CONFIG(release, debug|release)
#    {
#        #message(Release2)
#        win32: PRE_TARGETDEPS += $$OUT_PWD/../$${dep}/release/$${dep}.$${QMAKE_EXTENSION_SHLIB}
#        else: PRE_TARGETDEPS += $$OUT_PWD/../$${dep}/lib$${dep}.$${QMAKE_EXTENSION_SHLIB}
#    }
}
