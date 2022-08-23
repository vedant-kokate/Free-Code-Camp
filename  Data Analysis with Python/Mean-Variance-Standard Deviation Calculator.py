import numpy as np

def calculate(l):
    a = np.array(l).reshape(3,3)
    ans={}
    ans['mean']=[]
    ans['mean'].append(list(a.mean(axis=0)))
    ans['mean'].append(list(a.mean(axis=1)))
    ans['mean'].append(a.mean())

    ans['variance']=[]
    ans['variance'].append(list(a.var(axis=0)))
    ans['variance'].append(list(a.var(axis=1)))
    ans['variance'].append(a.var())

    ans['standard deviation']=[]
    ans['standard deviation'].append(list(a.std(axis=0)))
    ans['standard deviation'].append(list(a.std(axis=1)))
    ans['standard deviation'].append(a.std())

    ans['max']=[]
    ans['max'].append(list(a.max(axis=0)))
    ans['max'].append(list(a.max(axis=1)))
    ans['max'].append(a.max())

    ans['min']=[]
    ans['min'].append(list(a.min(axis=0)))
    ans['min'].append(list(a.min(axis=1)))
    ans['min'].append(a.min())

    ans['sum']=[]
    ans['sum'].append(list(a.sum(axis=0)))
    ans['sum'].append(list(a.sum(axis=1)))
    ans['sum'].append(a.sum())
    return ans

l=[0,1,2,3,4,5,6,7,8]
check={
  'mean': [[3.0, 4.0, 5.0], [1.0, 4.0, 7.0], 4.0],
  'variance': [[6.0, 6.0, 6.0], [0.6666666666666666, 0.6666666666666666, 0.6666666666666666], 6.666666666666667],
  'standard deviation': [[2.449489742783178, 2.449489742783178, 2.449489742783178], [0.816496580927726, 0.816496580927726, 0.816496580927726], 2.581988897471611],
  'max': [[6, 7, 8], [2, 5, 8], 8],
  'min': [[0, 1, 2], [0, 3, 6], 0],
  'sum': [[9, 12, 15], [3, 12, 21], 36]
}
print(check==calculate(l))