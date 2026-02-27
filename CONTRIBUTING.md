# Contributing to ruby-namespace-copy.nvim

First off, thank you for considering contributing to `ruby-namespace-copy.nvim`! It's people like you that make the Neovim ecosystem such a great place.

## How Can I Contribute?

### Reporting Bugs

This section guides you through submitting a bug report. Following these guidelines helps maintainers and the community understand your report, reproduce the behavior, and find related bugs.

* **Use the GitHub Issue Tracker.**
* **Check if the bug has already been reported.**
* **Use the Bug Report template.**
* **Provide a minimal reproduction.** Ideally, a small Ruby snippet where the namespace extraction fails.

### Suggesting Enhancements

This section guides you through submitting an enhancement suggestion, including completely new features and minor improvements to existing functionality.

* **Use the GitHub Issue Tracker.**
* **Check if the feature has already been requested.**
* **Use the Feature Request template.**
* **Explain why this feature would be useful** to most users.

### Your First Code Contribution

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Install dependencies (Neovim, Treesitter Ruby parser).
4. Make your changes.
5. Run tests using the provided test suite: `make test` (if applicable) or check the `.github/workflows/test.yml`.
6. Commit your changes using descriptive commit messages.
7. Push to your fork and submit a pull request.

## Styleguide

### Lua Styleguide

* Follow standard Neovim plugin conventions.
* Use 2 spaces for indentation.
* Prefer local variables over global ones.
* Use descriptive variable and function names.

### Commit Messages

This project follows [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).

Format: `<type>[optional scope]: <description>`

**Types:**
* `feat` - New feature
* `fix` - Bug fix
* `docs` - Documentation changes
* `style` - Code style changes (formatting, no logic change)
* `refactor` - Code refactoring
* `perf` - Performance improvements
* `test` - Adding or updating tests
* `ci` - CI/CD changes
* `chore` - Maintenance tasks

**Examples:**
* `feat: add support for singleton classes`
* `fix: handle nested modules correctly`
* `docs: update installation instructions`
* `ci: add lua 5.1 to test matrix`

**Rules:**
* Use the present tense ("add feature" not "added feature")
* Use the imperative mood ("move cursor to..." not "moves cursor to...")
* Limit the first line to 72 characters or less

## Questions?

Feel free to open an issue for any questions you might have!
