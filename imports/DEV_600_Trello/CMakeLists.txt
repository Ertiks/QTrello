### This file is automatically generated by Qt Design Studio.
### Do not change

qt_add_library(DEV_600_Trello STATIC)
set_source_files_properties(Constants.qml
    PROPERTIES
        QT_QML_SINGLETON_TYPE true
    )

qt6_add_qml_module(DEV_600_Trello
    URI "DEV_600_Trello"
    VERSION 1.0
    RESOURCE_PREFIX "/qt/qml"
    QML_FILES
        Constants.qml
        DirectoryFontLoader.qml
        EventListModel.qml
        EventListSimulator.qml
)
