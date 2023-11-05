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
<b> ARC: </b> Every time you create a new instance of a class, ARC allocates a chunk of memory to store information about that instance. This memory holds information about the type of the instance, together with the values of any stored properties associated with that instance. <br/>
Additionally, when an instance is no longer needed, ARC frees up the memory used by that instance so that the memory can be used for other purposes instead. This ensures that class instances don’t take up space in memory when they’re no longer needed.<br/>
However, if ARC were to deallocate an instance that was still in use, it would no longer be possible to access that instance’s properties, or call that instance’s methods. Indeed, if you tried to access the instance, your app would most likely crash.<br/>
To make sure that instances don’t disappear while they’re still needed, ARC tracks how many properties, constants, and variables are currently referring to each class instance. ARC will not deallocate an instance as long as at least one active reference to that instance still exists.<br/>
To make this possible, whenever you assign a class instance to a property, constant, or variable, that property, constant, or variable makes a strong reference to the instance. The reference is called a “strong” reference because it keeps a firm hold on that instance, and doesn’t allow it to be deallocated for as long as that strong reference remains.

## <b> Group Homework </b> 
- <b>  Task:  </b> Pokeman App using PokeAPI.  <br/>
- <b> Design:  </b> [Here](https://www.figma.com/file/DwPu6EVf5Jr4vDUVeRXXUJ/Pokédex-(Community)?node-id=1017%3A431&mode=dev) . <br/>
- <b> App Screenshot:  </b>  <br/>
<p align="center">
  <img src="/assets/pokemon-1.png" width="200" />
  <img src="/assets/pokemon-2.png" width="200" />
  <img src="/assets/pokemon-3.png" width="200" />
</p><br/>






