#!/bin/bash

blih -u yoann.milanesio@epitech.eu repository create $1
blih -u yoann.milanesio@epitech.eu repository setacl $1 ramassage-tek r
blih -u yoann.milanesio@epitech.eu repository getacl $1
