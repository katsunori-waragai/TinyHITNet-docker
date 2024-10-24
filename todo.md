TinyHITNet# python3 -m pip install ext_op/
Processing ./ext_op
    ERROR: Command errored out with exit status 1:
     command: /usr/bin/python3 -c 'import sys, setuptools, tokenize; sys.argv[0] = '"'"'/tmp/pip-req-build-vfjcpknx/setup.py'"'"'; __file__='"'"'/tmp/pip-req-build-vfjcpknx/setup.py'"'"';f=getattr(tokenize, '"'"'open'"'"', open)(__file__);code=f.read().replace('"'"'\r\n'"'"', '"'"'\n'"'"');f.close();exec(compile(code, __file__, '"'"'exec'"'"'))' egg_info --egg-base /tmp/pip-req-build-vfjcpknx/pip-egg-info
         cwd: /tmp/pip-req-build-vfjcpknx/
    Complete output (11 lines):
    Traceback (most recent call last):
      File "<string>", line 1, in <module>
      File "/tmp/pip-req-build-vfjcpknx/setup.py", line 7, in <module>
        CUDAExtension(
      File "/usr/local/lib/python3.8/dist-packages/torch/utils/cpp_extension.py", line 1076, in CUDAExtension
        library_dirs += library_paths(cuda=True)
      File "/usr/local/lib/python3.8/dist-packages/torch/utils/cpp_extension.py", line 1207, in library_paths
        if (not os.path.exists(_join_cuda_home(lib_dir)) and
      File "/usr/local/lib/python3.8/dist-packages/torch/utils/cpp_extension.py", line 2416, in _join_cuda_home
        raise OSError('CUDA_HOME environment variable is not set. '
    OSError: CUDA_HOME environment variable is not set. Please set it to your CUDA install root.
    ----------------------------------------
ERROR: Command errored out with exit status 1: python setup.py egg_info Check the logs for full command output.
root@waragai-orin:~/TinyHITNet# echo $CUDA_HOME
/usr/local/cuda-11.4
root@waragai-orin:~/TinyHITNet# bash sample.sh 
/usr/local/lib/python3.8/dist-packages/torchvision-0.14.1a0+5e8e2f1-py3.8-linux-aarch64.egg/torchvision/io/image.py:13: UserWarning: Failed to load image Python extension: /usr/local/lib/python3.8/dist-packages/torchvision-0.14.1a0+5e8e2f1-py3.8-linux-aarch64.egg/torchvision/image.so: undefined symbol: _ZN3c1017RegisterOperatorsD1Ev
  warn(f"Failed to load image Python extension: {e}")
Traceback (most recent call last):
  File "predict.py", line 72, in <module>
    model = PredictModel(**vars(args)).eval()
  File "predict.py", line 13, in __init__
    self.model = build_model(self.hparams)
  File "/root/TinyHITNet/models/__init__.py", line 16, in build_model
    raise NotImplementedError
NotImplementedError

