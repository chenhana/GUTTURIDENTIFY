cmake_minimum_required(VERSION 3.16)

project(Gutter2 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appGutter2
    main.cpp
)

qt_add_qml_module(appGutter2
    URI Gutter2
    VERSION 1.0
    QML_FILES
    RESOURCES
QML_FILES CaseBook.qml  UserLoad.qml
QML_FILES Main.qml
RESOURCES pic.qrc
QML_FILES BufferSocket.qml
QML_FILES VideoView.qml

)

# 加载不出图片添加了这几行
set(QML_RESOURCES pic.qrc)
qt6_add_resources(QML_RESOURCE_FILES ${QML_RESOURCES})
target_sources(appGutter2 PRIVATE ${QML_RESOURCE_FILES})

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appGutter2 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appGutter2
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appGutter2
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appGutter2
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
