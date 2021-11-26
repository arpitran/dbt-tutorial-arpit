Welcome to your new dbt project!

### Installation

```
python3 -m venv dbt-env             # create the environment
source dbt-env/bin/activate         # activate the environment
```

Activate the new Virtual Environment

On macOS and Linux:\
`source dbt-env/bin/activate`

On Windows:\
`.\dbt-env\Scripts\activate`

Leaving the Virtual Environment\
`deactivate`

Upgrade pip\
`python -m pip install --upgrade pip`

Install dbt\
`pip install dbt`

Upgrade dbt\
`pip install --upgrade dbt`

Installing packages\
`pip install -r requirements.txt`


Validating your warehouse credentials

Use the debug command to check whether you can successfully connect to your warehouse. Simply run `dbt debug` from within a dbt project to test your connection.

### Using a custom profile directory
By default, dbt expects your profiles.yml file to be located in the ~/.dbt/ directory. To check the expected location of your profiles.yml file for your installation of dbt, you can run the following:

```
$ dbt debug --config-dir
To view your profiles.yml file, run:

code C:\Users\ranaa\.dbt
```


### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
