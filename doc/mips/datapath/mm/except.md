| �ź�����       |  �ߺ�  | ���� |  λ��  | ����                                |
| -------------- | :----: | :--: | :----: | ----------------------------------- |
| slot           | ID.I.2 | ���� |   1    | ��ǰָ���Ƿ����ӳٲ���              |
| pc             | IF.A.1 | ���� | W_ADDR | ���������ָ��PC                    |
| ibus.adel      |        | ���� |   1    | ibus��loadָ���Ƿ񴥷���ַ������    |
| ibus.ades      |        | ���� |   1    | ibus��storeָ���Ƿ񴥷���ַ������   |
| ibus.addr      |        | ���� | W_ADDR | ibus�е�ַ������ĵ�ַ              |
| dbus.adel      |        | ���� |   1    | dbus��loadָ���Ƿ񴥷���ַ������    |
| dbus.ades      |        | ���� |   1    | dbus��storeָ���Ƿ񴥷���ַ������   |
| dbus.addr      |        | ���� | W_ADDR | dbus�е�ַ������ĵ�ַ              |
| exec.intr_vect | ID.E.3 | ���� | W_INTV | �ж�����                            |
| exec.sy        | ID.E.2 | ���� |   1    | ����ָ���쳣��SYSCALL               |
| exec.bp        | ID.E.2 | ���� |   1    | ����ָ���쳣��BREAK                 |
| exec.ri        | ID.E.2 | ���� |   1    | δʵ��ָ���쳣                      |
| exec.ov        | EX.E.1 | ���� |   1    | ����������쳣                      |
| exec.er        | ID.E.2 | ���� |   1    | ����ָ���쳣��ERET                  |
| exec.er_epc    | ID.E.2 | ���� | W_ADDR | ����ָ���쳣��ERET���ӵ�CP0.EPC��ֵ |
| cp0w.we        | MM.D.2 | ��� |   1    | CP0�Ĵ���дʹ��                     |
| cp0w.bd        | MM.D.2 | ��� |   1    | CP0�Ĵ���д���ݣ�CP0.Cause.BD       |
| cp0w.exl       | MM.D.2 | ��� |   1    | CP0�Ĵ���д���ݣ�CP0.Status.EXL     |
| cp0w.exc       | MM.D.2 | ��� | W_EXCC | CP0�Ĵ���д���ݣ�CP0.Cause.ExcCode  |
| cp0w.epc       | MM.D.2 | ��� | W_ADDR | CP0�Ĵ���д���ݣ�CP0.EPC            |
| cp0w.bva       | MM.D.2 | ��� | W_ADDR | CP0�Ĵ���д���ݣ�CP0.BadVAddr       |
| except         | MM.A.2 | ��� |   1    | �쳣������ڵ�ַ����Ч��            |
| except_addr    | MM.A.2 | ��� | W_ADDR | �쳣������ڵ�ַ                    |
