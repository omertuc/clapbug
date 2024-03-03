use clap::Parser;

#[derive(Parser)]
pub(crate) struct Cli {
    #[clap(long, groups = &["bar"])]
    pub(crate) foo: Vec<String>,
    #[clap(long)]
    pub(crate) bar: Option<String>,
}

fn main() {
    Cli::parse();
}
