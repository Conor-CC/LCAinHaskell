-- file Spec.hs
import Lib
import BStree
import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do

  describe "returnPeriklesQuote" $ do
    it "returnPeriklesQuote: Judging happiness to be the fruit of freedom and freedom that of valour, we shall never shy from the dangers of war." $ do
      returnPeriklesQuote `shouldBe` ("Judging happiness to be the fruit of freedom and freedom that of valour, we shall never shy from the dangers of war." :: String)

  -- The testing of the BSTree functionality is essential as the LCA tests rely
  -- on the BST methods functioning correctly.
  describe "Binary Tree functionality testing." $ do
<<<<<<< HEAD
<<<<<<< HEAD
    it "create tree node" $ do
      let t = treeNode 2
      (treeRoot t) `shouldBe` 2

    it "create tree from array" $ do
=======
=======
>>>>>>> 3d9097c... Testing and functionality for lca algorithm
    it "Create tree node" $ do
      let t = treeNode 2
      treeRoot t `shouldBe` 2

    it "Test returning min element" $ do
      let t = treeNode 54
      treeMin t `shouldBe` 54
      let u = (treeInsert 2 t)
      treeMin u `shouldBe` 2
      let v = treeInsert 4 u
      treeMin v `shouldBe` 2

    it "Test returning max element" $ do
      let t = treeNode 54
      treeMax t `shouldBe` 54
      let u = treeInsert 400 t
      treeMax u `shouldBe` 400
      let v = treeInsert 200 u
      treeMax v `shouldBe` 400

    it "Create tree from array and check height functionality" $ do
<<<<<<< HEAD
>>>>>>> a106a41... Last commit got corrupted due to unexpected shutdown. Last changes were: Repaired repo with git-repair, added in lca tests and buil lca algorithm in BStree.hs
=======
>>>>>>> 3d9097c... Testing and functionality for lca algorithm
      let t = treeFromList [7, 5, 12, 3, 9, 14, 10, 4, 11, 1]
<<<<<<< HEAD
      (treeRoot t) `shouldBe` 7
      (treeHeight t) `shouldBe` 5
      (treeToList t) `shouldBe` [1, 3, 4, 5, 7, 9, 10, 11, 12, 14]
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> 3d9097c... Testing and functionality for lca algorithm
=======
      treeRoot t `shouldBe` 7
      treeMin t `shouldBe` 1
      treeMax t `shouldBe` 14
      treeHeight t `shouldBe` 5
      treeToList t `shouldBe` [1, 3, 4, 5, 7, 9, 10, 11, 12, 14]
>>>>>>> 9c036c9... Added further testing of LCA functionality and BSTree

  describe "Testing of LCA functionality" $ do
    it "Test with input [4]." $ do
      let t = treeFromList [4]
      mylca (treeMin t) (treeMax t) t `shouldBe` 4
      mylca (treeMin t) (treeMin t) t `shouldBe` (treeMin t)
      mylca (treeMax t) (treeMax t) t `shouldBe` (treeMax t)

    it "Test with input [4, 5, 3, 7, 1, 6]." $ do
      let t = treeFromList [4, 5, 3, 7, 1, 6]
      mylca (treeMin t) (treeMax t) t `shouldBe` 4
      mylca (treeMin t) (treeMin t) t `shouldBe` (treeMin t)
      mylca (treeMax t) (treeMax t) t `shouldBe` (treeMax t)
      mylca 6 7 t `shouldBe` 7
      mylca 3 5 t `shouldBe` 4

    it "Test with input [7, 5, 12, 3, 9, 14, 10, 4, 11, 1]." $ do
      let t = treeFromList [7, 5, 12, 3, 9, 14, 10, 4, 11, 1]
<<<<<<< HEAD
      (mylca (treeMin t) (treeMax t) t) `shouldBe` 7
      (mylca (treeMin t) (treeMin t) t) `shouldBe` (treeMin t)
<<<<<<< HEAD
>>>>>>> a106a41... Last commit got corrupted due to unexpected shutdown. Last changes were: Repaired repo with git-repair, added in lca tests and buil lca algorithm in BStree.hs
=======
>>>>>>> 3d9097c... Testing and functionality for lca algorithm
=======
      mylca (treeMin t) (treeMax t) t `shouldBe` 7
      mylca (treeMin t) (treeMin t) t `shouldBe` (treeMin t)
      mylca (treeMax t) (treeMax t) t `shouldBe` (treeMax t)
      mylca 11 14 t `shouldBe` 12
      mylca 5 9 t `shouldBe` 7
>>>>>>> 9c036c9... Added further testing of LCA functionality and BSTree
