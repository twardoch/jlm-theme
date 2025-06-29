# Changelog

All notable changes to the JLM Theme for OJS 3.x will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased] - 2025-06-29

### Added
- Font Awesome web fonts (eot, ttf, woff, woff2 formats)
- Additional font variants for CharletSL family (BoldItalic, Light, LightItalic, Medium, MediumItalic, Regular, Semibold, SemiboldItalic)
- Additional font variants for Langfair family (Head10, Head10Bold, Head10BoldItalic, Head10Italic, Head40Bold, Head40BoldItalic, Head40Italic, Head50, Head50Bold, Head50BoldItalic, Head50Italic, Sub456, Sub456Bold, Sub456BoldItalic, Sub456Italic, Sub555Bold, Sub555BoldItalic, Sub555Italic)
- New JLMLogo.woff2 font file
- OJS logo SVG asset
- Enhanced submissions page styling with improved font sizes and spacing

### Changed
- Updated article details template with custom article table of contents structure
- Modified issue table of contents template with enhanced heading hierarchy
- Improved component styles with better spacing and typography settings
- Enhanced main styles with additional utility classes
- Updated article details LESS styles for better visual hierarchy
- Modified indexJournal page styles
- Version updated to 1.0.4.4 (dated 2020-12-22)
- Updated tarball archive (jlmTheme.tar.gz)

### Removed
- Extensive documentation directory (docs/) containing:
  - Multiple font files and documentation
  - CSS build files and indexes
  - Various utility scripts (builddocs.command, watch.command)
- Redundant font files in various formats (eot, ttf, woff)
- Font-specific HTML, LESS, and CSS files
- Old index.less file from root directory

### Technical Details
- Major cleanup of font assets, consolidating to WOFF2 format for better performance
- Removed legacy font formats in favor of modern web font standards
- Streamlined directory structure by removing the documentation build artifacts
- Maintained all license files (OFL, GPL) for proper attribution

## [1.0.4.3] - Earlier

### Note
Prior changes were not formally documented. This changelog begins tracking from the current state of the repository.