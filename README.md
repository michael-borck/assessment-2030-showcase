# Assessment 2030 Showcase: Teaching with AI

**Presenter:** Dr. Michael Borck
**Event:** Assessment 2030 Showcase - Innovation in Teaching
**Organization:** Curtin University
**Date:** 27 November 2025

## Overview

This repository contains presentation materials and a complementary web resource hub for the Assessment 2030 Showcase. The presentation introduces an innovative assessment model that teaches students to think *with* AI rather than around it, featuring:

- **AI as the Client**: Students interact with AI-powered chatbots simulating company employees
- **AI as the Intern**: Students use LLMs as junior assistants while maintaining full responsibility as authors
- **Process-Based Assessment**: Evaluating how students think and work with AI, not just final outputs

## The Complementary Website

Beyond the 10-minute presentation, a full interactive discovery website helps attendees explore deeper:

**Two Discovery Pathways:**
1. **Teaching Style Quiz** - Discover your pedagogical approach and get AI integration ideas tailored to how you teach
2. **AI Literacy Diagnostic** - Assess your AI knowledge and skills, get personalized resource recommendations

**16 Content Resources** - Articles on AI in education, pedagogy, practical techniques, ethics, and more

**Interactive Features** - React-based quizzes with localStorage, smart cross-linking between learning paths

**Live at:** (Enable GitHub Pages from `/docs` folder after pushing)

## Repository Structure

```
.
├── README.md                           # This file
├── _quarto.yml                         # Quarto configuration
├── content/                            # Source .qmd files
│   ├── *.qmd                          # Markdown source files
│   └── teaching-style-results.html    # Teaching style recommendations
├── docs/                               # Rendered website (GitHub Pages)
│   ├── index.html                     # Landing page
│   ├── teaching-style-quiz.html       # 5-question interactive quiz
│   ├── teaching-style-results.html    # Results + AI ideas for your style
│   ├── ai-literacy-diagnostic.html    # 14-question assessment
│   ├── videos.html                    # Embedded expert videos
│   ├── resources-hub.html             # Discovery hub for all content
│   └── content/                       # 16 rendered HTML pages
└── images/                             # Visual assets for presentations
```

## Website Features

### Interactive Quizzes
- **Teaching Style Detector** (5 questions) → Identifies your pedagogical approach among 9 frameworks
- **AI Literacy Diagnostic** (14 questions) → Assesses Knowledge, Skills, and Confidence across 4 proficiency levels

### Smart Recommendations
- **Teaching-style specific** → AI integration ideas tailored to your approach (Traditional, Constructivist, Socratic, Project-Based, Inquiry-Based, Experiential, Collaborative, Differentiated, Montessori)
- **Literacy-level specific** → Resources matched to your AI knowledge (Novice, Developing, Proficient, Advanced)

### Content Organization
- **Foundations** - What is AI and LLMs (non-technical)
- **Practical Skills** - CRAFT Framework, 7 Techniques, Prompting, Context Management, Critique Toolkit
- **Pedagogy & Learning Theory** - AIED, Cognitive Prompting, Using AI to Help You Use AI
- **Ethics & Responsibility** - Academic Integrity, Bias, Black Swans
- **Research & References** - Curated academic resources

## Building the Website

This project uses Quarto to render `.qmd` files to HTML and Tailwind CSS for styling. To rebuild:

```bash
quarto render
```

This renders all content to the `docs/` directory, which is then served via GitHub Pages.

## Deployment

The website is automatically deployed via GitHub Pages:
1. Ensure `docs/` folder contains all rendered HTML
2. Push to main branch
3. Go to repo Settings → Pages → Select "Deploy from a branch" → main `/docs` folder
4. Site will be live at `https://[username].github.io/assessment-2030/`

The presentation QR code links directly to this complementary resource hub.

## Key Files

- `docs/index.html` - Landing page with two discovery paths
- `docs/teaching-style-quiz.html` - Interactive React-based quiz (Tailwind + Babel)
- `docs/ai-literacy-diagnostic.html` - Comprehensive assessment with localStorage
- `content/*.qmd` - Source files for all 13+ content pages
- `_quarto.yml` - Configuration for rendering

## Author

**Dr. Michael Borck**
Lecturer, Business Information Systems
Faculty of Business & Law, School of Management & Marketing
Curtin University
michael.borck@curtin.edu.au

## License

© 2025 Michael Borck. All rights reserved.