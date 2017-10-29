#!/usr/bin/gawk -f 

@include "JSON_include.awk"

# See 6 changes in JSON_include.awk
# Note: JSONPATH is a multi-dimensional array with path elements as in
#   json file (e.g., in quotes if in quotes in original, and nestedness
#   marked with SUBSEP

BEGIN{

  # INIT for 
  JSONPATH["INIT"] = "INIT"; BRIEF=1; STREAM=1;

  data = "{\"access_token\":\"2b96a955b963963732d8118d6c1e74e9c9de5e8edc956f6e2e437d58b90fcf49\",\"token_type\":[\"bearer\",\"two\"],\"scope\":\"write\",\"created_at\":1508880263}";

  parse_json(data);
  for (i in JSONPATH) print i " -> " JSONPATH[i];
  print 
  print JSONPATH["\"access_token\""];
  print JSONPATH["\"token_type\"",0];
}
