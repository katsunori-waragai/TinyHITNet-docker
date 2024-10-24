#!/bin/bash
chpt_name=ckpt/stereo_net.ckpt
left_png=test/test-imgs/left/left_motorcycle.png
right_png=test/test-imgs/right/right_motorcycle.png
disp_png=out.png
python3 predict.py --model HITNet --ckpt ckpt/${ckpt_name} --images ${left_png} ${right_png} --output ${disp_png}
