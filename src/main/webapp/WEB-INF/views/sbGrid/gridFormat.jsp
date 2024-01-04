<%--
  Created by IntelliJ IDEA.
  User: cms
  Date: 2024-01-04
  Time: 오후 2:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>

</body>
</html>

<script>
    var obj, gridId, gridData;

    obj = {
        _createSBGrid: () => {
            if (_SBGrid.getGrid('gridId') != null) {
                _SBGrid.destroy('gridId');
                gridId = null;
            }

            let SBGridProperties = {
                parentid: 'html id 입력',
                id: 'gridId : 그리드 id',
                jsonref: 'gridData : 그리드 data',
                // rowheader: 'seq',
                mergecells: 'byrestriccol', // 셀 병합
                // mergecells: 'bycol', // 셀 병합
                height: '400px',
                // datamergefalseskip: true,
                columns: [
                    {
                        caption: ['index', 'index'], // 윗 캡션, 아래 캡션
                        ref: 'index',
                        hidden: true, // 열 숨기기
                        width: '3%',
                        style: 'text-align: center; padding-left: 5px;'
                    }
                    , {
                        // chack box
                        caption: ['선택', '선택'],
                        ref: 'check',
                        width: '3%',
                        style: 'text-align:center',
                        type: 'checkbox'
                    }
                    , {
                        caption: ['date', 'stDate'],
                        type: 'output',
                        id: 'stDate',
                        ref: 'stDate',
                        width: '8%',
                        style: 'text-align: center; padding-left: 5px;',
                        // 데이터 형식 포멧
                        format: {type: 'date', rule: 'YYYY-MM-DD', origin: 'YYYYMMDD'}
                    }
                    , {
                        caption: ['date', 'endDate'],
                        type: 'output',
                        id: 'endDate',
                        ref: 'endDate',
                        width: '8%',
                        style: 'text-align: center; padding-left: 5px;',
                        format: {type: 'date', rule: 'YYYY-MM-DD', origin: 'YYYYMMDD'}
                    }
                    , {
                        caption: ['진행상태', '진행상태'],
                        width: '10%',
                        ref: 'status',
                        style: 'text-align: center; padding-left: 5px;',
                        format: {
                            type: "custom", callback: function (value) {
                                switch (value) {
                                    case '01':
                                        return "등록";
                                    case '02':
                                        return "요청";
                                    case '03':
                                        return "실행중";
                                    case '04':
                                        return "완료";
                                    case '09':
                                        return "오류";
                                    default:
                                        return value;
                                }
                            }
                        }
                    }
                    , {
                        caption: ['건수', '건수'],
                        type: 'button', // 버튼 컨트롤 타입
                        id: 'count',
                        ref: 'count',
                        width: '4%',
                        style: 'text-align: center; padding-left: 5px;',
                        typeinfo: {buttonvalue: '보기'}
                    }
                ]
            };
            grid1802031300 = _SBGrid.create();
            grid1802031300.bind('dblclick', 'eventProcess');
            grid1802031300.bind('buttonclick', 'gridButtonClick');
        },
    }


</script>
