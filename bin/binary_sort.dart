
void binaryInsertionSort(List<int> nums) {
  var length = nums.length;

  for (var i = 1; i < length; ++i) {
    var key = nums[i];
    var insertedPosition = findPosition(nums, 0, i - 1, key);

    for (int j = i - 1; j >= insertedPosition; --j) {
      nums[j + 1] = nums[j];
    }

    nums[insertedPosition] = key;
  }
}

int findPosition(List<int> nums, int start, int end, int key) {
  while (start <= end) {
    int mid = (start + (end - start) / 2).round();

    if (key < nums[mid]) {
      end = mid - 1;
    } else {
      start = mid + 1;
    }
  }

  return start;
}
