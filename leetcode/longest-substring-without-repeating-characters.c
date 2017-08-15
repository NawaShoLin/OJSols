int lengthOfLongestSubstring(char* s) {
    int table[256];
    for (int i = 0; i < 256; ++i) {
        table[i] = -1;
    }
    
    int start_index = -1;
    int max_len = 0;
    const int s_len = strlen(s);
    for (int i = 0; i < s_len; ++i) {
        char c = s[i];
        if (start_index < table[c]) {
            start_index = table[c];
        }
        table[c] = i;
        int current_len = i - start_index;
        if (current_len > max_len) {
            max_len = current_len;
        }
    }
    
    return max_len;
}