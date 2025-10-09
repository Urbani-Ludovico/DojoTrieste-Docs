mkdir -p ~/texmf/tex/latex/djts/
mkdir -p ~/.config/texstudio/completion/user/

cp -r djts.cls djtsdoc.cls djtsmod.cls images ~/texmf/tex/latex/djts/
cp djts.cwl djtsdoc.cwl djtsmod.cwl ~/.config/texstudio/completion/user/

texhash ~/texmf/
