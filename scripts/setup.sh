#!/bin/bash
set -e

echo "🧠 ai-native setup"
echo "=================="
echo ""
echo "This will create your ai-native workspace."
echo ""

# Prompt for company details
read -p "Company name: " COMPANY_NAME
read -p "Your name (founder): " FOUNDER_NAME
read -p "What does your company do? (1 sentence): " COMPANY_DESCRIPTION

# Create the workspace directory
WORKSPACE="$HOME/ai-native-workspace"
mkdir -p "$WORKSPACE"
cp -r ./core "$WORKSPACE/"
cp -r ./adapters "$WORKSPACE/"

# Fill in COMPANY.md template
sed -i "s/\[COMPANY NAME\]/$COMPANY_NAME/g" "$WORKSPACE/core/agent-docs/COMPANY.md"
sed -i "s/\[2-3 sentences describing the company\]/$COMPANY_DESCRIPTION/g" "$WORKSPACE/core/agent-docs/COMPANY.md"

echo ""
echo "✅ Workspace created at $WORKSPACE"
echo ""
echo "Next steps:"
echo "  1. Fill in $WORKSPACE/core/agent-docs/COMPANY.md"
echo "  2. Fill in $WORKSPACE/core/agent-docs/TECHNICAL.md"
echo "  3. Set up your Obsidian vault: see adapters/obsidian/setup.md"
echo "  4. Configure your first agent: see core/agents/"
echo "  5. Paste session-start.md at the top of your next Claude Code session"
echo ""
echo "Full guide: docs/getting-started.md"
