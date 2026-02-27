FROM runpod/worker-comfyui:5.1.0-base

RUN comfy-node-install comfyui-essentials

COPY input/ /comfyui/input/
COPY fonts/ /comfyui/fonts/
