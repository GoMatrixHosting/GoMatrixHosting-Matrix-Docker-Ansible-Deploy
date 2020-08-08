#!/bin/bash

usage() {
  echo "Usage: $0 passfile plaintext-infile ciphertext-outfile"
}
PASSFILE="$1"; shift
if [ "" = "$PASSFILE" ]; then usage 2>&1; exit 1; fi
INFILE="$1"; shift
if [ "" = "$INFILE" ]; then usage 2>&1; exit 1; fi
OUTFILE="$1"; shift
if [ "" = "$OUTFILE" ]; then usage 2>&1; exit 1; fi

#ansible-vault encrypt "$INFILE" --output "$OUTFILE" --vault-id deploy@../../deploy-vault/pass.txt
ansible-vault encrypt "$INFILE" --output "$OUTFILE" --vault-id "deploy@$PASSFILE"
