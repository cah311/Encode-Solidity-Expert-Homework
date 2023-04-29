To generate storage svg:

`sol2uml storage <path to contract> --contract <contract name>`

ex.  
`sol2uml storage ./contracts/Store.sol --contract Store`

Optimized Store Contract:

1. Packing: Paired smaller uint's together in contract storage so that they would utilize page on a new slot.
