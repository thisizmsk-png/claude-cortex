---
name: youtube-afternoon-upload
description: Run YouTube pipeline afternoon upload (round-robin channel selection)
---

Run the YouTube automation pipeline for an afternoon upload. Execute this command from the project directory:

cd /Users/saikrishnamadavarapu/Development/youtube-automation-framework && source config/.env && venv/bin/python3 scripts/run_roundrobin.py

This will:
1. Auto-select the next channel in the round-robin rotation
2. Scrape trending topics
3. Generate a script using the local LLM
4. Create voice-over, video, thumbnail, and metadata
5. Upload to YouTube on "The Money Decoded" channel
6. Record everything in the Supabase database

If the pipeline fails, check the error in pipeline.log and report what went wrong.