$(document).ready(function(){

    $chart = $('#chart-1')

    if ($chart.length == 0) {
        return;
    }
    else {
        $(function () { 
            var myChart = Highcharts.chart('chart-1', {
                chart: {
                    type: 'bar'
                },
                title: {
                    text: 'Приклад графікуs'
                },
                xAxis: {
                    categories: ['Apples', 'Bananas', 'Oranges']
                },
                yAxis: {
                    title: {
                        text: 'Fruit eaten'
                    }
                },
                series: [{
                    name: 'Jane',
                    data: [1, 0, 4]
                }, {
                    name: 'John',
                    data: [5, 7, 3]
                }]
            });
        });
    };
});
