# Container image that runs your code
FROM elliotxx/kusion-open:v0.3.11-9cb1b965

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY diffs_to_stacks.py /diffs_to_stacks.py

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
