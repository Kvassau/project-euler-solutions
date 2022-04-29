use std::env;

fn main() {
    const USAGE: &str = "Usage: ./3.bin <number>";

    let args: Vec<String> = env::args().collect();

    if args.len() == 1 || args.len() > 2 {
        println!("{}", USAGE);
        return;
    }

    let mut number: u64 = match &args[1].trim().parse() {
        Ok(num) => *num,
        Err(_) => {
            println!("{}", USAGE);
            return;
        }
    };

    let input: u64 = number;
    let mut max_prime: u64 = 0;
    let mut largest_prime: u64 = 3;

    if number % 2 == 0 {
        max_prime = 2;
    }

    while number % 2 == 0 {
        number /= 2;
    }

    while number > 1 {
        while number % largest_prime == 0 {
            max_prime = largest_prime;
            number /= largest_prime;
        }
        largest_prime += 2;
    }

    println!("Largest prime of {}: {}", input, max_prime);
}
