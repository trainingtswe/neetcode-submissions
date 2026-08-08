class Solution:
    def isAnagram(self, s: str, t: str) -> bool:

        # first condition, if the two string have different lenght return False
        if len(s) != len(t):
            return False

        # initialize two dictionaries to account for unique letters in the string
        # and count the instances of those letters
        hashs = {}
        hasht = {}

        #loop trough the two strings at the same time
        for i in range(len(s)):
            hashs[s[i]]= 1 + hashs.get(s[i],0)
            hasht[t[i]]= 1 + hasht.get(t[i],0)
        return hashs == hasht

        print(hashs)
        print(hasht)
    

