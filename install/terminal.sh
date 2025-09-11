#!/bin/bash

# Run terminal installers
for installer in ./install/terminal/*.sh; do source $installer; done
