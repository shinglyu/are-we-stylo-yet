STYLO_SKIP=$(find . -name crashtests.list | xargs grep "skip-if(stylo)" | wc -l)
TOTAL=$(find . -name crashtests.list | xargs cat | sed "/^#.*/d" | sed "/^$/d" | sed "/^include.*/d" | wc -l)
echo "{\"crashtest_fails\": ${STYLO_SKIP}, \"crashtest_total\": ${TOTAL}}"
