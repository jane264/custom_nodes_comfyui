# Start from clean base image
FROM runpod/worker-comfyui:5.1.0-base

# Install required custom node (DrawText+ comes from Essentials)
RUN comfy-node-install comfyui_essentials

# (Optional but safer) Install kjnodes if needed later
# RUN comfy-node-install comfyui-kjnodes

# Copy static input image required by LoadImage node
# Make sure you have:
# project-folder/
# ├── Dockerfile
# └── input/
#     └── example.png
COPY input/ /comfyui/input/

# (Optional) If you want to guarantee font availability
# COPY ShareTechMono-Regular.ttf /comfyui/fonts/
