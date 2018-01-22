Compare subnets:
cat win-cf_subnetfacts | jq '.[]| "\(.tags.Name) \(.id) \(.cidr_block) "' | sort
cat production-shadow-vpc_subnetfacts | jq '.[]| "\(.tags.Name) \(.id) \(.cidr_block) "' | sort