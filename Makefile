
# Variables
SCRIPT_NAME=shotsheet
INSTALL_DIR=~/Code/Tools

# Default target
all:
	@echo "Available targets: install, uninstall"

# Install the script
install:
	@mkdir -p $(INSTALL_DIR)
	@cp $(SCRIPT_NAME) $(INSTALL_DIR)/
	@echo "$(SCRIPT_NAME) has been installed to $(INSTALL_DIR)"

# Uninstall the script
uninstall:
	@rm -f $(INSTALL_DIR)/$(SCRIPT_NAME)
	@echo "$(SCRIPT_NAME) has been removed from $(INSTALL_DIR)"