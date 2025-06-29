# TODO List for JLM Theme

## High Priority

### Version Control & Documentation
- [ ] Update version.xml to v2.0.0 with current date
- [ ] Implement Conventional Commits standard for all future commits
- [ ] Create CONTRIBUTING.md with development guidelines
- [ ] Create INSTALL.md with step-by-step installation instructions
- [ ] Add inline documentation to JLMThemePlugin.inc.php
- [ ] Document all LESS variables and their usage

### Build System
- [ ] Create package.json with build scripts
- [ ] Replace ziptheme.command with Node.js build script
- [ ] Set up LESS compilation with source maps
- [ ] Implement CSS minification in build process
- [ ] Add npm scripts for watch mode
- [ ] Create automated tarball generation script

### Code Quality
- [ ] Add .editorconfig file for consistent formatting
- [ ] Configure stylelint for LESS files
- [ ] Add .gitignore entries for build artifacts
- [ ] Fix mixed indentation in LESS files
- [ ] Remove commented-out code from JLMThemePlugin.inc.php
- [ ] Consolidate duplicate font-face declarations

## Medium Priority

### Performance Optimization
- [ ] Add font-display: swap to all @font-face rules
- [ ] Create Latin subset versions of fonts
- [ ] Implement font preloading for critical fonts
- [ ] Optimize font loading order
- [ ] Reduce number of font weights loaded by default
- [ ] Minify SVG assets

### Theme Features
- [ ] Add dark mode support preparation
- [ ] Create theme options for font size adjustment
- [ ] Implement print stylesheet
- [ ] Add RTL (right-to-left) language support
- [ ] Create custom 404 and error pages
- [ ] Add breadcrumb navigation

### Testing & Compatibility
- [ ] Test compatibility with OJS 3.2.x
- [ ] Test compatibility with OJS 3.3.x
- [ ] Create visual regression test suite
- [ ] Document minimum browser requirements
- [ ] Test with screen readers
- [ ] Validate HTML output

## Low Priority

### Developer Experience
- [ ] Create development Docker container
- [ ] Add hot reload for LESS changes
- [ ] Create component showcase/style guide
- [ ] Write JSDocs for any JavaScript
- [ ] Add source code comments
- [ ] Create theme development tutorial

### Accessibility
- [ ] Audit color contrast ratios
- [ ] Add skip navigation links
- [ ] Ensure all interactive elements have focus states
- [ ] Add ARIA labels where needed
- [ ] Test keyboard navigation flow
- [ ] Create accessibility statement

### Maintenance
- [ ] Set up GitHub Actions for automated releases
- [ ] Create issue templates
- [ ] Add pull request template
- [ ] Set up automated dependency updates
- [ ] Create security policy
- [ ] Add code of conduct

## Future Enhancements

### Advanced Features
- [ ] Create child theme generator
- [ ] Add theme customizer UI
- [ ] Implement CSS custom properties
- [ ] Create plugin API for theme extensions
- [ ] Add advanced typography controls
- [ ] Create theme update notification system

### Community
- [ ] Create demo site
- [ ] Write blog post about theme development
- [ ] Create video tutorials
- [ ] Set up community forum/discussions
- [ ] Translate theme to other languages
- [ ] Create theme marketplace listing

## Bug Fixes

### Known Issues
- [ ] Fix duplicate removeStyle calls in JLMThemePlugin.inc.php (lines 53-57)
- [ ] Resolve font path issues in production environments
- [ ] Fix responsive layout issues on tablet devices
- [ ] Address console warnings about missing font files
- [ ] Fix CSS specificity conflicts with parent theme
- [ ] Resolve jQuery dependency loading order

## Notes

- Tasks are ordered by priority within each section
- Each task should result in a meaningful commit
- Update CHANGELOG.md after completing each section
- Test thoroughly after each major change
- Keep backward compatibility when possible