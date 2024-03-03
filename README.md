# Clap bug

Using a group named after another parameter causes weird behavior. 

# Usage

Run `./bug.sh`

# Output

```
+++ readlink -f ./bug.sh
++ dirname /home/omer/repos/clapbug/bug.sh
+ SCRIPT_DIR=/home/omer/repos/clapbug
+ cd /home/omer/repos/clapbug
+ cargo run --release -- --foo x --foo y --bar z
    Finished release [optimized] target(s) in 0.00s
     Running `target/release/clapbug --foo x --foo y --bar z`
error: the argument '--bar <BAR>' cannot be used multiple times

Usage: clapbug [OPTIONS]

For more information, try '--help'.
+ cargo run --release -- --foo x --foo y
    Finished release [optimized] target(s) in 0.00s
     Running `target/release/clapbug --foo x --foo y`
thread 'main' panicked at /home/omer/.cargo/registry/src/index.crates.io-6f17d22bba15001f/clap_builder-4.5.1/src/parser/error.rs:32:9:
Mismatch between definition and access of `bar`. Could not downcast to TypeId { t: 42966343538335219590177265727833432740 }, need to downcast to TypeId { t: 305658720655940225303732361970160948672 }

note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace
```
