FROM runpod/worker-comfyui:5.1.0-base

# Install essentials
RUN comfy-node-install comfyui-essentials

# Copy input image
COPY input/example.png /comfyui/input/example.png

# Copy font explicitly
COPY ShareTechMono-Regular.ttf /comfyui/fonts/ShareTechMono-Regular.ttf
