#!/bin/bash
acorn build -t ghcr.io/randall-coding/acorn/solidinvoice && \
acorn push ghcr.io/randall-coding/acorn/solidinvoice && \
acorn run -n solidinvoice --memory=1Gi ghcr.io/randall-coding/acorn/solidinvoice