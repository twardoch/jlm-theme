# JLM Theme Improvement Plan

## Executive Summary

The JLM Theme for OJS 3.x is a custom child theme that extends the default OJS theme with specialized typography and styling for the Journal of Language Modelling. This improvement plan outlines strategic enhancements to make the theme more stable, elegant, maintainable, and easily deployable.

## Current State Analysis

### Strengths
1. **Typography System**: Comprehensive font setup with multiple families (JLMHuge, JLMHead, JLMText, JLMSmall, JLMMono, JLMSans, JLMLogo, JLMIcons)
2. **Inheritance Model**: Properly extends the default OJS theme as a child theme
3. **LESS Architecture**: Modular styling with organized directory structure
4. **Font Optimization**: Modern WOFF2 formats for better performance
5. **Responsive Design**: Inherits responsive capabilities from parent theme

### Areas for Improvement
1. **Version Inconsistency**: Last version update was 2020-12-22 (v1.0.4.4) but recent commits suggest active development
2. **Generic Commit Messages**: Git history shows uninformative commit messages ("up", "Changed file")
3. **Documentation**: Limited documentation beyond basic README
4. **Build Process**: Manual tarball creation via shell script
5. **Font Loading**: Mixed approach with local fonts and CDN fonts (Google Fonts)
6. **Testing**: No visible test infrastructure
7. **Development Workflow**: No clear development guidelines or contribution process

## Improvement Strategy

### Phase 1: Foundation and Stability (Weeks 1-2)

#### 1.1 Version Control and Documentation
- **Implement Semantic Versioning**: Update to v2.0.0 to reflect breaking changes
- **Commit Message Convention**: Adopt Conventional Commits standard
- **Enhanced Documentation**:
  - Create CONTRIBUTING.md with development guidelines
  - Add INSTALL.md with detailed installation instructions
  - Document theme customization options
  - Create a style guide for the typography system

#### 1.2 Build System Modernization
- **Replace Shell Scripts**: Implement Node.js-based build system
- **Package.json Setup**:
  ```json
  {
    "scripts": {
      "build": "npm run build:less && npm run build:assets && npm run build:package",
      "build:less": "lessc jlmTheme/styles/index.less jlmTheme/styles/compiled.css",
      "build:assets": "node scripts/copy-assets.js",
      "build:package": "node scripts/create-package.js",
      "watch": "npm-watch",
      "lint": "stylelint 'jlmTheme/styles/**/*.less'",
      "test": "npm run lint"
    }
  }
  ```
- **Automated Release Process**: GitHub Actions for creating releases

#### 1.3 Code Quality and Testing
- **Linting Configuration**:
  - Add .stylelintrc for LESS/CSS linting
  - Configure EditorConfig for consistent formatting
- **Visual Regression Testing**: 
  - Implement Percy or similar for UI testing
  - Create test pages for major components
- **Compatibility Matrix**: Document and test against OJS versions

### Phase 2: Architecture and Performance (Weeks 3-4)

#### 2.1 Font Loading Optimization
- **Font Loading Strategy**:
  ```less
  // Implement font-display: swap for better performance
  @font-face {
    font-family: "JLMText";
    font-display: swap;
    // ... rest of font definition
  }
  ```
- **Subset Fonts**: Create Latin-only subsets for faster initial load
- **Preload Critical Fonts**: Add link preload tags for primary fonts
- **Font Loading API**: Implement progressive font loading

#### 2.2 LESS Architecture Refactoring
- **Variable Organization**:
  ```less
  // variables.less restructuring
  // 1. Colors
  @color-primary: #000;
  @color-secondary: #333;
  
  // 2. Typography
  @font-size-base: 16px;
  @line-height-base: 1.5;
  
  // 3. Spacing
  @spacing-unit: 8px;
  @spacing-small: @spacing-unit;
  @spacing-medium: @spacing-unit * 2;
  ```
- **Mixin Library**: Create reusable mixins for common patterns
- **Component Isolation**: Better separation of concerns

