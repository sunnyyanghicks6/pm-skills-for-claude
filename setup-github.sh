#!/bin/bash
# ============================================================
# PM Skills Library — GitHub Setup Script
# Run this from the claude-skills-library folder on your machine
# ============================================================

set -e

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

REPO_NAME="pm-skills-for-claude"

echo -e "${BLUE}🚀 Setting up GitHub repo: ${REPO_NAME}${NC}"
echo ""

# ---- Step 1: Check prerequisites ----
echo -e "${YELLOW}Checking prerequisites...${NC}"

if ! command -v git &> /dev/null; then
    echo "❌ git is not installed. Install it first: https://git-scm.com"
    exit 1
fi

if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) is not installed."
    echo "   Install it: https://cli.github.com"
    echo "   macOS: brew install gh"
    echo "   Windows: winget install GitHub.cli"
    exit 1
fi

# Check gh auth
if ! gh auth status &> /dev/null; then
    echo -e "${YELLOW}You need to authenticate with GitHub first.${NC}"
    gh auth login
fi

echo -e "${GREEN}✓ All prerequisites met${NC}"
echo ""

# ---- Step 2: Initialize git repo ----
echo -e "${YELLOW}Initializing git repo...${NC}"

if [ -d ".git" ]; then
    echo "Git repo already exists, using it."
else
    git init
    git branch -M main
fi

# ---- Step 3: Create .gitignore if needed ----
if [ ! -f ".gitignore" ]; then
    cat > .gitignore << 'GITIGNORE'
.DS_Store
Thumbs.db
*.swp
*.swo
*~
GITIGNORE
fi

# ---- Step 4: Stage and commit ----
echo -e "${YELLOW}Staging and committing files...${NC}"
git add -A
git commit -m "Initial commit: PM Skills Library for Claude

37 production-ready Claude skills for product managers, powered by
frameworks from Shreyas Doshi, Lenny Rachitsky, Aakash Gupta,
Teresa Torres, and more. Includes interactive website with
skill browser, detail pages, and one-click download."

echo -e "${GREEN}✓ Committed $(git log --oneline -1)${NC}"
echo ""

# ---- Step 5: Create GitHub repo ----
echo -e "${YELLOW}Creating GitHub repo: ${REPO_NAME}...${NC}"

if gh repo view "$REPO_NAME" &> /dev/null; then
    echo "Repo already exists, using it."
else
    gh repo create "$REPO_NAME" --public --description "37 production-ready Claude skills for product managers" --source=. --push
    echo -e "${GREEN}✓ Repo created and pushed${NC}"
fi

# ---- Step 6: Push if not already pushed ----
if ! git remote | grep -q origin; then
    GITHUB_USER=$(gh api user --jq '.login')
    git remote add origin "https://github.com/${GITHUB_USER}/${REPO_NAME}.git"
fi

git push -u origin main 2>/dev/null || echo "Already pushed."
echo ""

# ---- Step 7: Enable GitHub Pages ----
echo -e "${YELLOW}Enabling GitHub Pages...${NC}"
GITHUB_USER=$(gh api user --jq '.login')

gh api repos/${GITHUB_USER}/${REPO_NAME}/pages \
    --method POST \
    --field source='{"branch":"main","path":"/"}' \
    2>/dev/null || \
gh api repos/${GITHUB_USER}/${REPO_NAME}/pages \
    --method PUT \
    --field source='{"branch":"main","path":"/"}' \
    2>/dev/null || \
echo "Pages may already be enabled or needs manual setup."

echo ""
echo -e "${GREEN}============================================${NC}"
echo -e "${GREEN}🎉 Done! Your site will be live at:${NC}"
echo -e "${BLUE}   https://${GITHUB_USER}.github.io/${REPO_NAME}/${NC}"
echo ""
echo -e "${YELLOW}   (GitHub Pages takes 1-2 minutes to deploy)${NC}"
echo -e "${GREEN}============================================${NC}"
echo ""
echo -e "GitHub repo: https://github.com/${GITHUB_USER}/${REPO_NAME}"
echo ""
echo -e "${YELLOW}To keep files in sync going forward:${NC}"
echo "   cd $(pwd)"
echo "   git add -A && git commit -m 'Update skills' && git push"
