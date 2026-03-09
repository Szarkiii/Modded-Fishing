# Random Color Fishing Auto-Clicker - Quick Start

## What Is This?

An addon that automatically clicks the correct hotbar slot during **random color fishing minigames**.

**How it works:**
1. A RANDOM COLOR appears (doesn't matter what)
2. A RANDOM NUMBER (2-9) appears
3. You must click hotbar slot matching the NUMBER
4. This addon detects the number and clicks automatically!

---

## Installation (3 Steps)

### 1. Install Forge
- Download [Minecraft Forge 1.20.1](https://minecraftforge.net/) (Build 47+)
- Run installer → "Install client"
- Restart Minecraft launcher

### 2. Install Addon
Copy `moddedfishing-1.0.0.jar` to:
- Windows: `%appdata%\.minecraft\mods`
- Mac: `~/Library/Application Support/minecraft/mods`
- Linux: `~/.minecraft/mods`

### 3. Play
Launch Minecraft with Forge. Done!

---

## How to Use

**In Game:**
1. Start the fishing minigame
2. **Press F** to enable auto-clicker
3. **Watch it fish** - Number detected, slot clicked automatically!
4. **Press F** to disable when done

That's it!

---

## Default Settings

The addon works with sensible defaults. If it's not detecting numbers:

### Adjust Detection Tolerance

Edit: `.minecraft/config/moddedfishing-common.toml`

```toml
[fishing]
    color_detection_delay = 1    # How often to scan
    click_delay = 2               # Delay before clicking
    enable_debug = false          # Show detected numbers
    pixel_tolerance = 0.15        # Detection sensitivity (0-1)
    play_click_sound = false      # Sound effect
```

**Not detecting numbers?**
- Set `enable_debug = true` to see what's happening
- Try increasing `color_detection_delay` to give more time per scan
- Adjust `pixel_tolerance` (default 0.15) - higher = more forgiving

**Wrong slot clicked?**
- The addon should click the slot matching the NUMBER shown
- If it's wrong, the number detection may need tweaking

**Too slow/fast?**
- Decrease `click_delay` for faster clicking (minimum: 0)
- Increase for slower clicks (recommended: 2-5)

---

## Configuration

```toml
[fishing]
    # How often to check for numbers (1 = every tick, 20 = every second)
    color_detection_delay = 1
    
    # Ticks to wait before clicking (0 = instant, recommended: 2-5)
    click_delay = 2
    
    # Show detected numbers in chat (true/false)
    enable_debug = false
    
    # How forgiving number detection is (0.0-1.0, higher = more forgiving)
    pixel_tolerance = 0.15
    
    # Play click sound (true/false)
    play_click_sound = false
```

---

## How It Works

```
Fishing Minigame:
  1. Random color appears (Red, Blue, Green, etc.)
  2. Random number appears (2, 5, 8, etc.)
  3. Addon detects the NUMBER
  4. Addon clicks hotbar slot matching number
  5. Fish caught! Repeat.
```

The **color doesn't matter** - only the **number matters**!

---

## Number to Slot Mapping

Simple: The number shown = the slot to click

| Number Shown | Hotbar Slot to Click |
|---|---|
| 2 | Slot 2 |
| 3 | Slot 3 |
| 4 | Slot 4 |
| 5 | Slot 5 |
| 6 | Slot 6 |
| 7 | Slot 7 |
| 8 | Slot 8 |
| 9 | Slot 9 |

---

## Troubleshooting Quick Fixes

| Problem | Solution |
|---------|----------|
| Not detecting numbers | Set `enable_debug = true`, check chat for detections |
| Detecting wrong numbers | Decrease `pixel_tolerance` to 0.10 |
| Not detecting at all | Increase `pixel_tolerance` to 0.20-0.25 |
| Clicking too slow | Decrease `click_delay` to 0-1 |
| Clicking too fast | Increase `click_delay` to 5-10 |
| Won't toggle | Make sure F key is pressed (check chat) |

---

## Testing Setup

1. **Enable debug:**
   ```toml
   enable_debug = true
   ```

2. **Start fishing minigame**

3. **Press F to enable**

4. **Watch chat** for detected numbers like: "Detected number: 5"

5. **Check if correct** - Does it detect the right numbers?

6. **Adjust `pixel_tolerance`** if needed:
   - Too many wrong detections? Lower it to 0.10
   - Not detecting at all? Raise it to 0.20-0.25

7. **Disable debug** when working:
   ```toml
   enable_debug = false
   ```

---

## Performance

This addon is very lightweight:
- Minimal CPU usage
- No FPS impact
- < 2MB memory
- Safe to leave running

---

## Controls

| Key | Action |
|-----|--------|
| **F** | Toggle auto-clicker ON/OFF |

---

## Quick Reference

**What the addon does:**
- Scans screen for displayed numbers (2-9)
- Clicks the hotbar slot matching the number
- Repeats continuously

**What it doesn't do:**
- Change colors (colors are random anyway)
- Detect anything except numbers
- Work outside of fishing minigames

---

## What You Need

✅ Minecraft 1.20.1
✅ Minecraft Forge 47+
✅ A fishing mod with random numbers
✅ This addon JAR

---

## What's Next?

1. ✅ Install Forge
2. ✅ Copy JAR to mods folder
3. ✅ Launch Minecraft
4. ✅ Start fishing
5. ✅ Press F
6. ✅ Watch it auto-click!

---

## Still Having Issues?

1. **Check chat:** Enable debug to see detected numbers
2. **Verify fishing mod:** Make sure minigame shows numbers 2-9
3. **Adjust settings:** Tweak `pixel_tolerance` and `click_delay`
4. **Check logs:** Look at `.minecraft/logs/latest.log` for errors

---

**Happy automated fishing!** 🎣✨

Press F and let the addon click for you!
