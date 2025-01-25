.class public Lorg/codehaus/groovy/syntax/Types;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codehaus/groovy/syntax/Types;->j6:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codehaus/groovy/syntax/Types;->DW:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lorg/codehaus/groovy/syntax/Types;->FH:Ljava/util/Set;

    const-string v1, "\n"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "{"

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "}"

    const/16 v3, 0x14

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "["

    const/16 v3, 0x1e

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "]"

    const/16 v3, 0x28

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "("

    const/16 v3, 0x32

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, ")"

    const/16 v3, 0x3c

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "."

    const/16 v3, 0x46

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, ".."

    const/16 v3, 0x4b

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "..."

    const/16 v3, 0x4d

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "->"

    const/16 v3, 0x50

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "=~"

    const/16 v3, 0x5a

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "==~"

    const/16 v3, 0x5e

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "~"

    const/16 v3, 0x61

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "="

    const/16 v3, 0x64

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "!="

    const/16 v3, 0x78

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "==="

    const/16 v3, 0x79

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "!=="

    const/16 v3, 0x7a

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "=="

    const/16 v3, 0x7b

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "<"

    const/16 v3, 0x7c

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "<="

    const/16 v3, 0x7d

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, ">"

    const/16 v3, 0x7e

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, ">="

    const/16 v3, 0x7f

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "<=>"

    const/16 v3, 0x80

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "!"

    const/16 v3, 0xa0

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "||"

    const/16 v3, 0xa2

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "&&"

    const/16 v3, 0xa4

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "||="

    const/16 v3, 0xa6

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "&&="

    const/16 v3, 0xa8

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "+"

    const/16 v3, 0xc8

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "-"

    const/16 v3, 0xc9

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "*"

    const/16 v3, 0xca

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "/"

    const/16 v3, 0xcb

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "\\"

    const/16 v3, 0xcc

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "%"

    const/16 v3, 0xcd

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "**"

    const/16 v3, 0xce

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "+="

    const/16 v3, 0xd2

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "-="

    const/16 v3, 0xd3

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "*="

    const/16 v3, 0xd4

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "/="

    const/16 v3, 0xd5

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "\\="

    const/16 v3, 0xd6

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "%="

    const/16 v3, 0xd7

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "**="

    const/16 v3, 0xd8

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "++"

    const/16 v3, 0xfa

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "--"

    const/16 v3, 0x104

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "<<"

    const/16 v3, 0x118

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, ">>"

    const/16 v3, 0x119

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, ">>>"

    const/16 v3, 0x11a

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "<<="

    const/16 v3, 0x11d

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, ">>="

    const/16 v3, 0x11e

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, ">>>="

    const/16 v3, 0x11f

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "&"

    const/16 v3, 0x155

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "^"

    const/16 v3, 0x156

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "|="

    const/16 v3, 0x15e

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "&="

    const/16 v3, 0x15f

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "^="

    const/16 v3, 0x160

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, ","

    const/16 v3, 0x12c

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, ":"

    const/16 v3, 0x136

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, ";"

    const/16 v3, 0x140

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "?"

    const/16 v3, 0x14a

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "|"

    const/16 v3, 0x154

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "${}"

    const/16 v3, 0x387

    invoke-static {v1, v3}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    const-string v1, "abstract"

    const/16 v4, 0x1fe

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "as"

    const/16 v4, 0x228

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "assert"

    const/16 v4, 0x249

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "break"

    const/16 v4, 0x23e

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "case"

    const/16 v4, 0x241

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "catch"

    const/16 v4, 0x245

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "class"

    const/16 v4, 0x213

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "const"

    const/16 v4, 0x2bc

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "continue"

    const/16 v4, 0x23f

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "def"

    const/16 v4, 0x212

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "defmacro"

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "default"

    const/16 v4, 0x242

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "do"

    const/16 v4, 0x23a

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "else"

    const/16 v4, 0x232

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "extends"

    const/16 v4, 0x21d

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "final"

    const/16 v4, 0x1ff

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "finally"

    const/16 v4, 0x246

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "for"

    const/16 v4, 0x23c

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "goto"

    const/16 v4, 0x2bd

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "if"

    const/16 v4, 0x231

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "in"

    const/16 v4, 0x23d

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "implements"

    const/16 v4, 0x21c

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "import"

    const/16 v4, 0x227

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "instanceof"

    const/16 v4, 0x220

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "interface"

    const/16 v4, 0x214

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "mixin"

    const/16 v4, 0x215

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "native"

    const/16 v4, 0x200

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "new"

    const/16 v4, 0x222

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "package"

    const/16 v4, 0x226

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "private"

    const/16 v4, 0x1f4

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "property"

    const/16 v4, 0x221

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "protected"

    const/16 v4, 0x1f5

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "public"

    const/16 v4, 0x1f6

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "return"

    const/16 v4, 0x230

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "static"

    const/16 v4, 0x209

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "super"

    const/16 v4, 0x21f

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "switch"

    const/16 v4, 0x240

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "synchronized"

    const/16 v4, 0x208

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "this"

    const/16 v4, 0x21e

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "throw"

    const/16 v4, 0x247

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "throws"

    const/16 v4, 0x248

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "transient"

    const/16 v4, 0x201

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "try"

    const/16 v4, 0x244

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "volatile"

    const/16 v4, 0x202

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "while"

    const/16 v4, 0x23b

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "true"

    const/16 v4, 0x262

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "false"

    const/16 v4, 0x263

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "null"

    const/16 v4, 0x264

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "void"

    const/16 v4, 0x258

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "boolean"

    const/16 v4, 0x259

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "byte"

    const/16 v4, 0x25a

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "int"

    const/16 v4, 0x25c

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "short"

    const/16 v4, 0x25b

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "long"

    const/16 v4, 0x25d

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "float"

    const/16 v4, 0x25e

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "double"

    const/16 v4, 0x25f

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    const-string v1, "char"

    const/16 v4, 0x260

    invoke-static {v1, v4}, Lorg/codehaus/groovy/syntax/Types;->DW(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/codehaus/groovy/syntax/Types;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_362
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Lorg/codehaus/groovy/syntax/Types;->DW:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    goto :goto_362

    :cond_37e
    const-string v0, "<newline>"

    invoke-static {v2, v0}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0xfb

    const-string v1, "<prefix ++>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0xfc

    const-string v1, "<postfix ++>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x105

    const-string v1, "<prefix -->"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x106

    const-string v1, "<postfix -->"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0xfd

    const-string v1, "<positive>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x107

    const-string v1, "<negative>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x190

    const-string v1, "<string literal>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x1b8

    const-string v1, "<identifier>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x1c2

    const-string v1, "<integer>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x1c3

    const-string v1, "<decimal>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x320

    const-string v1, "<compilation unit>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x321

    const-string v1, "<class>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x322

    const-string v1, "<interface>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x323

    const-string v1, "<mixin>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x324

    const-string v1, "<method>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x32e

    const-string v1, "<method call>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x325

    const-string v1, "<property>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x326

    const-string v1, "<parameter>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x32a

    const-string v1, "<list>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x32b

    const-string v1, "<map>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x334

    const-string v1, "<tuple>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x32c

    const-string v1, "<gstring>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x32f

    const-string v1, "<cast>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x330

    const-string v1, "<block>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x331

    const-string v1, "<closure>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x333

    const-string v1, "<ternary>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x332

    const-string v1, "<label>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x33e

    const-string v1, "<variable declaration>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x385

    const-string v1, "<start of gstring tokens>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x386

    const-string v1, "<end of gstring tokens>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const-string v0, "<start of gstring expression>"

    invoke-static {v3, v0}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x388

    const-string v1, "<end of gstring expression>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x44c

    const-string v1, "<assignment operator>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x44d

    const-string v1, "<comparison operator>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x44e

    const-string v1, "<math operator>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x44f

    const-string v1, "<logical operator>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x453

    const-string v1, "<bitwise operator>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x450

    const-string v1, "<range operator>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x451

    const-string v1, "<regex comparison operator>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x452

    const-string v1, "<dereference operator>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x4b0

    const-string v1, "<prefix operator>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x4ba

    const-string v1, "<postfix operator>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x4c4

    const-string v1, "<infix operator>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x514

    const-string v1, "<keyword>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x51e

    const-string v1, "<literal>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x528

    const-string v1, "<number>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x532

    const-string v1, "<named value>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x533

    const-string v1, "<truth value>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x53c

    const-string v1, "<primitive type>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x53d

    const-string v1, "<creatable primitive type>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x546

    const-string v1, "<loop>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x550

    const-string v1, "<reserved keyword>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x55a

    const-string v1, "<synthetic>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x578

    const-string v1, "<type declaration>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x582

    const-string v1, "<declaration modifier>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x58c

    const-string v1, "<type name>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x596

    const-string v1, "<creatable type name>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x5dc

    const-string v1, "<matched container>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x5dd

    const-string v1, "<left of matched container>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x5de

    const-string v1, "<right of matched container>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    const/16 v0, 0x7d5

    const-string v1, "<valid in a switch body>"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DW(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lorg/codehaus/groovy/syntax/Types;->j6:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_19

    :cond_17
    const-string p0, ""

    :goto_19
    return-object p0
.end method

.method private static DW(Ljava/lang/String;I)V
    .registers 3

    sget-object v0, Lorg/codehaus/groovy/syntax/Types;->FH:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Lorg/codehaus/groovy/syntax/Types;->FH(Ljava/lang/String;I)V

    return-void
.end method

.method private static FH(Ljava/lang/String;I)V
    .registers 4

    sget-object v0, Lorg/codehaus/groovy/syntax/Types;->j6:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/codehaus/groovy/syntax/Types;->DW:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static j6(Ljava/lang/String;)I
    .registers 2

    const/16 v0, 0x515

    invoke-static {p0, v0}, Lorg/codehaus/groovy/syntax/Types;->j6(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static j6(Ljava/lang/String;I)I
    .registers 4

    sget-object v0, Lorg/codehaus/groovy/syntax/Types;->DW:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p1, :cond_1b

    invoke-static {p0, p1}, Lorg/codehaus/groovy/syntax/Types;->j6(II)Z

    move-result p1

    if-nez p1, :cond_1b

    :cond_1a
    const/4 p0, 0x0

    :cond_1b
    return p0
.end method

.method public static j6(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lorg/codehaus/groovy/syntax/Types;->Hw:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_17
    const-string p0, "<>"

    return-object p0
.end method

.method private static j6(ILjava/lang/String;)V
    .registers 5

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lorg/codehaus/groovy/syntax/Types;->Hw:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_31

    :cond_17
    sget-object v0, Lorg/codehaus/groovy/syntax/Types;->Hw:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_31
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static j6(II)Z
    .registers 18

    move/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_8

    return v2

    :cond_8
    const/16 v3, 0x514

    const/4 v4, 0x0

    if-eq v1, v3, :cond_380

    const/16 v3, 0x515

    const/16 v5, 0x154

    const/4 v6, 0x5

    if-eq v1, v3, :cond_379

    const/16 v3, 0x532

    if-eq v1, v3, :cond_36e

    const/16 v3, 0x533

    if-eq v1, v3, :cond_363

    const/16 v3, 0x53c

    if-eq v1, v3, :cond_358

    const/16 v3, 0x53d

    if-eq v1, v3, :cond_34d

    const/16 v3, 0x550

    if-eq v1, v3, :cond_342

    const/16 v3, 0x551

    if-eq v1, v3, :cond_331

    const/16 v3, 0x776

    const/16 v7, 0x190

    const/16 v8, 0x1c3

    if-eq v1, v3, :cond_31f

    const/16 v3, 0x777

    const/16 v10, 0x33e

    const/16 v12, 0x222

    if-eq v1, v3, :cond_308

    const/16 v3, 0x14

    packed-switch v1, :pswitch_data_38c

    const/16 v6, 0x61

    const/16 v13, 0xa4

    const/16 v14, 0x11a

    const/16 v15, 0xa0

    const/16 v9, 0x46

    const/16 v11, 0xc8

    packed-switch v1, :pswitch_data_398

    const/16 v5, 0xfa

    const/16 v14, 0xa

    const/16 v13, 0x32

    const/16 v10, 0xc9

    const/16 v9, 0x1e

    sparse-switch v1, :sswitch_data_3ac

    packed-switch v1, :pswitch_data_40a

    packed-switch v1, :pswitch_data_414

    goto/16 :goto_340

    :pswitch_65  #0x3eb
    const/4 v1, -0x1

    if-eq v0, v1, :cond_72

    if-eq v0, v6, :cond_72

    if-eq v0, v3, :cond_72

    const/16 v1, 0x140

    if-eq v0, v1, :cond_72

    goto/16 :goto_340

    :cond_72
    return v2

    :pswitch_73  #0x3ea
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7e

    if-eq v0, v6, :cond_7e

    const/16 v1, 0x140

    if-eq v0, v1, :cond_7e

    goto/16 :goto_340

    :cond_7e
    return v2

    :pswitch_7f  #0x3e9
    if-ltz v0, :cond_84

    if-gt v0, v10, :cond_84

    goto :goto_85

    :cond_84
    const/4 v2, 0x0

    :goto_85
    :pswitch_85  #0x3e8
    return v2

    :pswitch_86  #0x453
    if-lt v0, v5, :cond_8c

    const/16 v1, 0x156

    if-le v0, v1, :cond_90

    :cond_8c
    if-ne v0, v6, :cond_8f

    goto :goto_90

    :cond_8f
    const/4 v2, 0x0

    :cond_90
    :goto_90
    return v2

    :pswitch_91  #0x452
    if-eq v0, v9, :cond_99

    const/16 v1, 0x50

    if-ne v0, v1, :cond_98

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :cond_99
    :goto_99
    return v2

    :pswitch_9a  #0x451
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_a4

    const/16 v1, 0x5e

    if-ne v0, v1, :cond_a3

    goto :goto_a4

    :cond_a3
    const/4 v2, 0x0

    :cond_a4
    :goto_a4
    return v2

    :pswitch_a5  #0x450
    const/16 v1, 0x4b

    if-eq v0, v1, :cond_af

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_ae

    goto :goto_af

    :cond_ae
    const/4 v2, 0x0

    :cond_af
    :goto_af
    return v2

    :pswitch_b0  #0x44f
    if-lt v0, v15, :cond_b5

    if-gt v0, v13, :cond_b5

    goto :goto_b6

    :cond_b5
    const/4 v2, 0x0

    :goto_b6
    return v2

    :pswitch_b7  #0x44e
    if-lt v0, v11, :cond_bb

    if-le v0, v14, :cond_c7

    :cond_bb
    if-lt v0, v15, :cond_bf

    if-le v0, v13, :cond_c7

    :cond_bf
    if-lt v0, v5, :cond_c6

    const/16 v1, 0x156

    if-gt v0, v1, :cond_c6

    goto :goto_c7

    :cond_c6
    const/4 v2, 0x0

    :cond_c7
    :goto_c7
    return v2

    :pswitch_c8  #0x44d
    const/16 v1, 0x78

    if-lt v0, v1, :cond_d1

    const/16 v1, 0x80

    if-gt v0, v1, :cond_d1

    goto :goto_d2

    :cond_d1
    const/4 v2, 0x0

    :goto_d2
    return v2

    :pswitch_d3  #0x44c
    const/16 v1, 0x64

    if-eq v0, v1, :cond_f9

    const/16 v1, 0xd2

    if-lt v0, v1, :cond_df

    const/16 v1, 0xd8

    if-le v0, v1, :cond_f9

    :cond_df
    const/16 v1, 0xa6

    if-lt v0, v1, :cond_e7

    const/16 v1, 0xa8

    if-le v0, v1, :cond_f9

    :cond_e7
    const/16 v1, 0x11d

    if-lt v0, v1, :cond_ef

    const/16 v1, 0x11f

    if-le v0, v1, :cond_f9

    :cond_ef
    const/16 v1, 0x15e

    if-lt v0, v1, :cond_f8

    const/16 v1, 0x160

    if-gt v0, v1, :cond_f8

    goto :goto_f9

    :cond_f8
    const/4 v2, 0x0

    :cond_f9
    :goto_f9
    return v2

    :sswitch_fa
    if-eq v0, v13, :cond_118

    const/16 v1, 0xfb

    if-eq v0, v1, :cond_118

    const/16 v1, 0xfd

    if-eq v0, v1, :cond_118

    const/16 v1, 0x105

    if-eq v0, v1, :cond_118

    const/16 v1, 0x107

    if-eq v0, v1, :cond_118

    if-eq v0, v11, :cond_118

    if-eq v0, v10, :cond_118

    const/16 v1, 0x777

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(II)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :cond_118
    return v4

    :sswitch_119
    const/16 v1, 0x515

    invoke-static {v0, v1}, Lorg/codehaus/groovy/syntax/Types;->j6(II)Z

    move-result v1

    if-eqz v1, :cond_137

    if-eq v0, v14, :cond_136

    if-eq v0, v9, :cond_136

    if-eq v0, v13, :cond_136

    if-eq v0, v6, :cond_136

    if-eq v0, v15, :cond_136

    if-eq v0, v5, :cond_136

    const/16 v1, 0x104

    if-eq v0, v1, :cond_136

    if-eq v0, v11, :cond_136

    if-eq v0, v10, :cond_136

    return v4

    :cond_136
    return v2

    :cond_137
    const/16 v1, 0x220

    if-eq v0, v1, :cond_13f

    packed-switch v0, :pswitch_data_424

    return v2

    :cond_13f
    :pswitch_13f  #0x386, 0x387, 0x388
    return v4

    :sswitch_140
    if-lt v0, v7, :cond_145

    if-gt v0, v8, :cond_145

    return v2

    :cond_145
    if-eq v0, v13, :cond_153

    if-eq v0, v12, :cond_153

    const/16 v1, 0x32c

    if-eq v0, v1, :cond_153

    const/16 v1, 0x385

    if-eq v0, v1, :cond_153

    goto/16 :goto_340

    :cond_153
    return v2

    :sswitch_154
    if-ne v0, v3, :cond_157

    return v2

    :cond_157
    :sswitch_157
    const/16 v1, 0x241

    if-eq v0, v1, :cond_161

    const/16 v1, 0x242

    if-ne v0, v1, :cond_160

    goto :goto_161

    :cond_160
    const/4 v2, 0x0

    :cond_161
    :goto_161
    return v2

    :sswitch_162
    if-eq v0, v9, :cond_16e

    const/16 v1, 0x46

    if-eq v0, v1, :cond_16e

    const/16 v1, 0x1b8

    if-eq v0, v1, :cond_16e

    goto/16 :goto_340

    :cond_16e
    return v2

    :sswitch_16f
    if-eq v0, v14, :cond_17f

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_17f

    const/16 v1, 0x21c

    if-eq v0, v1, :cond_17f

    const/16 v1, 0x248

    if-eq v0, v1, :cond_17f

    goto/16 :goto_340

    :cond_17f
    return v2

    :sswitch_180
    const/16 v1, 0x28

    if-eq v0, v1, :cond_18a

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_189

    goto :goto_18a

    :cond_189
    const/4 v2, 0x0

    :cond_18a
    :goto_18a
    return v2

    :sswitch_18b
    const/16 v1, 0x3c

    if-eq v0, v1, :cond_195

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_194

    goto :goto_195

    :cond_194
    const/4 v2, 0x0

    :cond_195
    :goto_195
    return v2

    :sswitch_196
    const/16 v1, 0x1b8

    if-ne v0, v1, :cond_34d

    return v2

    :sswitch_19b
    const/16 v1, 0x1b8

    if-ne v0, v1, :cond_358

    return v2

    :sswitch_1a0
    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1a9

    const/16 v1, 0x209

    if-gt v0, v1, :cond_1a9

    goto :goto_1aa

    :cond_1a9
    const/4 v2, 0x0

    :goto_1aa
    return v2

    :sswitch_1ab
    const/16 v1, 0x213

    if-lt v0, v1, :cond_1b4

    const/16 v1, 0x215

    if-gt v0, v1, :cond_1b4

    goto :goto_1b5

    :cond_1b4
    const/4 v2, 0x0

    :goto_1b5
    return v2

    :sswitch_1b6
    const/16 v1, 0x320

    if-lt v0, v1, :cond_1bf

    const/16 v1, 0x33e

    if-gt v0, v1, :cond_1bf

    goto :goto_1c0

    :cond_1bf
    const/4 v2, 0x0

    :goto_1c0
    return v2

    :sswitch_1c1
    packed-switch v0, :pswitch_data_42e

    goto/16 :goto_340

    :pswitch_1c6  #0x23a, 0x23b, 0x23c
    return v2

    :sswitch_1c7
    if-eq v0, v11, :cond_1cd

    if-eq v0, v10, :cond_1cd

    goto/16 :goto_340

    :cond_1cd
    return v2

    :sswitch_1ce
    const/16 v1, 0x1c2

    if-eq v0, v1, :cond_1d6

    if-ne v0, v8, :cond_1d5

    goto :goto_1d6

    :cond_1d5
    const/4 v2, 0x0

    :cond_1d6
    :goto_1d6
    return v2

    :sswitch_1d7
    if-lt v0, v7, :cond_1dc

    if-gt v0, v8, :cond_1dc

    goto :goto_1dd

    :cond_1dc
    const/4 v2, 0x0

    :goto_1dd
    return v2

    :sswitch_1de
    if-eq v0, v11, :cond_1f0

    if-eq v0, v10, :cond_1f0

    const/16 v1, 0xce

    if-eq v0, v1, :cond_1f0

    const/16 v1, 0xfd

    if-eq v0, v1, :cond_1f0

    const/16 v1, 0x107

    if-eq v0, v1, :cond_1f0

    goto/16 :goto_340

    :cond_1f0
    return v2

    :sswitch_1f1
    const/16 v1, 0x46

    if-eq v0, v1, :cond_24f

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_24f

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_24f

    const/16 v1, 0x50

    if-eq v0, v1, :cond_24f

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_24f

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_24f

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_24f

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_24f

    const/16 v1, 0x220

    if-eq v0, v1, :cond_24f

    packed-switch v0, :pswitch_data_438

    packed-switch v0, :pswitch_data_442

    const/16 v1, 0x78

    if-lt v0, v1, :cond_223

    const/16 v1, 0x80

    if-le v0, v1, :cond_24f

    :cond_223
    if-lt v0, v11, :cond_229

    const/16 v1, 0xd7

    if-le v0, v1, :cond_24f

    :cond_229
    const/16 v1, 0x64

    if-eq v0, v1, :cond_24f

    const/16 v1, 0xd2

    if-lt v0, v1, :cond_235

    const/16 v1, 0xd8

    if-le v0, v1, :cond_24f

    :cond_235
    const/16 v1, 0xa6

    if-lt v0, v1, :cond_23d

    const/16 v1, 0xa8

    if-le v0, v1, :cond_24f

    :cond_23d
    const/16 v1, 0x11d

    if-lt v0, v1, :cond_245

    const/16 v1, 0x11f

    if-le v0, v1, :cond_24f

    :cond_245
    const/16 v1, 0x15e

    if-lt v0, v1, :cond_24e

    const/16 v1, 0x160

    if-gt v0, v1, :cond_24e

    goto :goto_24f

    :cond_24e
    const/4 v2, 0x0

    :cond_24f
    :goto_24f
    :pswitch_24f  #0x118, 0x119, 0x11a, 0x154, 0x155, 0x156
    return v2

    :sswitch_250
    if-eq v0, v5, :cond_260

    const/16 v1, 0xfc

    if-eq v0, v1, :cond_260

    const/16 v1, 0x104

    if-eq v0, v1, :cond_260

    const/16 v1, 0x106

    if-eq v0, v1, :cond_260

    goto/16 :goto_340

    :cond_260
    return v2

    :sswitch_261
    if-eq v0, v10, :cond_283

    if-eq v0, v5, :cond_283

    const/16 v1, 0x104

    if-eq v0, v1, :cond_283

    :sswitch_269
    if-eq v0, v6, :cond_283

    if-eq v0, v15, :cond_283

    const/16 v1, 0xfb

    if-eq v0, v1, :cond_283

    const/16 v1, 0xfd

    if-eq v0, v1, :cond_283

    const/16 v1, 0x105

    if-eq v0, v1, :cond_283

    const/16 v1, 0x107

    if-eq v0, v1, :cond_283

    const/16 v1, 0x32f

    if-eq v0, v1, :cond_283

    goto/16 :goto_340

    :cond_283
    return v2

    :pswitch_284  #0x5de
    if-eq v0, v3, :cond_290

    const/16 v1, 0x28

    if-eq v0, v1, :cond_290

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_290

    goto/16 :goto_340

    :cond_290
    return v2

    :pswitch_291  #0x5dd
    if-eq v0, v14, :cond_299

    if-eq v0, v9, :cond_299

    if-eq v0, v13, :cond_299

    goto/16 :goto_340

    :cond_299
    return v2

    :pswitch_29a  #0x5dc
    if-eq v0, v14, :cond_2ac

    if-eq v0, v3, :cond_2ac

    if-eq v0, v9, :cond_2ac

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2ac

    if-eq v0, v13, :cond_2ac

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_2ac

    goto/16 :goto_340

    :cond_2ac
    return v2

    :pswitch_2ad  #0x771
    if-ne v0, v9, :cond_2b0

    goto :goto_2b1

    :cond_2b0
    const/4 v2, 0x0

    :goto_2b1
    return v2

    :pswitch_2b2  #0x770
    if-lt v0, v7, :cond_2b7

    if-gt v0, v8, :cond_2b7

    goto :goto_2b8

    :cond_2b7
    const/4 v2, 0x0

    :goto_2b8
    return v2

    :pswitch_2b9  #0x76f
    if-eq v0, v12, :cond_2c3

    packed-switch v0, :pswitch_data_44c

    packed-switch v0, :pswitch_data_456

    goto/16 :goto_340

    :cond_2c3
    :pswitch_2c3  #0x21e, 0x21f, 0x220, 0x262, 0x263, 0x264
    return v2

    :pswitch_2c4  #0x76e
    const/16 v1, 0x32f

    if-eq v0, v1, :cond_2d2

    const/16 v1, 0x331

    if-eq v0, v1, :cond_2d2

    const/16 v1, 0x333

    if-eq v0, v1, :cond_2d2

    goto/16 :goto_340

    :cond_2d2
    return v2

    :pswitch_2d3  #0x76d
    const/16 v1, 0x46

    if-lt v0, v1, :cond_2dc

    const/16 v3, 0x11a

    if-gt v0, v3, :cond_2dc

    goto :goto_2dd

    :cond_2dc
    const/4 v2, 0x0

    :goto_2dd
    return v2

    :pswitch_2de  #0x76c
    const/16 v1, 0x46

    const/16 v3, 0x11a

    if-lt v0, v1, :cond_2e7

    if-gt v0, v3, :cond_2e7

    return v2

    :cond_2e7
    if-lt v0, v7, :cond_2ec

    if-gt v0, v8, :cond_2ec

    return v2

    :cond_2ec
    if-eq v0, v9, :cond_307

    if-eq v0, v12, :cond_307

    const/16 v1, 0x32c

    if-eq v0, v1, :cond_307

    const/16 v1, 0x32f

    if-eq v0, v1, :cond_307

    const/16 v1, 0x331

    if-eq v0, v1, :cond_307

    const/16 v1, 0x333

    if-eq v0, v1, :cond_307

    packed-switch v0, :pswitch_data_460

    packed-switch v0, :pswitch_data_46a

    goto :goto_340

    :cond_307
    :pswitch_307  #0x21e, 0x21f, 0x220, 0x262, 0x263, 0x264
    return v2

    :cond_308
    if-eq v0, v12, :cond_31e

    const/16 v1, 0x32e

    if-eq v0, v1, :cond_31e

    const/16 v1, 0x331

    if-eq v0, v1, :cond_31e

    const/16 v1, 0x333

    if-eq v0, v1, :cond_31e

    const/16 v1, 0x33e

    if-eq v0, v1, :cond_31e

    packed-switch v0, :pswitch_data_474

    goto :goto_31f

    :cond_31e
    :pswitch_31e  #0x32a, 0x32b, 0x32c
    return v2

    :cond_31f
    :goto_31f
    if-lt v0, v7, :cond_324

    if-gt v0, v8, :cond_324

    return v2

    :cond_324
    const/16 v1, 0x21e

    if-eq v0, v1, :cond_330

    const/16 v1, 0x21f

    if-eq v0, v1, :cond_330

    packed-switch v0, :pswitch_data_47e

    goto :goto_340

    :cond_330
    :pswitch_330  #0x262, 0x263, 0x264
    return v2

    :cond_331
    const/16 v1, 0x21b

    if-eq v0, v1, :cond_341

    const/16 v1, 0x221

    if-eq v0, v1, :cond_341

    const/16 v1, 0x23d

    if-eq v0, v1, :cond_341

    packed-switch v0, :pswitch_data_488

    :goto_340
    return v4

    :cond_341
    :pswitch_341  #0x212, 0x213, 0x214, 0x215
    return v2

    :cond_342
    const/16 v1, 0x2bc

    if-lt v0, v1, :cond_34b

    const/16 v1, 0x2bd

    if-gt v0, v1, :cond_34b

    goto :goto_34c

    :cond_34b
    const/4 v2, 0x0

    :goto_34c
    return v2

    :cond_34d
    const/16 v1, 0x259

    if-lt v0, v1, :cond_356

    const/16 v1, 0x260

    if-gt v0, v1, :cond_356

    goto :goto_357

    :cond_356
    const/4 v2, 0x0

    :goto_357
    return v2

    :cond_358
    const/16 v1, 0x258

    if-lt v0, v1, :cond_361

    const/16 v1, 0x260

    if-gt v0, v1, :cond_361

    goto :goto_362

    :cond_361
    const/4 v2, 0x0

    :goto_362
    return v2

    :cond_363
    const/16 v1, 0x262

    if-eq v0, v1, :cond_36d

    const/16 v1, 0x263

    if-ne v0, v1, :cond_36c

    goto :goto_36d

    :cond_36c
    const/4 v2, 0x0

    :cond_36d
    :goto_36d
    return v2

    :cond_36e
    const/16 v1, 0x262

    if-lt v0, v1, :cond_377

    const/16 v1, 0x264

    if-gt v0, v1, :cond_377

    goto :goto_378

    :cond_377
    const/4 v2, 0x0

    :goto_378
    return v2

    :cond_379
    if-lt v0, v6, :cond_37e

    if-gt v0, v5, :cond_37e

    goto :goto_37f

    :cond_37e
    const/4 v2, 0x0

    :goto_37f
    return v2

    :cond_380
    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_389

    const/16 v1, 0x2bd

    if-gt v0, v1, :cond_389

    goto :goto_38a

    :cond_389
    const/4 v2, 0x0

    :goto_38a
    return v2

    nop

    :pswitch_data_38c
    .packed-switch 0x3e8
        :pswitch_85  #000003e8
        :pswitch_7f  #000003e9
        :pswitch_73  #000003ea
        :pswitch_65  #000003eb
    .end packed-switch

    :pswitch_data_398
    .packed-switch 0x44c
        :pswitch_d3  #0000044c
        :pswitch_c8  #0000044d
        :pswitch_b7  #0000044e
        :pswitch_b0  #0000044f
        :pswitch_a5  #00000450
        :pswitch_9a  #00000451
        :pswitch_91  #00000452
        :pswitch_86  #00000453
    .end packed-switch

    :sswitch_data_3ac
    .sparse-switch
        0x4b0 -> :sswitch_261
        0x4ba -> :sswitch_250
        0x4c4 -> :sswitch_1f1
        0x4ce -> :sswitch_1de
        0x4d3 -> :sswitch_269
        0x51e -> :sswitch_1d7
        0x528 -> :sswitch_1ce
        0x52d -> :sswitch_1c7
        0x546 -> :sswitch_1c1
        0x55a -> :sswitch_1b6
        0x578 -> :sswitch_1ab
        0x582 -> :sswitch_1a0
        0x58c -> :sswitch_19b
        0x596 -> :sswitch_196
        0x7d0 -> :sswitch_18b
        0x7d1 -> :sswitch_180
        0x7d2 -> :sswitch_16f
        0x7d3 -> :sswitch_162
        0x7d4 -> :sswitch_154
        0x7d5 -> :sswitch_157
        0x7d6 -> :sswitch_140
        0x7d7 -> :sswitch_119
        0x7d8 -> :sswitch_fa
    .end sparse-switch

    :pswitch_data_40a
    .packed-switch 0x5dc
        :pswitch_29a  #000005dc
        :pswitch_291  #000005dd
        :pswitch_284  #000005de
    .end packed-switch

    :pswitch_data_414
    .packed-switch 0x76c
        :pswitch_2de  #0000076c
        :pswitch_2d3  #0000076d
        :pswitch_2c4  #0000076e
        :pswitch_2b9  #0000076f
        :pswitch_2b2  #00000770
        :pswitch_2ad  #00000771
    .end packed-switch

    :pswitch_data_424
    .packed-switch 0x386
        :pswitch_13f  #00000386
        :pswitch_13f  #00000387
        :pswitch_13f  #00000388
    .end packed-switch

    :pswitch_data_42e
    .packed-switch 0x23a
        :pswitch_1c6  #0000023a
        :pswitch_1c6  #0000023b
        :pswitch_1c6  #0000023c
    .end packed-switch

    :pswitch_data_438
    .packed-switch 0x118
        :pswitch_24f  #00000118
        :pswitch_24f  #00000119
        :pswitch_24f  #0000011a
    .end packed-switch

    :pswitch_data_442
    .packed-switch 0x154
        :pswitch_24f  #00000154
        :pswitch_24f  #00000155
        :pswitch_24f  #00000156
    .end packed-switch

    :pswitch_data_44c
    .packed-switch 0x21e
        :pswitch_2c3  #0000021e
        :pswitch_2c3  #0000021f
        :pswitch_2c3  #00000220
    .end packed-switch

    :pswitch_data_456
    .packed-switch 0x262
        :pswitch_2c3  #00000262
        :pswitch_2c3  #00000263
        :pswitch_2c3  #00000264
    .end packed-switch

    :pswitch_data_460
    .packed-switch 0x21e
        :pswitch_307  #0000021e
        :pswitch_307  #0000021f
        :pswitch_307  #00000220
    .end packed-switch

    :pswitch_data_46a
    .packed-switch 0x262
        :pswitch_307  #00000262
        :pswitch_307  #00000263
        :pswitch_307  #00000264
    .end packed-switch

    :pswitch_data_474
    .packed-switch 0x32a
        :pswitch_31e  #0000032a
        :pswitch_31e  #0000032b
        :pswitch_31e  #0000032c
    .end packed-switch

    :pswitch_data_47e
    .packed-switch 0x262
        :pswitch_330  #00000262
        :pswitch_330  #00000263
        :pswitch_330  #00000264
    .end packed-switch

    :pswitch_data_488
    .packed-switch 0x212
        :pswitch_341  #00000212
        :pswitch_341  #00000213
        :pswitch_341  #00000214
        :pswitch_341  #00000215
    .end packed-switch
.end method
