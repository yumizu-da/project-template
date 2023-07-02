import numpy as np


def get_inverse_matrix(mat: np.ndarray) -> np.ndarray:
    print(type(np.linalg.inv(mat)))
    return np.linalg.inv(mat)


if __name__ == "__main__":
    matrix: np.ndarray = np.array([[1, 2], [3, 4]])
    print(get_inverse_matrix(matrix))
