TEMPLATE = subdirs
SUBDIRS += src
include(global.pri)

!no_submodules {
    !exists(src/shared/shared.pri)|!exists(src/backend/src/src.pro)): \
        error(A Git submodule is missing. Run \'git submodule update --init\' in the project root.)
}

OTHER_FILES += \
    qml/*.qml \
    qml/cover/*.qml \
    qml/dialogs/*.qml \
    qml/settings/*.qml \
    qml/view/*.qml \
    rpm/harbour-communi.spec \
    src/app/harbour-communi.desktop \
    src/app/harbour-communi.png \
    README.md
