<%--
  Created by IntelliJ IDEA.
  User: 채지원
  Date: 2023-12-22
  Time: 오후 2:38
  To change this template use File | Settings | File Templates.
  
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cm" uri="https://cmsoft.co.kr/selectbox" %>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style>
    .chart-container {
        display: flex; /* 이 부분이 차트를 가로로 배치하는 핵심입니다. */
    }
    .chart-box {
        flex: 1; /* 각 차트 박스가 유연하게 늘어나도록 설정합니다. */
    }
</style>

<div>
  <div id="view">
    <div class="headerDiv">
      <div class="searchButton">
        <label for="choice">시뮬레이션 선택</label>
        <input type="text" id="choice"/>
        <button type="button" id="btn_choice" class="swsButton">찾기</button>
      </div>
    </div>

    <div class="inputRow">
      <label for="excerptPeriod_st">발췌기간</label>
      <input type="date" id="excerptPeriod_st"/>
      ~
      <input type="date" id="excerptPeriod_ed"/>
    </div>

  </div>

  <div class="content">
    <div>* 운영룰</div>

    <div>* 시뮬레이션 결과</div>

    <div id="view_grid_choice" style="height: calc(100% - 126px);"></div>

    <div id="viewgrid_count" class="gridCount"></div>
    <div id="viewgrid_result" style="height: calc(100% - 126px);"></div>
  </div>

  <%-- 그래프 --%>
  <div class="chart-container">
    <div class="chart-box">
      <canvas id="detectionChart"></canvas>
    </div>
    <div class="chart-box">
      <canvas id="reportChart"></canvas>
    </div>
  </div>

</div>
<script>
    var obj, gridId, grid_data = [];
    obj = {
        fn_search: () => {

            obj.__createSBGrid();

        },

        __createSBGrid: () => {
            if (_SBGrid.getGrid('grid') != null) {
                _SBGrid.destroy('grid');
                grid = null;
            }

            // 운영룰
            let SBGridProperties_choice = {
                parentid: 'view_grid_choice',
                id: 'gridId',
                jsonref: 'grid_data',
                rowheader: 'seq',
                columns: [
                    {caption: ['STR 룰 ID'], ref: 'strRulId', width: '10%', style: 'text-align:center', type: 'output'},
                    {caption: ['룰명'], ref: 'ruleName', width: '30%', style: 'text-align:left', type: 'output'},
                    {caption: ['검출건수'], ref: 'detectionCount', width: '20%', style: 'text-align:right', type: 'output'},
                    {caption: ['보고건수'], ref: 'reportCount', width: '20%', style: 'text-align:right', type: 'output'},
                    {caption: ['보고율'], ref: 'reportRate', width: '20%', style: 'text-align:right', type: 'output'},
                ]
            };
            grid = _SBGrid.create($.extend(true, {}, SBGRID_PROPS_DEFAULT, SBGridProperties_choice));

            // 시뮬레이션 결과
            let SBGridProperties_result = {
                parentid: 'viewgrid_result',
                id: 'gridresult',
                jsonref: 'gridresult_data',
                rowheader: 'seq',
                columns: [
                    {caption: ['No'], ref: 'sequence', width: '5%', style: 'text-align:center', type: 'rowhead'},
                    {caption: ['룰ID'], ref: 'ruleId', width: '10%', style: 'text-align:center', type: 'output'},
                    {caption: ['룰명'], ref: 'ruleName', width: '15%', style: 'text-align:center', type: 'output'},
                    {caption: ['파라메터명'], ref: 'parameterName', width: '15%', style: 'text-align:center', type: 'output'},
                    {caption: ['파라메터값'], ref: 'parameterValue', width: '15%', style: 'text-align:center', type: 'output'},
                    {caption: ['조정임계치'], ref: 'adjustedThreshold', width: '10%', style: 'text-align:center', type: 'output'},
                    {caption: ['검출건수'], ref: 'detectionCount', width: '15%', style: 'text-align:center', type: 'output'},
                    {caption: ['보고건수'], ref: 'reportCount', width: '15%', style: 'text-align:center', type: 'output'}
                ]
            };
            gridresult = _SBGrid.create($.extend(true, {}, SBGRID_PROPS_DEFAULT, SBGridProperties_result));


        },
        graph : ()=>{
            var detectionData = {
                labels: ['1', '2', '3'],
                datasets: [{
                    label: '검출 건수',
                    data: [1534567, 1234567, 1043567, 804567],
                    backgroundColor: ['blue', 'orange', 'grey', 'yellow']
                }]
            };

            var reportData = {
                labels: ['1', '2', '3'],
                datasets: [{
                    label: '보고 건수',
                    data: [153456, 123457, 103457, 80457],
                    backgroundColor: ['blue', 'orange', 'grey', 'yellow']
                }]
            };

            var detectionOptions = {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    legend: {
                        display: false
                    },
                    datalabels: {
                        display: true,
                        color: 'black'
                    }
                }
            };

            var reportOptions = Object.assign({}, detectionOptions);

            var detectionCtx = document.getElementById('detectionChart').getContext('2d');
            var reportCtx = document.getElementById('reportChart').getContext('2d');

            new Chart(detectionCtx, {
                type: 'bar',
                data: detectionData,
                options: detectionOptions
            });

            new Chart(reportCtx, {
                type: 'bar',
                data: reportData,
                options: reportOptions
            });
        }


    }

    $(() => {
        obj.fn_search();
        obj.graph();
    })

</script>