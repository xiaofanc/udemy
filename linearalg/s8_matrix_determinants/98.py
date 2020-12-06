# method 1
import numpy as np
import matplotlib.pyplot as plt

N = 30
lambdas = np.linspace(0, 1.0, N)

# tmp - 记录1000个矩阵shift之后的determinants
tmp = np.zeros(1000)

# 计算1000个矩阵的average determinants
dets = np.zeros(len(lambdas))

for deti in range(len(lambdas)):
    
    # 对每个lambda, 有1000 random matrix:
    for i in range(1000):
        M = np.random.randn(20,20)
        M[:,0] = M[:,1]

        tmp[i] = abs(np.linalg.det(M + lambdas[deti]*np.eye(20)))

    dets[deti] = np.mean(tmp)

plt.plot(lambdas, dets, 's-')
plt.xlabel('Fraction of identity for shifting')
plt.ylabel('determinants')
plt.show()


# method 2

N = 30
lambdas = np.linspace(0, 1.0, N)

# 每个matrix shift 30 次，减少noise
dets = np.zeros(N)

for _ in range(1000):
    M = np.random.randn(20, 20)
    M[:,0] = M[:,1]
    for i, lam in enumerate(lambdas):
        dets[i] += abs(np.linalg.det(M+lam*np.eye(20)))

dets = dets/1000

plt.plot(lambdas, dets, 's-')
plt.show()

