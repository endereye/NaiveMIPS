| 信号名称 |  线号  | 方向 |  位宽  | 描述                  |
| -------- | :----: | :--: | :----: | --------------------- |
| inst     | ID.I.1 | 输入 | W_DATA | 指令                  |
| type     | ID.I.2 | 输出 | W_TYPE | 指令类型（R，I，J）   |
| oper     | ID.I.2 | 输出 | W_OPER | 操作码                |
| func     | ID.I.2 | 输出 | W_FUNC | 运算码                |
| imme     | ID.D.1 | 输出 | W_DATA | 扩展之后的立即数      |
| rs_regf  | ID.I.2 | 输出 | W_REGF | 第一个源寄存器号      |
| rt_regf  | ID.I.2 | 输出 | W_REGF | 第二个源寄存器号      |
| rd_regf  | ID.I.2 | 输出 | W_REGF | 目标寄存器号          |
| sy       | ID.E.2 | 输出 |   1    | 内陷指令异常：SYSCALL |
| bp       | ID.E.2 | 输出 |   1    | 内陷指令异常：BREAK   |
| ri       | ID.E.2 | 输出 |   1    | 未实现指令异常        |
| er       | ID.E.2 | 输出 |   1    | 内陷指令异常：ERET    |

