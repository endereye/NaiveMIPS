| �ź�����        |  �ߺ�  | ���� |  λ��  | ����                          |
| --------------- | :----: | :--: | :----: | ----------------------------- |
| clk             |        | ���� |   1    | ʱ��                          |
| rst             |        | ���� |   1    | ��λ                          |
| reg_stall       |        | ���� |   1    | ID-EX��Ĵ���ͣ���ź�         |
| alu_stall       | EX.C.1 | ��� |   1    | ������������ͣ������          |
| type            | ID.I.2 | ���� | W_TYPE | ָ������                      |
| oper            | ID.I.2 | ���� | W_OPER | ������                        |
| func            | ID.I.2 | ���� | W_FUNC | ������                        |
| imme            | ID.D.1 | ���� | W_DATA | ��չ֮���������              |
| forward_rs      | EX.D.1 | ���� |   1    | ��һ��Դ�Ĵ���ǰ�Ƶ���Ч��    |
| forward_rs_data | EX.D.1 | ���� | W_DATA | ��һ��Դ�Ĵ���ǰ�Ƶ�ֵ        |
| forward_rd      | EX.D.1 | ���� |   1    | �ڶ���Դ�Ĵ���ǰ�Ƶ���Ч��    |
| forward_rd_data | EX.D.1 | ���� | W_DATA | �ڶ���Դ�Ĵ���ǰ�Ƶ�ֵ        |
| rs_regf         | ID.I.2 | ��� | W_REGF | ��һ��Դ�Ĵ�����              |
| rs_data         | ID.D.4 | ���� | W_DATA | ��һ��Դ�Ĵ���ֵ              |
| rt_regf         | ID.I.2 | ��� | W_REGF | �ڶ���Դ�Ĵ�����              |
| rt_data         | ID.D.4 | ���� | W_DATA | �ڶ���Դ�Ĵ���ֵ              |
| rd_regf         | ID.I.2 | ��� | W_REGF | Ŀ��Ĵ�����                  |
| cp0_rt_regf     | ID.I.2 | ���� | W_REGF | Ҫ��ȡ��CP0�Ĵ�����           |
| cp0_rt_data     | EX.D.4 | ���� | W_DATA | Ҫ��ȡ��CP0�Ĵ���ֵ           |
| cp0_rd_regf     | ID.I.2 | ���� | W_REGF | Ҫд���CP0�Ĵ����ţ�����Ϊ�� |
| cp0_rd_data     | EX.D.3 | ��� | W_DATA | Ҫд���CP0�Ĵ���ֵ           |
| result          | EX.D.5 | ��� | W_DATA | ������                      |
| ov              | EX.E.1 | ��� |   1    | ����������쳣                |