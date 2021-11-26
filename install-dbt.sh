python3 -m venv dbt-env
source dbt-env/bin/activate

python -m pip install --upgrade pip

pip install -r requirements.txt

dbt debug --config-dir