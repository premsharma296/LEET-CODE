class Solution {
public:
    vector<vector<string>> groupAnagrams(vector<string>& strs) {
        unordered_map<string,vector<string>>res;
        for(const auto& s : strs)
        {
            string sorted=s;
            sort(sorted.begin(),sorted.end());
            res[sorted].push_back(s);

    }
       vector<vector<string>>result;
        for(auto& pairs : res)
        {
     result.push_back(pairs.second);
        }
     return result;
    }
};