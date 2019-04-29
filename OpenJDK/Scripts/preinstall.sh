#!/bin/bash

# Remove existing OpenJDK 12 installations

for JAVADIR in "$3"/Library/Java/JavaVirtualMachines/jdk-12*; do
  rm -rf "$JAVADIR"
done

exit 0