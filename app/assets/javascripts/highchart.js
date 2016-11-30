$(document).ready(function(){

    $chart_1 = $('#chart-1')
    $chart_2 = $('#chart-2')

    if ($chart_1.length == 0 && $chart_2.length == 0) {
        return;
    }
    else {

        //     C H A R T   1

        $(function () { 
            Highcharts.chart('chart-1', {
                chart: {
                    type: 'column'
                },
                title: {
                    text: ''
                },
                xAxis: {
                    categories: ['Січень', 'Лютий', 'Березень', 'Квітень', 'Травень', 'Червень', 'Липень', 'Серпень', 'Вересень', 'Жовтень', 'Листопад', 'Грудень']
                },
                yAxis: {
                    title: {
                        text: 'Ціна'
                    }
                },
                series: [{
                    name: 'Імпорт',
                    data: [1, 2, 4, 1, 3, 4, 1, 4, 4, 2, 3, 2]
                }, {
                    name: 'Експорт',
                    data: [5, 7, 3, 1, 5, 4, 1, 2, 4, 1, 4, 4]
                }]
            });
        });

        //     C H A R T   2

        $(function () {
            Highcharts.chart('chart-2', {
                chart: {
                    type: 'line'
                },
                title: {
                    text: ''
                },
                xAxis: {
                    categories: ['Січень', 'Лютий', 'Березень', 'Квітень', 'Травень', 'Червень', 'Липень', 'Серпень', 'Вересень', 'Жовтень', 'Листопад', 'Грудень']
                },
                yAxis: {
                    title: {
                        text: 'Тонн'
                    }
                },
                plotOptions: {
                    line: {
                        dataLabels: {
                            enabled: true
                        },
                        enableMouseTracking: false
                    }
                },
                series: [{
                    name: 'Імпорт',
                    data: [7.0, 6.9, 9.5, 14.5, 18.4, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
                }, {
                    name: 'Експорт',
                    data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
                }]
            });
        });



    };
});
