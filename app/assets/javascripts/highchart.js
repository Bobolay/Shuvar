$(document).ready(function(){

    $chart_price = $('#chart-price')
    $chart_volume = $('#chart-volume')
    $chart_import_export = $('#chart-import-export')

    if ($chart_price.length == 0 && $chart_volume.length == 0 && $chart_import_export.length == 0) {
        return;
    }
    else {

        //     C H A R T   1

        $(function () { 
            Highcharts.chart('chart-price', {
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
            Highcharts.chart('chart-volume', {
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

        //     C H A R T     3

        $(function () {
            Highcharts.chart('chart-import-export', {
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
                    data: [5.0, 4.9, 5.6, 14.5, 14.4, 19.2, 25.2, 22.5, 21.3, 18.3, 12.9, 10.2]
                }, {
                    name: 'Експорт',
                    data: [2.9, 3.4, 5.5, 7.5, 12.1, 14.2, 16.0, 13.2, 14.2, 10.3, 6.4, 4.5]
                }]
            });
        });

    };
});
