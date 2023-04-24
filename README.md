# Lecture1-Homework
## Blockchain

1. Why is client diversity important for Ethereum?
  -  a client refers to the software application that is ran on a node that listens and interacts with the Ethereum network to verify data and keep it secure. 
  -  clients exist in many different programming languages and are devoloped and managed by different teams
  -  multiple implentations of clients are important as it makes the network stronger by reducing its dependency on a single code base. By increasing the diversity of      the types of clients, this reduces the chance of a potential single point of failure. 
    - with mutliple clients built from different code bases this reduces the chance of a bug having effect on the network
    - this creates resilience to attacks on the network. Other clients are unlikely exploitable in the same way as the original client that was attacked. 
    - furthermore, this helps prevent finality risk, the risk of having 33% + of nodes with the same client to have a bug and prevent the beacon chain from finalizing       and coming to consensus
        - even worse, if a client were to hold two-thirds majority and it catches a bug, this could cause the chain to split and finalize, causing validators to have             their stakes frozen on an invalid chain   
  -  This also invites opportunity other programmers who specialize in different languages to work and interact within the community and ecosystem
       
2. Where is the full Ethereum state held ?
3. What is a replay attack ? , which 2 pieces of information can prevent it ?
4. In a contract, how do we know who called a view function ?
