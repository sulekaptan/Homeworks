#  iOS Homeworks
## <b> 1st Homework </b> 
- <b>  Task:  </b> Multiple CollectionView and TableView usage. <br/>
- <b> Design:  </b> [Here](https://www.behance.net/gallery/108639283/Meal-Monkey-Food-delivery-iOS-mobile-application) . <br/>
- <b> App Screenshot:  </b>  <br/>
<p align="center">
  <img src="/assets/1st-homework.png" width="300" />
</p>

## <b> 2nd Homework </b> 
- <b> Task:  </b> TableView with programmatic UI - Crypto App <br/>
- <b> App Screenshot:  </b>  <br/>
<p align="center">
  <img src="/assets/2nd-homework.png" width="300" />
</p>

## <b> 3rd Homework </b> 
- <b> Task:  </b> ARC - Maps <br/>
<b> ARC: </b> Swift uses Automatic Reference Counting (ARC) to track and manage your app’s memory usage. In most cases, this means that memory management “just works” in Swift, and you don’t need to think about memory management yourself. ARC automatically frees up the memory used by class instances when those instances are no longer needed.<br/>
<b>Strong Reference Cycles Between Class Instances</b><br/>
Here’s an example of how a strong reference cycle can be created by accident. This example defines two classes called Person and Apartment, which model a block of apartments and its residents: <br/>
```
class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized") }
}


class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    var tenant: Person?
    deinit { print("Apartment \(unit) is being deinitialized") }
}
``` 
<br/>
Unfortunately, linking these two instances creates a strong reference cycle between them. The Person instance now has a strong reference to the Apartment instance, and the Apartment instance has a strong reference to the Person instance. Therefore, when you break the strong references held by the john and unit4A variables, the reference counts don’t drop to zero, and the instances aren’t deallocated by ARC. <br/>
Swift provides two ways to resolve strong reference cycles when you work with properties of class type: weak references and unowned references.
<br/>
<b>Weak References: </b> A weak reference is a reference that doesn’t keep a strong hold on the instance it refers to, and so doesn’t stop ARC from disposing of the referenced instance. This behavior prevents the reference from becoming part of a strong reference cycle. You indicate a weak reference by placing the weak keyword before a property or variable declaration. <br/>
The Person instance still has a strong reference to the Apartment instance, but the Apartment instance now has a weak reference to the Person instance. This means that when you break the strong reference held by the john variable by setting it to nil, there are no more strong references to the Person instance.







