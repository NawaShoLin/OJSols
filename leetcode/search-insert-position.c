int searchInsert(int* nums, int numsSize, int target) {
    if (numsSize == 0) {
        return 0;
    } else {
        return searchRec(nums, target, 0, numsSize - 1);
    }
}

int searchRec(int* nums, int target, int low, int high) {
    if (high <= low) {
        if (nums[low] < target) {
            return low + 1;
        } else {
            return low;
        }
    }
    
    int mid = (low + high) / 2;
    int val = nums[mid];
    if (val == target) {
        return mid;
    } else if (val < target) {
        return searchRec(nums, target, mid + 1, high);
    } else {
        return searchRec(nums, target, low, mid - 1);
    }
}
