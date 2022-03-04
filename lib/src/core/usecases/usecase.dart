/*a callable classes are those classes that contains
implementations of a method called “call”
and this “call” method itself responsible for 
making the instance a callable 
instead of calling method belongs to that instance. */

/* This is the representation of our Use Cases,
and this abstracted class takes a type T and params P..
The type is what the “call” method will return,
and the params is the parameters that the “call” may require 
(can be set to void if no params are required).*/
abstract class UseCase<T, P> {
  // ignore: type_annotate_public_apis
  Future<T> call({P, params});
}
