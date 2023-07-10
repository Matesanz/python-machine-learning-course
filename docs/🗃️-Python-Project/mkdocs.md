# 📖 Mkdocs file

Documentation plays a vital role in any software project, and organizing it effectively is crucial for readability and accessibility. In Python projects, `MkDocs` is a popular static site generator that simplifies the process of creating and maintaining documentation. One of the key aspects of using `MkDocs` is configuring the `mkdocs.yml` file, which defines the structure, appearance, and behavior of the generated documentation.

Let's take a closer look at a sample `mkdocs.yml` file and explore its various sections.

!!! note "This is just an example"

    The `mkdocs.yml` file is highly customizable, and the specific configuration options you use will depend on your project's requirements. The example below is just one possible configuration.

## Site Configuration

```yaml
site_name: '🐍 Python for Machine Learning Course'
repo_url: https://github.com/Matesanz/python_machine_learning_course
repo_name: Matesanz/python_machine_learning_course
```

The `site_name` field specifies the name of your documentation site. In this example, it is set to '🐍 Python for Machine Learning Course'. Feel free to modify this to match your project.

The `repo_url` and `repo_name` fields indicate the URL and name of the repository associated with your project. These values can be useful for linking to your project's source code.

## Theme Configuration

```yaml
theme:
  name: material
  theme:
    palette:
      primary: teal
  features:
    - content.code.annotate
    - navigation.tracking
    - navigation.tabs
    - navigation.sections
    - navigation.expand
```

The `theme` section allows you to customize the appearance of your documentation. In this example, the `material` theme is used, which provides a clean and modern look. The `palette` option allows you to specify the primary color, which is set to `teal` here. You can modify this to suit your project's branding.

The `features` list enables various features provided by the theme, such as annotated code blocks, navigation tracking, tabs, sections, and expansion. Adjust these features according to your documentation requirements.

## Plugin Configuration

Plugins extend the functionality of `MkDocs` by adding additional features. In this example, several plugins are used:

```yaml
plugins:
  - search
  - autorefs
  - mkdocstrings:
      handlers:
        python:
          options:
            separate_signature: true
  - mkdocs-jupyter
```

- `search`: Enables a search functionality to quickly find information within the documentation.
- `autorefs`: Automatically generates cross-references between pages based on headings.
- `mkdocstrings`: Generates API documentation from docstrings in Python code. It is configured to handle Python code and provides options such as `separate_signature` to display the signature separately from the documentation.
- `mkdocs-jupyter`: Allows the inclusion of Jupyter notebooks in the documentation.

Feel free to add or remove plugins as needed based on your documentation requirements.

## Markdown Extensions

`MkDocs` supports several markdown extensions that enhance the capabilities of the documentation. In this example, various extensions are included:

```yaml
markdown_extensions:
  - admonition
  - pymdownx.highlight:
      anchor_linenums: true
  - pymdownx.inlinehilite
  - pymdownx.snippets
  - pymdownx.details
  - pymdownx.superfences
  - pymdownx.tabbed:
      alternate_style: true

```

- `admonition`: Adds admonition blocks, such as note, warning, tip, etc., to highlight important information.
- `pymdownx.highlight`: Enables syntax highlighting for code blocks and includes line numbers for easy reference.
- `pymdownx.inlinehilite`: Allows syntax highlighting within inline code spans.
- `pymdownx.snippets`: Provides the ability to include code snippets from external files.
- `pymdownx.details`: Enables the use of details/summary blocks to hide/show additional information.
- `pymdownx.superfences`: Extends fenced code blocks with additional capabilities.
- `pymdownx.tabbed`: Creates tabbed content to organize related information with an alternate style.

Feel free to adjust the markdown extensions based on your documentation needs.

## Watch Configuration

```yaml
watch:
  - 'python_ml_course'
  - docs
```

The `watch` section specifies the directories to monitor for changes during development. Whenever a file within the specified directories is modified, `MkDocs` will automatically rebuild and refresh the documentation site. In this example, the directories 'python_ml_course' and 'docs' are being watched. Adjust this section based on the directories relevant to your project.

---

By understanding and customizing the `mkdocs.yml` file, you can structure and tailor your documentation to meet the specific requirements of your Python project. The provided example highlights some common configurations, but feel free to explore the `MkDocs` documentation for more options and possibilities.

Remember, well-organized and easily accessible documentation greatly enhances the user experience and contributes to the success of your project. Happy documenting!

---
