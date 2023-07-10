# 🔧 Pre-Commit Config File

- [Pre-Commit Config File](#pre-commit-config-file)
  - [Default Stages](#default-stages)
  - [Repositories and Hooks](#repositories-and-hooks)

Maintaining code quality is essential in software development, and automating code checks can significantly improve the consistency and reliability of your codebase. `pre-commit` is a popular framework that allows you to define and enforce code quality checks before committing your code. By configuring a `pre-commit-config.yaml` file, you can define the hooks and checks to run automatically during the commit process.

Let's take a closer look at a sample `pre-commit-config.yaml` file and explore its various sections:

```yaml
default_stages: [commit]
repos:
  - repo: local
    hooks:
      - id: black
        name: Black
        entry: black
        types: [python]
        language: system

      - id: system
        name: Isort
        entry: isort
        types: [python]
        language: system

      - id: pycodestyle
        name: Pycodestyle
        entry: pycodestyle
        args:
          [
            "--config=pyproject.toml",
          ]
        types: [python]
        language: system

      - id: pylint
        name: Pylint
        entry: pylint
        args:
          [
            "--rcfile=pyproject.toml",
          ]
        types: [python]
        language: system

      - id: pydocstyle
        name: pydocstyle
        entry: pydocstyle
        types: [python]
        language: system
```

## Default Stages

The `default_stages` field specifies the default stages in which the hooks defined in this configuration file will run. In this example, the hooks will run during the `commit` stage. You can modify this field to fit your specific workflow requirements.

The available stages are:

- `post-checkout`
- `post-merge`
- `post-rewrite`
- `pre-commit`
- `pre-merge-commit`
- `pre-push`
- `pre-rebase`

## Repositories and Hooks

The `repos` section allows you to define the repositories and associated hooks. In this example, a local repository is defined with multiple hooks for various code quality checks.

- The `black` hook enforces code formatting using the Black code formatter. It runs the `black` command on Python files (`types: [python]`) using the system's default language.

- The `system` hook executes the Isort utility to sort imports in Python files. It uses the `isort` command and operates on Python files.

- The `pycodestyle` hook runs the Pycodestyle linter, also known as pep8, to check code style compliance. It uses the `pycodestyle` command and specifies the `--config=pyproject.toml` argument to provide a custom configuration file.

- The `pylint` hook performs static code analysis using the Pylint linter. It runs the `pylint` command and passes the `--rcfile=pyproject.toml` argument to use a custom configuration file.

- The `pydocstyle` hook checks adherence to docstring conventions using the `pydocstyle` command. It operates on Python files.

Feel free to customize and add more hooks based on your specific code quality requirements.

---

By configuring the `pre-commit-config.yaml` file, you can automate code quality checks and enforce consistent coding standards in your project. The provided example showcases common hooks for code formatting, import sorting, code style, static analysis, and docstring conventions. However, you can adapt and extend the configuration based on your project's needs and preferences.

Remember, maintaining high code quality is an ongoing process, and leveraging tools like `pre-commit` can greatly enhance the efficiency and reliability of your development workflow. Happy coding!

---
