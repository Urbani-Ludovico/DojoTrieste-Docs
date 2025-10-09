mkdir -p ~/texmf/tex/latex/djts/
mkdir -p ~/.config/texstudio/completion/user/

cp -r djts.cls djtsmod.cls images ~/texmf/tex/latex/djts/
cp djts.cwl djtsmod.cwl ~/.config/texstudio/completion/user/

texhash ~/texmf/
