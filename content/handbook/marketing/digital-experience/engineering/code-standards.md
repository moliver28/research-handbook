---
title: Coding Standards for Digital Experience
description: >-
  Learn more about the coding standards used by the Digital Experience team at GitLab.
---

## Overview

This document outlines the coding standards employed by the Digital Experience team across various projects and technology stacks. These guidelines ensure that our codebases remain clean, maintainable, and scalable as our ecosystem evolves. Key areas covered include project structure, naming conventions, component development, styling, JavaScript best practices, testing, and code review guidelines.

The goal is to foster a consistent development approach that enhances collaboration, reduces bugs, and delivers a high-quality user experience. By adhering to these standards, we strive to create a robust and efficient website aligned with modern web development best practices.

## Project Structure

* Define a clear and organized folder structure for all projects.  
* Keep related files and components together to improve discoverability and maintainability.

## Naming Conventions

* Use clear, descriptive, and consistent naming for files, components, and variables.  
* Follow camelCase for variables and functions, PascalCase for React components, and kebab-case for file and folder names.

## Component Development

* Break down complex UI elements into smaller, reusable components.  
* Ensure components are self-contained and do not have side effects.

## CSS and Styling

* Use a CSS preprocessor like SCSS for modular and maintainable styles.  
* Follow a consistent naming pattern like BEM (Block Element Modifier) for class names.

## JavaScript Practices

### Linting

* Use ESLint with a shared configuration to enforce code quality and consistency.

### Avoid Inline JavaScript

* Refrain from using inline JavaScript in templates. Utilize methods or computed properties instead.

### Code Formatting

* Use Prettier for automatic code formatting to ensure a uniform code style across the project.

## Accessibility

* Follow WCAG guidelines to ensure the website is accessible to all users.  
* Regularly test components and pages with screen readers and other accessibility tools.

## Testing

* Write unit tests for all components and functions using a testing framework like Jest.  
* Ensure end-to-end tests cover critical user flows to prevent regressions.

## Code Review Guidelines

* Conduct thorough code reviews to maintain high code quality.  
* Focus on functionality, readability, and adherence to coding standards.

## Additional Resources

For more detailed guidelines and examples, refer to the [Digital Experience repository](https://gitlab.com/gitlab-com/marketing/digital-experience/) you are workign with, specifcally the `/docs` directory.

By following these coding standards, we aim to maintain code quality, consistency, and readability across all projects.

Please be sure to revis our [code standards](/handbook/marketing/digital-experience/engineering/code-standards/) and [code review values](/handbook/marketing/digital-experience/engineering/code-review-values/).

