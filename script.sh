reponame="repository_dispatch"
orgname="mortenp1337-test-org"
pat="your_pat or $GITHUB_TOKEN"

curl \
  -v \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $pat"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/$orgname/$reponame/dispatches \
  -d '{"event_type":"on-demand-test","client_payload":{"input1":"first input","input2":"second input"}}'