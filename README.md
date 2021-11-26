Welcome to your new dbt project!

### Installation

```bash
$ python3 -m venv dbt-env               # create the environment

$ source dbt-env/bin/activate           # activate the virtual environment on macOs and Linux

$ python -m pip install --upgrade pip   # upgrade pip

$ pip install dbt                       # install dbt

$ pip install --upgrade dbt             # upgrade dbt

$ pip install -r requirements.txt       # Install dependencies
```

### Validating your warehouse credentials

Use the debug command to check whether you can successfully connect to your warehouse. Simply run `dbt debug` from within a dbt project to test your connection.

### Using a custom profile directory
By default, dbt expects your profiles.yml file to be located in the ~/.dbt/ directory. To check the expected location of your profiles.yml file for your installation of dbt, you can run the following:

```bash
$ dbt debug --config-dir
```
There are two ways to direct dbt to a different location for your profiles.yml file:

1. Use the --profiles-dir option when executing a dbt command This option can be used as follows:

```
$ dbt run --profiles-dir path/to/directory
```

If using this method, the --profiles-dir option needs to be provided every time you run a dbt command.

2. Use the DBT_PROFILES_DIR environment variable to change the default location Specifying this environment variable overrides the directory that dbt looks for your profiles.yml file in. You can specify this by running:

```
$ export DBT_PROFILES_DIR=path/to/directory
```

### Using the starter project

Try running the following commands:
1. Run the model
``` bash
$ dbt run
```
2. Test the model:
```bash
$ dbt test
```
3. Run the models:
```bash
$ dbt run
```
4. Generate documentation for the project:
```bash
$ dbt docs generate
```
5. View the documentation for the project:
```bash
$ dbt docs serve
```

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

### Visual Studio

Markdown Preview

On Windows:\
`Ctrl+Shift+V`

On Mac:\
`CMD+Shift+V`

