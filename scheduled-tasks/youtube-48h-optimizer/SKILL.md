---
name: youtube-48h-optimizer
description: Check YouTube video performance at 4h/8h/24h/48h marks and swap titles if underperforming
---

Run the post-upload optimization check for all pending YouTube videos.

Steps:
1. cd to /Users/saikrishnamadavarapu/Development/youtube-automation-framework
2. Run: venv/bin/python3 scripts/post_upload_optimizer.py --all
3. Report what happened — how many videos were checked, any actions taken (title swaps, performance reports sent)

This checks all uploaded videos that are within their 48-hour optimization window. It:
- Polls YouTube for current view/like/comment counts
- Compares against historical averages
- Swaps to the next-best title variant if views are below 50% of average at the 24h mark
- Sends Telegram performance reports
- Marks videos as "optimization complete" after 48 hours

If there are no pending videos, that's fine — just report "No pending videos to optimize."