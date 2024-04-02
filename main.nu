def "main sha" [--repo: string, --tag: string] {
    const tar_file_path = "tmp.tar.gz"

    http get https://github.com/($repo)/archive/refs/tags/($tag).tar.gz | save --progress -f ($tar_file_path)

    if sys.platform == "windows" {
        CertUtil -hashfile ($tar_file_path) SHA256
    } else {
        shasum -a 256 ($tar_file_path)
    }

    rm -f ($tar_file_path)
}

def main [] {}
