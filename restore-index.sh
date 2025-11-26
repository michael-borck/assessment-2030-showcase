#!/bin/bash
# Post-render script to restore custom index.html and standardize navbars

echo "🔧 Post-render processing..."

# Step 1: Restore custom index.html
echo "  → Restoring custom index.html..."

cat > /Users/michael/Projects/assessment-2030/docs/index.html << 'HTMLEOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teaching with AI: From Passive Users to Critical Partners</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            line-height: 1.6;
            color: #333;
            background: #f5f7fa;
        }
        .site-nav {
            background: #1e3a5f;
            border-bottom: 3px solid #2c5aa0;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 2px 8px rgba(0,0,0,0.15);
        }
        .nav-container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .nav-brand {
            color: white;
            font-size: 1.3em;
            font-weight: 600;
            text-decoration: none;
        }
        .nav-links { display: flex; gap: 25px; }
        .nav-links a {
            color: rgba(255,255,255,0.9);
            text-decoration: none;
            font-weight: 500;
            padding: 8px 16px;
            border-radius: 4px;
            transition: all 0.2s;
        }
        .nav-links a:hover {
            background: rgba(255,255,255,0.15);
            color: white;
        }
        .container { max-width: 1200px; margin: 40px auto; padding: 0 20px; }
        .header { text-align: center; margin-bottom: 50px; }
        .header h1 { font-size: 2.5em; color: #1e3a5f; margin-bottom: 10px; }
        .header p { font-size: 1.1em; color: #666; }
        .intro { text-align: center; max-width: 800px; margin: 0 auto 50px; font-size: 1.05em; color: #555; }
        .quizzes { display: grid; grid-template-columns: 1fr 1fr; gap: 30px; margin: 50px 0; }
        .quiz-card {
            background: white;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            padding: 30px;
            text-align: center;
            transition: all 0.3s;
        }
        .quiz-card:hover {
            border-color: #2c5aa0;
            box-shadow: 0 8px 20px rgba(44, 90, 160, 0.15);
            transform: translateY(-4px);
        }
        .icon { font-size: 3em; margin-bottom: 15px; }
        .quiz-card h2 { color: #1e3a5f; margin-bottom: 10px; }
        .duration { color: #999; font-size: 0.9em; margin-bottom: 15px; }
        .btn {
            display: inline-block;
            background: #2c5aa0;
            color: white;
            padding: 12px 30px;
            border-radius: 6px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
            margin-top: 15px;
        }
        .btn:hover {
            background: #1e3a5f;
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(44, 90, 160, 0.3);
        }
        .explore {
            background: white;
            border-left: 4px solid #2c5aa0;
            padding: 30px;
            margin: 40px 0;
            border-radius: 4px;
        }
        .explore h3 { color: #1e3a5f; margin-bottom: 20px; }
        .explore ul { list-style: none; }
        .explore li { margin-bottom: 12px; padding-left: 25px; position: relative; }
        .explore li:before {
            content: "→";
            position: absolute;
            left: 0;
            color: #2c5aa0;
            font-weight: bold;
        }
        .explore a { color: #2c5aa0; text-decoration: none; font-weight: 500; }
        .explore a:hover { text-decoration: underline; }
        .footer {
            background: white;
            padding: 40px;
            margin-top: 60px;
            text-align: center;
            border-top: 3px solid #2c5aa0;
        }
        @media (max-width: 768px) {
            .nav-container { flex-direction: column; gap: 15px; }
            .nav-links { flex-wrap: wrap; justify-content: center; gap: 15px; }
            .quizzes { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>
    <nav class="site-nav">
        <div class="nav-container">
            <a href="index.html" class="nav-brand">Assessment 2030: Teaching with AI</a>
            <div class="nav-links">
                <a href="index.html">Home</a>
                <a href="teaching-style-quiz.html">Teaching Style</a>
                <a href="ai-literacy-diagnostic.html">AI Literacy</a>
                <a href="resources-hub.html">Resources</a>
                <a href="videos.html">Videos</a>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="header">
            <h1>Teaching with AI</h1>
            <p>From Passive Users to Critical Partners</p>
            <p style="margin-top: 10px; color: #999;">Assessment 2030 Showcase • 27 November 2025 • Curtin University</p>
        </div>
        <div class="intro">
            <p>This resource hub is designed for <strong>Curtin University staff</strong> attending the Assessment 2030 Showcase presentation.</p>
            <p style="margin-top: 15px;">Start with one of the two interactive discovery quizzes below to find personalized resources and ideas for your teaching.</p>
        </div>
        <div class="quizzes">
            <div class="quiz-card">
                <div class="icon">🎯</div>
                <h2>Teaching Style Quiz</h2>
                <p class="duration">5 minutes</p>
                <p>Identify your pedagogical approach and get AI integration ideas tailored to how you teach.</p>
                <p style="font-size: 0.85em; color: #999; margin-top: 10px;">9 frameworks: Traditional, Constructivist, Socratic, Project-Based, Inquiry-Based, Experiential, Collaborative, Differentiated, Montessori</p>
                <a href="teaching-style-quiz.html" class="btn">Start the Quiz →</a>
            </div>
            <div class="quiz-card">
                <div class="icon">📚</div>
                <h2>AI Literacy Diagnostic</h2>
                <p class="duration">10 minutes</p>
                <p>Assess your AI knowledge, skills, and confidence and get curated resources matched to your level.</p>
                <p style="font-size: 0.85em; color: #999; margin-top: 10px;">Proficiency levels: Novice, Developing, Proficient, Advanced</p>
                <a href="ai-literacy-diagnostic.html" class="btn">Take the Assessment →</a>
            </div>
        </div>
        <div class="explore">
            <h3>Explore Further</h3>
            <ul>
                <li><a href="videos.html">Videos & Expert Insights</a> – Short videos from practitioners and researchers</li>
                <li><a href="resources-hub.html">Full Resources Hub</a> – Browse all 14 curated resources on AI in education</li>
            </ul>
        </div>
        <div class="footer">
            <p><strong>Questions or Feedback?</strong></p>
            <p style="margin-top: 10px;">Dr. Michael Borck | Lecturer, Business Information Systems | Curtin University</p>
            <p><a href="mailto:michael.borck@curtin.edu.au" style="color: #2c5aa0;">michael.borck@curtin.edu.au</a></p>
        </div>
    </div>
</body>
</html>
HTMLEOF

echo "  ✓ index.html restored"

# Step 2: Standardize Quarto-rendered page navbars
echo "  → Standardizing Quarto page navbars..."

python3 << 'PYEOF'
import os
import re
from pathlib import Path

# Define the consistent navbar HTML to inject
NAVBAR_HTML = '''<nav class="site-nav">
    <div class="nav-container">
        <a href="../index.html" class="nav-brand">Assessment 2030: Teaching with AI</a>
        <div class="nav-links">
            <a href="../index.html">Home</a>
            <a href="../teaching-style-quiz.html">Teaching Style</a>
            <a href="../ai-literacy-diagnostic.html">AI Literacy</a>
            <a href="../resources-hub.html">Resources</a>
            <a href="../videos.html">Videos</a>
        </div>
    </div>
</nav>'''

# Define CSS for the navbar
NAVBAR_CSS = '''
/* Consistent Navigation Bar */
.site-nav {
    background: #1e3a5f;
    border-bottom: 3px solid #2c5aa0;
    position: sticky;
    top: 0;
    z-index: 1000;
    box-shadow: 0 2px 8px rgba(0,0,0,0.15);
}
.nav-container {
    max-width: 1400px;
    margin: 0 auto;
    padding: 15px 30px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
}
.nav-brand {
    color: white;
    font-size: 1.3em;
    font-weight: 600;
    text-decoration: none;
}
.nav-links {
    display: flex;
    gap: 20px;
    flex-wrap: wrap;
}
.nav-links a {
    color: rgba(255,255,255,0.95);
    text-decoration: none;
    font-weight: 500;
    padding: 8px 16px;
    border-radius: 4px;
    transition: all 0.2s;
}
.nav-links a:hover {
    background: rgba(255,255,255,0.15);
    color: white;
}
@media (max-width: 768px) {
    .nav-container {
        flex-direction: column;
        gap: 15px;
    }
    .nav-links {
        gap: 12px;
        justify-content: center;
    }
}
'''

docs_content = Path('/Users/michael/Projects/assessment-2030/docs/content')

if docs_content.exists():
    html_files = list(docs_content.glob('*.html'))

    for html_file in html_files:
        with open(html_file, 'r', encoding='utf-8') as f:
            content = f.read()

        # Remove Quarto's header navbar (everything from <header id="quarto-header"> to </header>)
        content = re.sub(
            r'<header id="quarto-header"[^>]*>.*?</header>',
            '',
            content,
            flags=re.DOTALL
        )

        # Inject our navbar CSS into the head section (before </style> if exists, or before </head>)
        if '</style>' in content:
            # Add to existing style block
            content = content.replace('</style>', NAVBAR_CSS + '\n</style>', 1)
        elif '</head>' in content:
            # Create new style block
            style_block = f'<style>\n{NAVBAR_CSS}\n</style>\n</head>'
            content = content.replace('</head>', style_block, 1)

        # Inject our navbar after <body> tag
        content = re.sub(
            r'(<body[^>]*>)',
            r'\1\n' + NAVBAR_HTML + '\n',
            content,
            count=1
        )

        with open(html_file, 'w', encoding='utf-8') as f:
            f.write(content)

        print(f"    ✓ {html_file.name}")

    print(f"  ✓ Processed {len(html_files)} Quarto pages")
else:
    print("  ⚠ docs/content directory not found")

PYEOF

echo "✅ Post-render processing complete!"
