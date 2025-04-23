import numpy as np

a = np.load("./img0.npy")
print(a)
b = np.load("./img1.npy")
print(b)
print("=" * 50)
print(np.linalg.norm(a - b))