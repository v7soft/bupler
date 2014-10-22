#!/bin/bash

BUP_DIR=/target_for_bup bup index /source_for_bup
BUP_DIR=/target_for_bup bup save -n source_for_bup /source_for_bup
