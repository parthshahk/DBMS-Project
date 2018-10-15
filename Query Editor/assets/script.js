document.addEventListener('DOMContentLoaded', function() {

    var elems = document.querySelectorAll('select');
    var instances = M.FormSelect.init(elems, {});
});

var app = new Vue({

    el :  '#app',

    data: {
        titleV: title,
        query: ' ',
        tableData: '',
        view:'selector',
        message: '',
        messageColor: '',

        functionalitiesV: functionalities,

        proceduresV: procedures,

        functionsV: functions,

        cursorsV: cursors,

        viewsV: views,

        tablesV: tables,

        insertV: insert
    },

    methods: {

        fire: function(){
            var self = this;
            axios.get('./api/fetch.php?q='+this.query).then(function(response){

                if(response.data === true){
                    
                    self.message = "Query Executed Successfully";
                    self.messageColor = "green-text";
                    self.view = 'message';
                }else if(response.data === false){

                    self.message = "Error in Query Execution";
                    self.messageColor = "red-text";
                    self.view = 'message';
                }else{

                    self.tableData = response.data;
                    self.populate();
                }

            })
        },

        populate: function(){
            var myNode = document.getElementById("viewTable");
            while (myNode.firstChild) {
                myNode.removeChild(myNode.firstChild);
            }
            buildHtmlTable('#viewTable',this.tableData);
            this.view = 'table';
        }
    }
});

function buildHtmlTable(selector,myList) {
    var columns = addAllColumnHeaders(myList, selector);

    for (var i = 0; i < myList.length; i++) {
        var row$ = $('<tr/>');
        for (var colIndex = 0; colIndex < columns.length; colIndex++) {
        var cellValue = myList[i][columns[colIndex]];
        if (cellValue == null) cellValue = "";
        row$.append($('<td/>').html(cellValue));
        }
        $(selector).append(row$);
    }
}

function addAllColumnHeaders(myList, selector) {
    var columnSet = [];
    var headerTr$ = $('<tr/>');

    for (var i = 0; i < myList.length; i++) {
        var rowHash = myList[i];
        for (var key in rowHash) {
        if ($.inArray(key, columnSet) == -1) {
            columnSet.push(key);
            headerTr$.append($('<th/>').html(key));
        }
        }
    }
    $(selector).append(headerTr$);

    return columnSet;
}