# sudo chown -R vscode:vscode /usr/local/lib/python3.9/site-packages
echo 'poetry config virtualenvs.create false' >> ~/.bashrc
poetry config virtualenvs.create false
poetry install --no-interaction --no-ansi --no-root
pip3 install -e .
pre-commit install
mkdocs serve
