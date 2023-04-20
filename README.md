# FormStack Demo Application


This is just a demo aplication to demonstrate form render from json file based configurations.





[![FormStack Demo Application Video](http://img.youtube.com/vi/afFNWkhQbJk/0.jpg)](https://youtu.be/afFNWkhQbJk "FormStack Demo")

[Demo Web](https://formstackexample-89ed3.web.app/#/)

## Implementation 

### Follwoing JSON medel will render the above demo screen ui.
```json
{
    "default":
    {
      "backgroundAnimationFile":"assets/bg.json",
      "backgroundAlignment":"bottomCenter",
      "steps":[
        {
          "type": "QuestionStep",
          "title":"My Car",
          "cancellable":false,
          "titleIconAnimationFile":"assets/car.json",
          "nextButtonText":"",
          "autoTrigger":true,
          "inputType":"singleChoice",
          "options":[
             {"key":"CAR_SELECTED","text":"Select A Car"},
             {"key":"CALL_DRIVER","text":"Call Driver Now"}
          ],
          "id":"CHOICE",
          "relevantConditions":[{"id":"CALL_DRIVER","expression":"IN CALL_DRIVER"}]
        },{
          "type": "QuestionStep",
          "title":"Select Car",
          "titleIconAnimationFile":"assets/car.json",
          "nextButtonText":"",
          "autoTrigger":true,
          "inputType":"singleChoice",
          "options":[
             {"key":"AUDI","text":"Audi"},
             {"key":"BENZ","text":"Benz"},
             {"key":"Suzuki","text":"Suzuki"}
          ],
          "id":"CAR_SELECTED",
          "relevantConditions":[{"id":"SMILE","expression":"FOR_ALL"}]
        },{
          "type": "QuestionStep",
          "title":"Call / Ping Driver",
          "titleIconAnimationFile":"assets/car.json",
          "nextButtonText":"",
          "autoTrigger":true,
          "inputType":"singleChoice",
          "options":[
             {"key":"CALL","text":"Call"},
             {"key":"PING","text":"PING"}
          ],
          "id":"CALL_DRIVER"
        },
        {
         "type": "QuestionStep",
         "title":"Are you Happy",
         "text":"",
         "inputType":"smile",
         "id":"SMILE"
       },
        {
          "type": "CompletionStep",
          "autoTrigger":true,
          "nextButtonText":"",
          "title":"Please wait..",
          "id":"IS_COMPLETED"
        }
      ]
    
   }
}


```
### Read json file from assets to FormStack

```dart
await FormStack.api().buildFormFromJson(
        await json.decode(await rootBundle.loadString('assets/app.json')));

```

### Customize the completion of survey for form 

```dart

    FormStack.api().addCompletionCallback(
      GenericIdentifier(id: "IS_COMPLETED"),
      onBeforeFinishCallback: (result) async {
        await Future.delayed(const Duration(seconds: 2));/// Replace this line and add your network logic
        return Future.value(true);
      },
      onFinish: (result) {
        debugPrint("Completed With Result : $result");
        FormConfig.setState?.call();
      },
    );
    ```

### Render Form in UI

```dart
 FormStack.api().render()

```

