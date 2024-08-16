use std::time::Instant;

use drillx::{equix::SolverMemory, Solution};

// 8: [0, 167, 3, 62, 247, 123, 170, 94, 107, 173, 45, 91, 176, 188, 187, 157, 134, 71, 208, 17, 232, 241, 117, 204, 70, 200, 24, 233, 60, 23, 206, 120]
// 10: [0, 43, 7, 43, 208, 209, 176, 147, 68, 12, 16, 72, 55, 111, 197, 172, 190, 176, 160, 231, 215, 87, 147, 108, 191, 142, 113, 129, 140, 109, 22, 247]
// 12: [0, 14, 239, 121, 86, 222, 107, 96, 165, 187, 235, 211, 49, 213, 189, 223, 194, 184, 58, 169, 58, 151, 178, 62, 211, 97, 47, 246, 21, 141, 77, 157]

const TARGET_DIFFICULTY: u32 = 10; // 12; // 8; //10;

fn main() {
    // Current challenge (255s for demo)
    let challenge = [255; 32];

    // Do work
    let work_timer = Instant::now();
    let (hash, nonce) = do_work(challenge);
    println!("work done in {} nanos", work_timer.elapsed().as_nanos());

    // Now proof
    let proof_timer = Instant::now();
    prove_work(challenge, Solution::new(hash.d, nonce.to_le_bytes()));
    println!("proof done in {} nanos", proof_timer.elapsed().as_nanos());
    println!(
        "work took {}x vs proof",
        work_timer.elapsed().as_nanos() / proof_timer.elapsed().as_nanos()
    );
}

// Parallelize
fn do_work(challenge: [u8; 32]) -> (drillx::Hash, u64) {
    let mut memory = SolverMemory::new();
    let mut nonce: u64 = 0;
    loop {
        // Calculate hash
        if let Ok(hx) = drillx::hash_with_memory(&mut memory, &challenge, &nonce.to_le_bytes()) {
            if hx.difficulty() >= TARGET_DIFFICULTY {
                return (hx, nonce);
            }
        }

        // Increment nonce
        nonce += 1;
    }
}

fn prove_work(challenge: [u8; 32], solution: Solution) {
    println!("Hash {:?}", solution.to_hash().h);
    assert!(solution.is_valid(&challenge));
    assert!(solution.to_hash().difficulty() >= TARGET_DIFFICULTY);
}
