#!/bin/bash
set -ue

vault lease revoke -prefix grafanacloud/creds
