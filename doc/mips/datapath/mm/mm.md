| 信号名称    |  线号  |  方向  |  位宽  | 描述                                |
| ----------- | :----: | :----: | :----: | ----------------------------------- |
| oper        | ID.I.2 |  输入  | W_OPER | 指令操作码                          |
| slot        | ID.I.2 |  输入  |   1    | 当前指令是否在延迟槽中              |
| intr_vect   | ID.E.3 |  输入  | W_INTV | 中断向量                            |
| ibus_ader   | ID.E.1 | master |  ader  | 指令总线异常                        |
| dbus_ader   | MM.E.1 | master |  ader  | 数据总线异常                        |
| sy          | ID.E.2 |  输入  |   1    | 内陷指令异常：SYSCALL               |
| bp          | ID.E.2 |  输入  |   1    | 内陷指令异常：BREAK                 |
| ri          | ID.E.2 |  输入  |   1    | 未实现指令异常                      |
| ov          | EX.E.1 |  输入  |   1    | 运算器溢出异常                      |
| er          | ID.E.2 |  输入  |   1    | 内陷指令异常：ERET                  |
| er_epc      | ID.E.2 |  输入  | W_ADDR | 内陷指令异常：ERET附加的CP0.EPC的值 |
| pc          | IF.A.1 |  输入  | W_ADDR | 指令地址                            |
| except      | MM.A.2 |  输出  |   1    | 异常处理入口地址的有效性            |
| except_addr | MM.A.2 |  输出  | W_ADDR | 异常处理入口地址                    |
| cp0_er      | MM.D.2 | master | regf_e | CP0寄存器写异常数据                 |
| source_addr | EX.D.5 |  输入  | W_DATA | 访存地址（运算器的计算结果）        |
| source_data | EX.D.2 |  输入  | W_DATA | 访存数据                            |
| dbus_en     | MM.A.1 |  输出  |   1    | 访存使能                            |
| dbus_we     | MM.A.1 |  输出  |   4    | 访存读写控制信号                    |
| dbus_addr   | MM.A.1 |  输出  | W_ADDR | 访存地址                            |
| dbus_data   | MM.D.1 |  输出  | W_ADDR | 访存数据                            |
