

fn main() {
    // let x = "what is this";     // x: &'static str
    // println!("{}", x);          // ✅ prints fine

    // let y = &x;  
    // println!("{:p}", x);           // y: &&'static str (ref to ref)
    // println!("{:p}", y); 
    
    // let z = &y;         // ✅ prints fine

    // println!("{:p}", &&&&z);          // ✅ still prints fine


    // let s = String::from("hello");
    
    // println!( "{}", *s.as_ptr());
    // println!( "{:p}", &s);
    // change(& s);


    // unsafe {
    //     // let r1 = &s as *const String;
    //     // let r2 = &s as *const String;
    //     // println!("{}", r1 == r2);

    //     println!( "{}", *s.as_ptr() as char)

    //     // Ha.... Ha.... Ha... this feels like old 
     
    // }

    let a = 45 ;

    println!("{:p}", &a);
    println!("{}", a);
    


    // let mut x=String::from("i");    // x is mutable referneceD to the String(struct)
    // println!("{}", x.capacity());            // y is reference to  mutable refernceD to the String(struct)

    // unsafe {
    //     println!("{}", x.as_ptr() as u8 as char);
    // }
    // let mut y = &mut x;  
    // println!("{}",y.capacity());
    
    // println!("{:p}", y);
    // y.push_str("g");                // y can access the String's value through the borrowing x's mutable referenceD of the String
    // println!("{}",y.capacity());
    // println!("{:p}", y);
    // println!("{}", y);
    // let z=&mut y;
    // z.push_str(" end");
    // println!("{}",z.capacity());
    // println!("{}", z);
    // println!("{}", x);

    let mut my_string = Vec::from("Hi ! ".as_bytes());

    println!("{:?}", my_string[1]);

    println!("{:p}", &my_string[1]);

    println!("{:p}", &my_string[1]);

    my_string.extend_from_slice("Himanshu is here".as_bytes());

    println!("--------------------------------------");

    println!("{:p}", &my_string[1]);

    println!("{:p}", &my_string[1]);
    println!("{:?}", my_string);

    println!("--------------------------------------");

    let  d   = &my_string[1];// can i change the value through the owership of perticular element in the vector ?   and can it be now accesible in vector
    println!("{:p}", d);

    for i in my_string.iter() {
        println!("{:p}", i);
    }

    println!();

    let result = String::from_utf8(my_string).unwrap();
    println!("{}", result);
}



// fn change(some_string: & String) {
//     println!( "{:p}", some_string);
//     // some_string.push_str(", world");
//     println!( "{:p}", some_string);
//     println!("{}", some_string);
    
//     }       