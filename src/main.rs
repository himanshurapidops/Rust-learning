
// #[derive(Debug)]
// struct User {
//     id: u32,
//     name: String,
//     active: bool,
// }

// fn main() {
  
//   let mut  x = 10;

//   println!("{}", x);

//   x = 20;
  
//   println!("{}", x);

//   let x = false;

//   println!("{}", x);
  




// }

// use std::io;

use std::any::type_name_of_val;

fn main() {
    // let a = [1, 2, 3, 4, 5];

    // println!("Please enter an array index.");

    // let mut index = String::new();

    // io::stdin()
    //     .read_line(&mut index)
    //     .expect("Failed to read line");

    // let index: usize = index
    //     .trim()
    //     .parse()
    //     .expect("Index entered was not a number");

    // let element = a[index];

    // println!("The value of the element at index {index} is: {element}");
    
    
    // let g = 10.5;

    // println!("{:b}", g as i32);



    // let x = 5;
    // println!("x: {}", x);
    // let x = x + 1;
    // println!("x: {}", x);
    // let x = x * 2;
    // println!("x: {}", x);


    // let c = "heeloworld";

    // println!("{}", type_name_of_val(&c));

    let s = String::from("hello");

    println!("{}", type_name_of_val(&s));
    
    let s = s + " okay  " ;

    let a = type_name_of_val(&s);

    println!("{}", a);

//    let f =  s.char_indices().by_ref();

//    println!( "{:?}", f);

let c = String::from("hello");
let b = String::from("world");

// let t = "yes";
// let y = "no";

println!("{}", c + &b);

    // println!("{}",a);

    // let add = Add::add( );


    //how to add two slice
    

}

// fn main2() {
//       let mut x = 10;
//     println!("{} 0", x);
//     println!("{:p} 1", &x);  // :p prints the address

//     let y: &mut i32 = &mut x; 
//     *y = 20;

//     println!("{} 2", *y); 
//     println!("{:p} 3", y);
//     println!("{} 3.1", y); // i think if you are poviding the address and you print the value like this {}  rust will automatically convert the address to the value
//     println!("{:p} 4", &y);
//     println!("{} 4.1", &y);
//     println!("{:p} 5", *&y);
//     println!("{} 6", *&y);
//     println!("{:p} 7.1", &*y);
//     println!("{} 7.2", &*y);
  
//     let z = &y;

//     //print the address too

//     println!("{:p} 7", y);
//     println!("{:p} 8", &y);
//     println!("{} 9", *&z);
//     println!("{:p} 10", z);

//     println!("{:p} {} 11",&y, *y);
//     println!("{:p} {:p} 12",&z, *z);
    
//     //When printing a reference with {}, Rust will automatically dereference it (if it implements Display) — which is what you're observing..


// }



// fn main3() {

//     #[derive(Debug)]
//     struct Point {
//         x: i32,
//         y: i32,
//     }

//     let point = Point { x: 5, y: 20 };
//     println!("{:?}", point);
//     println!("{:b}", point.x );
//     println!("{:o}", point.x);
//     println!("{:x}", point.x);
//     println!("{:X}", point.x);
//     println!( "{:?}", point.x);
//     println!("{:e}", point.x);
//     println!("{:E}", point.x);

//     println!("{:b}", point.y);
    
//     let user = User {
//         id: 1,
//         name: String::from("Himanshu"),
//         active: true,
//     };
//     println!("{} {} {}", user.name, user.id, user.active);
//     println!("{:#?}", user);

//     // println!("{:?}", ) // {:?} is used to print the struct
// }


// fn main4() {
//     let mut x = 10;
//     let y = &mut x;
//     let z = y;
//     println!("{}", z);
// }