#!/bin/bash

source /home/ubuntu/Bitbucket/prototype/bin/activate

exec uwsgi --ini /home/ubuntu/Bitbucket/prototype/env/uwsgi.ini --py-autoreload 1

