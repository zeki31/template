uv init --name template --package --python 3.10
uv add install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118 
uv add install -r requirements.txt

uv add install --dev pre-commit

# For PyTorch3D
MAX_JOBS=4 uv add install 'git+https://github.com/facebookresearch/pytorch3d.git' --no-build-isolation

# For submodules
uv add install -e . --no-build-isolation
