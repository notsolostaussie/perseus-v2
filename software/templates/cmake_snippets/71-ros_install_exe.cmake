# INSTALL (ROS Executables)
install(TARGETS ${PROJECT_NAME} DESTINATION lib/${PROJECT_NAME})
# Versioning
set_target_properties(${PROJECT_NAME} PROPERTIES VERSION ${PROJECT_VERSION})
