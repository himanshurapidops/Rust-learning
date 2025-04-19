

// fn main() {
//     // let x = "what is this";     // x: &'static str
//     // println!("{}", x);          // ✅ prints fine

//     // let y = &x;  
//     // println!("{:p}", x);           // y: &&'static str (ref to ref)
//     // println!("{:p}", y); 
    
//     // let z = &y;         // ✅ prints fine

//     // println!("{:p}", &&&&z);          // ✅ still prints fine


//     // let s = String::from("hello");
    
//     // println!( "{}", *s.as_ptr());
//     // println!( "{:p}", &s);
//     // change(& s);


//     // unsafe {
//     //     // let r1 = &s as *const String;
//     //     // let r2 = &s as *mut String;
//     //     // println!("{}", r1 == r2);

//     //     println!( "{}", *s.as_ptr() as char)

//     //     // Ha.... Ha.... Ha... this feels like old 
     
//     // }

//     let mut a = 45;
//     let mut b = 55;

//     // // Safe mutable reference
//     // let ref_mut: &mut i32 = &mut a;

//     // Convert to raw mutable pointer
//     let raw_ptr = &mut a as *mut i32;

//     unsafe{*raw_ptr = 78;}

//     print!("{}",a);

//     println!("Before mutation:");
//     // println!("value of a: {}", *ref_mut);
//     // println!("Address via reference: {:p}", *ref_mut);
//     println!("Raw pointer address: {:?}", raw_ptr);  //cant access raw pointer value directly 


//     // unsafe {
//     //     *raw_ptr = 42;

//     //     raw_ptr = &mut 0x55df88601a4f as *mut i32 ;
//     // }
    
    


//     // let mut x=String::from("i");    // x is mutable referneceD to the String(struct)
//     // println!("{}", x.capacity());            // y is reference to  mutable refernceD to the String(struct)

//     // unsafe {
//     //     println!("{}", x.as_ptr() as u8 as char);
//     // }
//     // let mut y = &mut x;  
//     // println!("{}",y.capacity());
    
//     // println!("{:p}", y);
//     // y.push_str("g");                // y can access the String's value through the borrowing x's mutable referenceD of the String
//     // println!("{}",y.capacity());
//     // println!("{:p}", y);
//     // println!("{}", y);
//     // let z=&mut y;
//     // z.push_str(" end");
//     // println!("{}",z.capacity());
//     // println!("{}", z);
//     // println!("{}", x);
//      // this is the address of the value at the index 1


//     // let mut my_string = Vec::from("Hi ! ".as_bytes());

//     // println!("{:?}", my_string[1]); // this is ascii value at the index 1 of vector

//     // println!("{:p}", &my_string[1]);  

//     // my_string.extend_from_slice("Himanshu is here".as_bytes());

//     // println!("--------------------------------------");

//     // println!("{:p}", &my_string[1]);

//     // println!("{:p}", &my_string[1]);
//     // println!("{:?}", my_string);

//     // println!("--------------------------------------");

//     // let  d   = &my_string[1];// can i change the value through the owership of perticular element in the vector ?   and can it be now accesible in vector
//     // println!("{:p}", d);

//     // for i in my_string.iter() {
//     //     print!("{}", *i);
//     // }

//     // println!();

//     // let result = String::from_utf8(my_string).unwrap();
//     // println!("{}", result);

//     // let s1 = String::from("hello");

//     // println!("{}", &s1);

//     // let andstr = " world";
//     // let s2 = String::from(andstr);

//     // println!("{}", s2);

//     // let s3 = "not not";

//     // println!("{}", s3);

//     // let s3 = s1 + &s2;

//     // println!("{}", s3);


    





// }



// // fn change(some_string: & String) {
// //     println!( "{:p}", some_string);
// //     // some_string.push_str(", world");
// //     println!( "{:p}", some_string);
// //     println!("{}", some_string);
    
// // }

// // fn main() { 

// //     let mut n = 10;
// //        n = 576;
// //     println!("{:p}", &n); // n
// //     let mut add_n =move |x: i64| {
// //         n = 20;
// //         println!("{:p}", &n);
// //         println!("{}", n);
// //         n + x
// //     };

// //     let s = add_n(5);
// //     // println!("{}", s);
// //     // println!("{:p}", &n); // n

// //      n = -3;
// //      println!("sss{}", add_n(10));
// //     println!("{:p}", &n); // n


// // }


// // fn main() {
// //     let mut s = String::from("o66q5");
// //     println!("INIT: {:p}", s.as_ptr()); // P1
    
// //     s.push_str(" s");
// //     println!("AFTER 1: {:p}", s.as_ptr()); // maybe P1
    
// //     s.push_str(" sssssssssssssssssssssssssssssssssssssssssssssssssssssss");
// //     println!("AFTER 2: {:p}", s.as_ptr()); // now probably P2 (≠ P1)
// // }    

// // fn main() {
// //     let mut s = String::with_capacity(1); // 👈 force small capacity
// //     s.push_str("12345");
// //     println!("Before: ptr = {:p}, cap = {}, len = {}", s.as_ptr(), s.capacity(), s.len());

// //     s.push_str("6789"); // 👈 definitely over capacity
// //     println!("After : ptr = {:p}, cap = {}, len = {}", s.as_ptr(), s.capacity(), s.len());
// // }





fn main() {
    let static_str = "hello";
    let heap_str = String::from("hello");
    let ys = String::from(static_str);

    unsafe{

        println!("Heap addr:   {}", *heap_str.as_ptr() as u8 as  char);
    }
    println!("Static addr: {:p}", &heap_str);

    println!("Heap addr:   {:p}", heap_str.as_ptr());
    println!("Static addr: {:p}", ys.as_ptr());
}
