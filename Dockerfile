FROM runpod/worker-comfyui:5.1.0

USER root

RUN comfy-node-install comfyui_essentials

COPY input/example.png /comfyui/input/example.png

RUN chown -R comfy:comfy /comfyui

USER comfy
