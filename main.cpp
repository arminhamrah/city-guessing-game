//Armin Hamrah, KMo, ATCS, October 25
//I collaborated with Nic for this program
#include <iostream>
#include <fstream>
#include <string>

using namespace std;

struct TreeNode {
    string value;
    TreeNode *left;
    TreeNode *right;

    TreeNode(string val) {
        value = val;
        left = nullptr;
        right = nullptr;
    }

    TreeNode() {
        left = nullptr;
        right = nullptr;
    }
};

TreeNode* buildTree(TreeNode *&tree, ifstream &f) {
    string str;
    getline(f, str);
    tree = new TreeNode();
    tree->value = str.substr(1);
    if (str[0] == 'Q') {
        buildTree(tree->left, f); //have to pass tree by reference so it builds up instead of making a copy!
        buildTree(tree->right, f); //^
    }
    return tree;
}

void saveTreeHelper(ofstream &f, TreeNode* &tree) { //have to pass fstream by reference
    if (tree == nullptr)
        return;
    else {
        if (tree->left != nullptr)
            f << "Q" << tree->value << endl;
        else
            f << "A" << tree->value << endl;
        saveTreeHelper(f, tree->left);
        saveTreeHelper(f, tree->right);
    }
}

//decomposition time!////
void saveTree(string savedFile, TreeNode* tree) {
    string file = savedFile;
    ofstream myFile;
    myFile.open(file);
    saveTreeHelper(myFile, tree);
    myFile.close();
}

TreeNode* setUpGame() {
    cout << "City Guessing Game" << endl << endl;
    cout << "Welcome to the city City Guessing Game!" << endl;
    string filename;
    cout << "Enter the name of the data file: ";
    getline(cin, filename);
    TreeNode* root = nullptr;
    ifstream fin(filename.c_str());
    TreeNode* tree = buildTree(root, fin);
    return tree;
}

void goThroughTree(TreeNode* &temp) {
    while (temp->left != nullptr && temp->right != nullptr) {
        cout << temp->value << " ";
        string answer;
        getline(cin, answer);
        if (answer == "y")
            temp = temp->left;
        else
            temp = temp->right;
    }
}

void handleIncorrectGuess(TreeNode* &tree, TreeNode* &temp) {
    cout << "Bummer. What was your city? ";
    string correctCity;
    getline(cin, correctCity);
    cout << "Enter a question to differentiate " << correctCity << " from " << temp->value << ": ";
    string correctQuestion;
    getline(cin, correctQuestion);
    cout << "If you were thinking of " << correctCity << " what would the correct answer be? ";
    string correctAnswer;
    getline(cin, correctAnswer);
    string currentCity = temp->value;
    temp->value = correctQuestion;
    if (correctAnswer == "y") {
        temp->left = new TreeNode(correctCity);
        temp->right = new TreeNode(currentCity);
    } else {
        temp->right = new TreeNode(correctCity);
        temp->left = new TreeNode(currentCity);
    }
}

void playGame(TreeNode *&tree) {
    cout << "Think of a city. Press return when you are ready to begin.";
    string ch;
    getline(cin, ch);
    TreeNode* temp = tree;
    goThroughTree(temp);
    cout << "Is your city " << temp->value << "?";
    string answer;
    getline(cin, answer);
    if (answer == "y")
        cout << "Let's go!! I was right!" << endl;
    else {
        handleIncorrectGuess(tree, temp);
    }
}

bool endGame(TreeNode* &tree) {
    cout << "Do you want to play again? ";
    string response;
    getline(cin, response);
    if (response == "n") {
        cout << "Do you want to save the current city information to a file? ";
        getline(cin, response);
        if (response == "y") {
            cout << "Enter name of file (duplicate files will be overwritten): ";
            string saveFile;
            getline(cin, saveFile);
            saveTree(saveFile, tree);
        }
        return false;
    }
    return true;
}

int main() {
    TreeNode* tree = setUpGame();
    bool play = true;
    while (play) {
        playGame(tree);
        play = endGame(tree);
    }
    cout << "Goodbye" << endl;
    return 0;
}