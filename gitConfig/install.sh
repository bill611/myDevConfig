#!/bin/bash

echo "cp gitignoreglobal ~/.gitignoreglobal"
cp gitignoreglobal ~/.gitignoreglobal

echo "git config --global core.excludesfile ~/.gitignoreglobal"
git config --global core.excludesfile ~/.gitignoreglobal
