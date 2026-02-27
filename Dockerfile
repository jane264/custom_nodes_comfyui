# Use full worker image (NOT base)
FROM runpod/worker-comfyui:5.1.0

# Switch to root to install nodes
USER root

# Install required custom node
RUN comfy-node-install comfyui_essentials

# Create required directories if not present
RUN mkdir -p /comfyui/input \
    && mkdir -p /comfyui/fonts

# Copy workflow input image
COPY input/example.png /comfyui/input/example.png

# (Optional but recommended) Copy font explicitly
COPY ShareTechMono-Regular.ttf /comfyui/fonts/ShareTechMono-Regular.ttf

# Fix permissions (important for RunPod)
RUN chown -R comfy:comfy /comfyui

# Switch back to comfy user
USER comfy
