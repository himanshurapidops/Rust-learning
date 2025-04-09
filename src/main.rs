fn main() {
    let mut x = 10;
    let y = &mut x;
    *y = 20;

    let z = x; 
    println!("{}", std::ptr::eq(&x, &z));

}
