uv sync
uv pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118 
MAX_JOBS=4 uv pip install 'git+https://github.com/facebookresearch/pytorch3d.git' --no-build-isolation
uv pip install -U xformers==0.0.27.post2 --index-url https://download.pytorch.org/whl/cu118

uv add install -r requirements.txt

uv add install -e . --no-build-isolation

uv add install --dev pre-commit
