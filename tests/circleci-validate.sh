#!/usr/bin/env bash
set -e

echo "Running circleci config validation"
circleci config validate
