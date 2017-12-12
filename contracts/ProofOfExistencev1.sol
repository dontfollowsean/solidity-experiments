pragma solidity ^0.4.15;
// Proof of Existence contract, version 1
contract ProofOfExistencev1 {
  // state
  bytes32 public proof;
  // calculate and store the proof for a document
  function notarize(string document) {
    proof = proofFor(document);
  }
  // read-only function
  function proofFor(string document) constant returns (bytes32) {
    return sha256(document);
  }
}