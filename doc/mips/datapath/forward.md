| 信号               |  线号  | 方向 |  位宽  | 描述                                     |
| ------------------ | :----: | :--: | :----: | ---------------------------------------- |
| oper_id            | ID.I.2 | 输入 | W_OPER | ID阶段的操作码                           |
| oper_ex            | ID.I.2 | 输入 | W_OPER | EX阶段的操作码                           |
| oper_mm            | ID.I.2 | 输入 | W_OPER | MM阶段的操作码                           |
| from_ex_regf       | EX.D.5 | 输入 | W_REGF | 来自EX阶段，目标寄存器号                 |
| from_ex_data       | EX.D.5 | 输入 | W_DATA | 来自EX阶段，目标                         |
| from_mm_regf       | MM.D.1 | 输入 | W_REGF | 来自MM阶段，目标寄存器号                 |
| from_mm_data       | MM.D.1 | 输入 | W_DATA | 来自MM阶段，目标寄存器值                 |
| from_wb_regf       | WB.D.2 | 输入 | W_REGF | 来自WB阶段，目标寄存器号                 |
| from_wb_data       | WB.D.2 | 输入 | W_DATA | 来自WB阶段，目标寄存器值                 |
| into_id_rs         | ID.D.3 | 输入 | W_REGF | ID阶段第一个源寄存器号                   |
| into_id_rt         | ID.D.3 | 输入 | W_REGF | ID阶段第二个源寄存器号                   |
| into_ex_rs         | EX.D.1 | 输入 | W_REGF | EX阶段第一个源寄存器号                   |
| into_ex_rt         | EX.D.1 | 输入 | W_REGF | EX阶段第二个源寄存器号                   |
| stall              |        | 输出 |   1    | 停顿请求                                 |
| forward_id_rs      | ID.D.3 | 输出 |   1    | 向ID阶段，前推的第一个源寄存器值的有效性 |
| forward_id_rs_data | ID.D.3 | 输出 | W_DATA | 向ID阶段，前推的第一个源寄存器值         |
| forward_id_rt      | ID.D.3 | 输出 |   1    | 向ID阶段，前推的第二个源寄存器值的有效性 |
| forward_id_rt_data | ID.D.3 | 输出 | W_DATA | 向ID阶段，前推的第二个源寄存器值         |
| forward_ex_rs      | ID.D.3 | 输出 |   1    | 向EX阶段，前推的第一个源寄存器值的有效性 |
| forward_ex_rs_data | ID.D.3 | 输出 | W_DATA | 向EX阶段，前推的第一个源寄存器值         |
| forward_ex_rt      | ID.D.3 | 输出 |   1    | 向EX阶段，前推的第二个源寄存器值的有效性 |
| forward_ex_rt_data | ID.D.3 | 输出 | W_DATA | 向EX阶段，前推的第二个源寄存器值         |
