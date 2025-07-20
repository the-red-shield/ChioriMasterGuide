# Contributing to Chiori Master Guide

Thank you for considering contributing to the Chiori Master Guide! This document provides guidelines and instructions for contributing to this project.

## Code of Conduct

Please be respectful and considerate of others when contributing to this project.

## How Can I Contribute?

### Reporting Bugs

If you find a bug, please create an issue with the following information:

- A clear and descriptive title
- Steps to reproduce the issue
- Expected behavior versus actual behavior
- Screenshots if applicable
- Any additional context

### Suggesting Enhancements

If you have ideas for enhancing the project, please create an issue with:

- A clear and descriptive title
- Detailed explanation of the suggested enhancement
- Any examples or references

### Adding New Calculators

To add a new calculator:

1. Follow the existing file structure for consistency
2. Use the appropriate naming convention
3. Implement all required methods (setup_*, calculate_damage, display_*)
4. Add proper usage examples at the end of the file
5. Update the PROJECT_OVERVIEW.rb file to include your new calculator

### Pull Requests

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature-name`)
3. Make your changes
4. Commit your changes (`git commit -m 'Add some feature'`)
5. Push to the branch (`git push origin feature/your-feature-name`)
6. Open a Pull Request

## Style Guide

- Follow the existing code style and structure
- Use meaningful variable and method names
- Include comments for complex logic
- Keep methods focused on a single responsibility

## Development Setup

1. Make sure you have Ruby installed (version 2.7.0 or higher recommended)
2. Clone the repository:

   ```bash
   git clone https://github.com/the-red-shield/ChioriMasterGuide.git
   cd ChioriMasterGuide
   ```

3. Run the main file to ensure everything works:

   ```bash
   ruby Chiori.rb
   ```

## Testing

Before submitting a pull request, please test your changes by:

1. Running the affected files
2. Verifying that the output is correct
3. Checking for any syntax errors or runtime exceptions

## Questions?

If you have any questions about contributing, please create an issue with your question and we'll do our best to help.
