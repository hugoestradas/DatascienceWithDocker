# Data Science with Docker

🖥🐋📊🛠⚙🚀

Data Science 101 with Docker

A complete scientific environment using Docker, Jupyter Notebooks, Apache Superset, PostgreSQL, Pgweb and MinIO.

Designed to work in Linux (Ubuntu preferably).

Instructions:

1. get into the "prerequisites" folder and run  the "install_docker_docker-compose_.sh".
2. "docker-compose.yml" defines the services and volumes for the environment.
3. "az" (which is optional) contains the required commands to deploy a virtual machine in Azure in which you can cofigure this      environment.

Folders:

* prerequisites: the files required for the installation and configuration of the environment.

* db-scripts: contains the scripts that will configure the PostgreSQL instance, with an specific user, role and schema.

* data-sets: contains a .zip file of 500000 records of sales data and a dataset of firemen records of calls.

* jupyter-notebooks: contains the examples for data analysis usyng Python with Jupyter.
