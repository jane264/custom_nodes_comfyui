FROM runpod/worker-comfyui:stable

USER root

# Install required custom node
RUN comfy-node-install comfyui_essentials

# Ensure directories exist
RUN mkdir -p /comfyui/input \
    && mkdir -p /comfyui/fonts

# Copy required input image
COPY input/example.png /comfyui/input/example.png

# Optional: copy font if needed
# COPY ShareTechMono-Regular.ttf /comfyui/fonts/ShareTechMono-Regular.ttf

# Fix permissions (VERY important)
RUN chown -R comfy:comfy /comfyui

USER comfy
