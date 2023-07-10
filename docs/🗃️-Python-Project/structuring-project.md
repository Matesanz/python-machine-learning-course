# 🏗️ Structuring a Python Project

Structuring a Python project is **crucial** for maintaining a clean and organized codebase. By following established best practices, you can improve readability, maintainability, and collaboration within your project. In this article, we'll explore a recommended directory structure for a Python project, using the following example:

```console
python_ml_course
├─ .devcontainer
│  ├─ Dockerfile
│  └─ devcontainer.json
├─ .github
│  └─ workflows
│     ├─ deploy-gh-pages.yml
│     └─ semantic-release.yml
├─ .gitignore
├─ .pre-commit-config.yaml
├─ CHANGELOG.md
├─ README.md
├─ docs
├─ mkdocs.yml
├─ notebooks
├─ pyproject.toml
└─ python_ml_course
   └─ __init__.py
```

## Common files and directories

The root directory of your project should contain **files that provide essential information and configurations for the project as a whole**. Here's a breakdown of the key files and directories:

- `.devcontainer`: This directory contains files related to development container configurations, such as `Dockerfile` and `devcontainer.json`. It helps set up a consistent development environment for your project.

- `.github`: This directory contains files related to GitHub-specific workflows and actions. In this example, we have a `.github/workflows` directory that includes workflow files for deploying to GitHub Pages (`deploy-gh-pages.yml`) and semantic release (`semantic-release.yml`).

- `.gitignore`: This file specifies which files and directories should be ignored by version control systems like Git. It helps prevent sensitive or unnecessary files from being committed.

!!! info "More About Gitignore"
    You can find more info about `.gitignore` files under [the related section](gitignore.md)

- `.pre-commit-config.yaml`: This file defines the configuration for the pre-commit hooks. It specifies the tools and checks that should be run before each commit, ensuring code quality and consistency.

!!! info "More About Pre-Commit"
    You can find more info about `.pre-commit-config.yaml` files under [the related section](pre-commit-config.md)

- `CHANGELOG.md`: This file keeps track of the project's changelog and documents the changes made in each version. It helps users and contributors understand what has been added, fixed, or changed in the project.

- `README.md`: This file serves as an introduction and guide to your project. It provides an overview, installation instructions, usage examples, and other relevant information. It is typically the first point of reference for users and contributors.

!!! info "More About README"
    You can find more info about `README.md` files under [the related section](readme-file.md)

- `docs`: This directory is reserved for project documentation. It may contain user guides, API references, or other relevant documentation files.

- `mkdocs.yml`: This file is the configuration file for MkDocs, a static site generator for building documentation. It defines the structure, appearance, and behavior of the generated documentation.

!!! info "More About MkDocs"
    You can find more info about `mkdocs.yml` files under [the related section](mkdocs.md)

- `notebooks`: This directory is used for storing Jupyter notebooks or other interactive documents that showcase examples, experiments, or tutorials related to the project.

- `pyproject.toml`: This file is used by Poetry, a dependency management and packaging tool for Python projects. It defines project metadata, dependencies, and other project-specific settings.

!!! info "More About the pyproject.toml File"
    You can find more info about `pyproject.toml` files under [the related section](pyproject.md)

- `python_ml_course`: This directory represents the Python package or module that contains the actual source code for your project. It typically includes one or more Python files and may have subdirectories for organizing related functionality.

## Organizing the Python Package

The `python_ml_course` directory represents the Python package or module that contains your project's source code. Here are some additional recommendations for organizing the package:

- `__init__.py`: This file is required to make the directory a Python package. It can be left empty or contain initialization code if necessary.

- Additional Python files: Include the relevant Python files that constitute your project's functionality. Break down the code into multiple files based on logical divisions or modules.

- Subdirectories: If your project requires additional organization, create subdirectories within the `python_ml_course` directory to group related code. For example, you might have directories like `models`, `utils`, or `tests`, depending on the nature of your project.

## Conclusion

Structuring your Python project using a well-defined directory structure is essential for maintainability and collaboration. The example structure provided here demonstrates a common layout that promotes organization, documentation, and best practices.

Remember, this structure serves as a starting point, and you should adapt it to fit the specific needs and requirements of your project. Consistency, clarity, and maintainability should be the guiding principles as you organize your project.
