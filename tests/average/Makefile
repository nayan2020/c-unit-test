# Name of the component under test
COMPONENT_NAME = average

# Dinamically generate average path

MAKEFILE_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LISTS))))
PROJECT_DIR = $(realpath $(MAKEFILE_DIR)../..)
SRC_DIR = $(PROJECT_DIR)/src
TEST_DIR = $(PROJECT_DIR)/tests

# Location of CppUTest (if not already set)
CPPUTEST_HOME ?= $(PROJECT_DIR)/tools/cpputest

# include and source files for component under test
INCLUDE_DIRS = $(SRC_DIR)/$(COMPONENT_NAME)
SRC_DIRS = $(SRC_DIR)/$(COMPONENT_NAME)

# Includes CppUTest header files
INCLUDE_DIRS += $(CPPUTEST_HOME)/include

# Directries containing the unit tests
TEST_SRC_DIRS = $(TEST_DIR)/$(COMPONENT_NAME)

# Run MakefileWorker.mk with the variables set in the  makefile
include $(CPPUTEST_HOME)/build/MakefileWorker.mk