#### 2.3 Responsive Enhancement
- **Mobile-First Refactoring**: Ensure all components work well on mobile
- **Touch Target Optimization**: Improve interactive element sizes
- **Performance Budget**: Establish and monitor CSS size limits

### Phase 3: Features and Elegance (Weeks 5-6)

#### 3.1 Theme Customization Options
- **Admin Interface Options**:
  - Font size controls
  - Color scheme variants (light/dark mode preparation)
  - Layout density options
- **CSS Custom Properties**: Implement for runtime customization
  ```css
  :root {
    --jlm-font-size-base: 16px;
    --jlm-line-height-base: 1.5;
    --jlm-color-primary: #000;
  }
  ```

#### 3.2 Accessibility Improvements
- **WCAG 2.1 AA Compliance**:
  - Ensure proper color contrast ratios
  - Add focus indicators for all interactive elements
  - Implement skip navigation links
- **Screen Reader Optimization**: Proper ARIA labels and semantic HTML
- **Keyboard Navigation**: Full keyboard support for all features

#### 3.3 Typography Enhancements
- **OpenType Features**: Enable advanced typography features
  ```less
  .article-content {
    font-feature-settings: "liga" 1, "kern" 1, "onum" 1;
    text-rendering: optimizeLegibility;
  }
  ```
- **Responsive Typography**: Implement fluid type scales
- **Reading Experience**: Optimize line lengths and spacing

### Phase 4: Deployment and Maintenance (Weeks 7-8)

#### 4.1 Deployment Automation
- **CI/CD Pipeline**:
  ```yaml
  # .github/workflows/release.yml
  name: Release
  on:
    push:
      tags:
        - 'v*'
  jobs:
    build:
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v2
        - name: Build theme
          run: |
            npm ci
            npm run build
        - name: Create release
          uses: softprops/action-gh-release@v1
          with:
            files: jlmTheme.tar.gz
  ```
- **Version Bumping**: Automated version updates
- **Change Log Generation**: Automated from commit messages

#### 4.2 Monitoring and Maintenance
- **Error Tracking**: Implement client-side error logging
- **Performance Monitoring**: Track Core Web Vitals
- **Update Notifications**: System for alerting about theme updates

#### 4.3 Developer Experience
- **Development Environment**:
  - Docker setup for consistent development
  - Hot reload for LESS changes
  - Style guide with live examples
- **Testing Fixtures**: Sample content for testing
- **Migration Guides**: For upgrading from older versions

## Implementation Timeline

### Month 1
- Week 1-2: Foundation and Stability
- Week 3-4: Architecture and Performance

### Month 2
- Week 5-6: Features and Elegance
- Week 7-8: Deployment and Maintenance

## Success Metrics

1. **Performance**:
   - Page load time < 3 seconds on 3G
   - CSS file size < 100KB (minified + gzipped)
   - Font loading complete < 2 seconds

2. **Quality**:
   - 0 linting errors
   - 100% keyboard navigable
   - WCAG 2.1 AA compliant

3. **Developer Experience**:
   - Build time < 10 seconds
   - Clear documentation
   - Automated release process

4. **User Satisfaction**:
   - Improved readability scores
   - Positive accessibility audit
   - Faster perceived performance

## Risk Mitigation

1. **OJS Compatibility**: Maintain compatibility matrix and test against multiple versions
2. **Breaking Changes**: Use semantic versioning and provide migration guides
3. **Performance Regression**: Implement performance budgets and monitoring
4. **Font Licensing**: Ensure all fonts are properly licensed and documented

## Long-term Vision

1. **Theme Framework**: Extract reusable components for other OJS themes
2. **Plugin Ecosystem**: Create companion plugins for extended functionality
3. **Community Contribution**: Open source best practices and community engagement
4. **Internationalization**: Support for RTL languages and locale-specific typography

## Conclusion

This improvement plan transforms the JLM Theme from a functional custom theme into a robust, maintainable, and elegant solution. By focusing on stability, performance, and developer experience, we create a theme that serves both end-users and developers effectively. The phased approach ensures continuous improvement while maintaining backward compatibility and production stability.