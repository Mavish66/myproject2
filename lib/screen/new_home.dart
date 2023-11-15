import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/insert_provider.dart';

class DataInsertScreen extends StatefulWidget {
  const DataInsertScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DataInsertScreen> createState() => _DataInsertScreenState();
}

class _DataInsertScreenState extends State<DataInsertScreen> {
  double progressData = 0.0;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => InsertData(),
      child: Consumer<InsertData>(
        builder: (context, model, child) =>  Scaffold(

          appBar: AppBar(

            title: Text("Total tables: ${model.totalTables.toString()}"),
          ),

          body: Center(
            child: ListView.builder(
              itemCount: model.tablesData.length,
              itemBuilder: (context, index) {
                final tableData = model.tablesData[index];
                progressData = tableData.progressData;



                return ListTile(
                  title: Row(
                    children: [
                      Text('Table Name: ${tableData.tableName}'),
                      SizedBox(width: 10,),
                     if(tableData.totalRecords!= 0)
                       Icon(Icons.check_circle,color: Colors.green,)
                      else if(tableData.totalRecords==0)
                       Icon(Icons.cancel,color: Colors.red,)
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Insert Start: ${tableData.insertStartTime ?? 'Not started'}'),
                      Text("Total records: ${tableData.totalRecords.toString()}"),
                      Text('Insert End: ${tableData.insertEndTime ?? 'Not completed'}'),
                     // keep in screen below insert end
                    ],
                  ),
                );
              },
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              // _showLoader(context, model);
            _showLoader(context);




              await model.apiCalls();
              Navigator.of(context, rootNavigator: true).pop();
              _showLoader(context);
              await model.insertData();
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Icon(Icons.add),
          ),
        )
      ),
    );
  }

  _ashowLoader(BuildContext context, InsertData dataInsertModel, double percentage,{String? tableName}){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return StatefulBuilder(builder:
            (BuildContext context, StateSetter setModalState){
          return AlertDialog(
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 13.0),
            title: Text(dataInsertModel.isLoading ? "Downloading" : "Inserting  ${dataInsertModel.tableNemeUpdate}"),
            content: Wrap(
              children: [
                Column(
                  children: [
                    Center(
                        child: dataInsertModel.isLoading ?
                          const LinearProgressIndicator(
                          backgroundColor: Colors.red,
                            valueColor: AlwaysStoppedAnimation(Colors.blue),
                            minHeight: 6,
                          )
                        :LinearProgressIndicator(
                          value: percentage,
                          valueColor: AlwaysStoppedAnimation(Colors.blue),
                          minHeight: 6,
                          backgroundColor: Colors.green,
                        )
                    ),
                    Text(dataInsertModel.isLoading ? "" :'${(percentage * 100).round()}%'),
                    // Text("Table Name: ${dataInsertModel.tableNemeUpdate}"),
                    // Text("Total records: ${dataInsertModel.totalRecords.toString()}"), // keep in screen below insert end
                    //
                    // Text("Total tables: ${dataInsertModel.totalTables.toString()}"), // keep in screen at top

                  ],
                ),
              ],
            ),
          );
        });
      },
    );
  }

  _showLoader(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Consumer<InsertData>(
          builder: (context, model, child) {
            return StatefulBuilder(builder: (BuildContext context, StateSetter setModalState) {
              return AlertDialog(
                title: Text(model.isLoading ? "Downloading" : "Inserting ${model.tableNemeUpdate}"),
                content: Wrap(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: model.isLoading
                              ? const LinearProgressIndicator(
                            backgroundColor: Colors.red,
                            valueColor: AlwaysStoppedAnimation(Colors.blue),
                            minHeight: 6,
                          )
                              : LinearProgressIndicator(
                            value: model.progressPercentage,
                            valueColor: AlwaysStoppedAnimation(Colors.blue),
                            minHeight: 6,
                            backgroundColor: Colors.green,
                          ),
                        ),
                        Text(model.isLoading ? "" : '${(model.progressPercentage * 100).round()}%'),
                      ],
                    ),
                  ],
                ),
              );
            });
          },
        );
      },
    );
  }
  
}
