pyenv virtualenv 3.10.1 venv_dbt
pyenv local venv_dbt
pyenv activate venv_dbt
pip install poetry==1.1.12
poetry install
poetry run dbt debug