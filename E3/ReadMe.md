The implemented latch is edge sensitive. When you synthesize the project on FPGA board,
 the "greater" signal may not work, so you can define it as ~lower or you can build
  a rising flip flop with the implemented latch.