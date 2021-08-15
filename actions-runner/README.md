Docker Image For GitHub Actions Runner
======================================

Caveat
------
This will not work when `services` section is defined in GitHub Actions (YAML)
manifest, as it will try to launch the services as Docker images.

    Error: Container feature is not supported when runner is already running
    inside container.

