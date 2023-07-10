# 📜 Pyproject File

- [Pyproject File](#pyproject-file)
  - [Breaking Down the Pyproject File](#breaking-down-the-pyproject-file)
    - [Release Configuration](#release-configuration)
    - [Formatters Configuration](#formatters-configuration)
    - [Testing Configuration](#testing-configuration)
    - [Linters Configuration](#linters-configuration)
    - [Build System Configuration](#build-system-configuration)


The `pyproject.toml` file is a configuration file used in Python projects, primarily associated with modern Python build systems like Poetry and Flit. It follows the TOML (Tom's Obvious, Minimal Language) syntax format.

The `pyproject.toml` file serves several purposes:

1. **Dependency Management**: It allows you to declare the dependencies required for your project. You can specify the project's direct dependencies, their versions or version constraints, and additional options like whether they are development dependencies or required for specific build steps. This file replaces the older `requirements.txt` file commonly used with tools like Pip.

2. **Build System Configuration**: The `pyproject.toml` file can define various build system configurations, such as specifying the build backend or build tool to use. For example, it can indicate that Poetry or Flit should be used to manage the project's build process.

3. **Plugin Configuration**: Some build systems and tools provide plugins that can be configured through the `pyproject.toml` file. These plugins might offer additional functionality, such as code formatting, linting, testing, or documentation generation. The file allows you to specify and configure these plugins as needed.

4. **Project Metadata**: The `pyproject.toml` file can include metadata about the project, such as its name, version, author, and license. This information helps identify and describe the project accurately.

By consolidating these project-related configurations in a single file, the `pyproject.toml` file simplifies the management of dependencies, build processes, and project metadata. It provides a **standardized approach** for configuring Python projects, particularly when using modern build systems.

!!! warning "pyproject.toml vs. setup.py"

    It's important to note that not all Python projects use the `pyproject.toml` file. Legacy projects or projects that don't use modern build systems may rely on alternative files like `setup.py` for packaging and `requirements.txt` for specifying dependencies. These files are still supported by tools like Poetry and Flit, but they are not the preferred approach and they are discouraged for new projects.

!!! info "The History of pyproject.toml"

    The `pyproject.toml` file was introduced in **PEP 518**, which was approved in **2017**. It was designed to replace the older `setup.py` file, which was used for packaging and distributing Python projects. **The `setup.py` file was originally introduced in PEP 241 in 2001**, and it was the standard approach for packaging Python projects for many years. However, it had several limitations, such as the inability to specify dependencies or build system configurations. The `pyproject.toml` file was designed to address these limitations and provide a more flexible and standardized approach for configuring Python projects. If you want to learn more about the history of the `pyproject.toml` file and its predecessors, the `setup.py` file and the `distutils` library, check out [this article](https://carpentries-incubator.github.io/python_packaging/instructor/04-history-of-packaging.html).

## Breaking Down the Pyproject File

The `[tool.poetry]` section contains configuration options for the Poetry build system and package manager. In this code, it specifies the project's name, version, description, authors, and the `README.md` file to use. It also indicates that the package includes the `python_ml_course` directory.

```toml
[tool.poetry]
name = "python_ml_course"
version = "0.3.0"
description = "will teach you about python basics focused on Machine Learning"
authors = ["Andrés Matesanz <Matesanz.Cuadrado@gmail.com>"]
readme = "README.md"
packages = [{include = "python_ml_course"}]
```

The `[tool.poetry.dependencies]` section lists the project's direct dependencies. Here, it specifies that the project requires Python version 3.9 or higher.

```toml
[tool.poetry.dependencies]
python = "^3.9"
```

The `[tool.poetry.group.dev.dependencies]` section specifies development dependencies, which are packages required during development but not in production. This includes tools like flake8, black, pre-commit, commitizen, bandit, autoflake, isort, pydocstyle, pytest, jupyter, and python-semantic-release.

```toml
[tool.poetry.group.dev.dependencies]
flake8 = "^5.0.4"
black = "^22.8.0"
pre-commit = "^2.20.0"
commitizen = "^2.32.2"
bandit = "^1.7.4"
autoflake = "^1.5.3"
isort = "^5.10.1"
pydocstyle = "^6.1.1"
pytest = "^7.1.3"
jupyter = "^1.0.0"
python-semantic-release = "^7.33.0"
```

The `[tool.poetry.group.docs.dependencies]` section lists the dependencies required for generating documentation. It includes packages such as mkdocs, mkdocstrings, mkdocstrings-python, mkdocs-material, mkdocs-jupyter, and pymdown-extensions.

```toml
[tool.poetry.group.docs.dependencies]
mkdocs = "^1.3.1"
mkdocstrings = {extras = ["python"], version = "^0.20.0"}
mkdocstrings-python = "^0.7.1"
mkdocs-material = "^8.4.2"
mkdocs-jupyter = "^0.22.0"
pymdown-extensions = "^9.10"
```
### Release Configuration

The `[tool.semantic_release]` section configures the semantic-release tool. It specifies options such as the version variable location, the commit message format, emoji mappings for different release types, the build command, and whether to upload to a repository or release.

```toml
[tool.semantic_release]
version_variable = "python_ml_course/__init__.py:__version__"
version_toml = "pyproject.toml:tool.poetry.version"
commit_subject = "🔖 v{version}"
commit_parser = "semantic_release.history.emoji_parser"
major_emoji = "💥"  # breaking change
minor_emoji = "✨,🚑,🎉"  # feature, hotfix, begin
patch_emoji = "🐛,🩹,🔒,📝,⚡️,👷"  # bugfix, simple fix, security, docs, performance
build_command = "poetry build"
upload_to_repository = false
upload_to_release = true  # upload to GitHub release
branch = "main"
```

### Formatters Configuration

The `[tool.black]` section configures the Black code formatter. It sets options such as the maximum line length and maximum complexity allowed in a single function.

```toml
[tool.black]
line_length = 100
max-complexity = 10
```

The `[tool.isort]` section configures the isort library, which is used for sorting imports in Python code. It specifies options such as the profile to use (in this case, "black"), multi-line output style, trailing commas, grid wrapping, parentheses usage, newline before comments, line length, and skip patterns for directories to exclude from sorting.

```toml
[tool.isort]
profile = "black"
multi_line_output = 3
include_trailing_comma = true
force_grid_wrap = 0
use_parentheses = true
ensure_newline_before_comments = true
line_length = 100
extend_skip_glob = ["docs/*", "notebooks/*"]
```

### Testing Configuration

The `[tool.pytest.ini_options]` section configures options for pytest, a testing framework. In this code, it specifies the test paths as the "tests" directory.

```toml
[tool.pytest.ini_options]
testpaths = ["tests"]
```

### Linters Configuration

The `[tool.pydocstyle]` section configures the pydocstyle library, which checks compliance with docstring conventions. It sets the convention to "google" and adds selective checks for certain docstring errors.

```toml
[tool.pydocstyle]
convention = "google"
add-select = ["D400", "D401", "D411"]
```

The `[tool.pylint]` section configures the Pylint linter. It specifies plugin loading and sets messages control options. In this code, it loads various plugins and disables specific messages related to the number of public methods and arguments.

```toml
[tool.pylint]
    [tool.pylint.main]
    load-plugins=[
        "pylint.extensions.check_elif",
        "pylint.extensions.bad_builtin",
        "pylint.extensions.docparams",
        "pylint.extensions.for_any_all",
        "pylint.extensions.set_membership",
        "pylint.extensions.code_style",
        "pylint.extensions.overlapping_exceptions",
        "pylint.extensions.typing",
        "pylint.extensions.redefined_variable_type",
        "pylint.extensions.comparison_placement"]

    [tool.pylint.messages_control]
    disable = [
        "too-few-public-methods",
        "too-many-arguments"]
```

### Build System Configuration

```toml
[build-system]
requires = ["poetry-core>=1.0.0"]
build-backend = "poetry.core.masonry.api"
```

The `[build-system]` section specifies the build system configuration. It specifies the version of poetry-core required and the build backend to use, which is poetry.core.masonry.api.

I hope this explanation helps you understand the `pyproject.toml` file and its various sections within the provided TOML code.