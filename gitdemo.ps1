function Demo-Rebase
{
    [CmdletBinding()]
    param(
    )
    
    if (Test-Path RebaseDemo)
    {
        Del RebaseDemo -Recurse -Force
    }
    md RebaseDemo
    cd RebaseDemo

    "var start = 0;" > demo.js
    "var ende = 100;" >> demo.js
    "for (var i = start; i < ende; i++)" >> demo.js
    "{" >> demo.js
    "    console.log(i);" >> demo.js
    "}" >> demo.js

    git init
    git a
    git c "Initial - 0 bis <100"
    git tag "1"

    "console.log('Zahlen ausgegeben')" >> demo.js
    git a
    git c "Meldung"
    git tag "2"

    "console.log(``Von `${start} bis <`${ende}``);" >> demo.js
    git a
    git c "Bereich ausgeben"
    git tag "3"
    

}

