class Solution {
  findMedianSortedArrays(nums1, nums2) {
    let mergedList = [...nums1, ...nums2];
    mergedList.sort((a, b) => a - b);
    let median = 0;

    if (mergedList.length % 2 != 0) {
      let middle = parseInt(mergedList.length / 2);
      median = Number(mergedList[middle]);
    } else {
      let middle1 = parseInt(mergedList.length / 2);
      let middle2 = parseInt(mergedList.length / 2) - 1;
      median = (mergedList[middle1] + mergedList[middle2]) / 2;
    }
    return median;
  }
}

let sol = new Solution();
console.log(sol.findMedianSortedArrays([1, 2], [3, 4]));
