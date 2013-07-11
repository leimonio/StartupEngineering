#!/bin/bash

heroku login
ssh-keygen -t rsa
heroku keys:add