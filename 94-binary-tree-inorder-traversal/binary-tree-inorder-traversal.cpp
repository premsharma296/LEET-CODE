class Solution {
public:
    void inorder(TreeNode* root, vector<int>& result) {
        if (root == nullptr)
            return;
        inorder(root->left, result);       // Visit left
        result.push_back(root->val);       // Visit root
        inorder(root->right, result);      // Visit right
    }

    vector<int> inorderTraversal(TreeNode* root) {
        vector<int> result;
        inorder(root, result);
        return result;
    }
};
