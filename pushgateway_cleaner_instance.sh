pushgateway_url=$1
job_name=$2
instances=$(curl  -sL --proxy "" ${pushgateway_url}/metrics | grep "^${job_name}" | cut -d "\"" -f2)
for ins in $instances
do
        echo deleting $ins
	deleted= $(curl  -s -k -X 'DELETE'   --insecure "${pushgateway_url}/metrics/job/${job_name}/instance/${ins}")
done
