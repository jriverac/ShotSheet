# Variables
SCRIPT_NAME=shotsheet
DEFAULT_INSTALL_DIR=~/Code/Tools

# Default target
all:
	@echo "Available targets: install, uninstall, verify"

# Install the script
install:
	@read -p "Enter the installation folder (default: $(DEFAULT_INSTALL_DIR)): " INSTALL_DIR; \
	INSTALL_DIR=$${INSTALL_DIR:-$(DEFAULT_INSTALL_DIR)}; \
	mkdir -p $$INSTALL_DIR; \
	if [ "$$1" != "-s" ] && [ -f $$INSTALL_DIR/$(SCRIPT_NAME) ]; then \
		read -p "$(SCRIPT_NAME) already exists in $$INSTALL_DIR. Overwrite? (y/n): " CONFIRM; \
		if [ "$$CONFIRM" != "y" ] && [ "$$CONFIRM" != "Y" ]; then \
			echo "Installation aborted."; \
			exit 1; \
		fi; \
	fi; \
	cp $(SCRIPT_NAME) $$INSTALL_DIR/; \
	echo "$(SCRIPT_NAME) has been installed to $$INSTALL_DIR"



# Uninstall the script
uninstall:
	@read -p "Enter the installation folder (default: $(DEFAULT_INSTALL_DIR)): " INSTALL_DIR; \
	INSTALL_DIR=$${INSTALL_DIR:-$(DEFAULT_INSTALL_DIR)}; \
	rm -f $$INSTALL_DIR/$(SCRIPT_NAME); \
	echo "$(SCRIPT_NAME) has been removed from $$INSTALL_DIR"