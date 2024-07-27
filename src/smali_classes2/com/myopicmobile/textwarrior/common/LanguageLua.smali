.class public Lcom/myopicmobile/textwarrior/common/LanguageLua;
.super Lcom/myopicmobile/textwarrior/common/Language;


# static fields
.field private static final LUA_OPERATORS:[C

.field private static _theOne:Lcom/myopicmobile/textwarrior/common/Language; = null

.field private static final extFunctionTarget:Ljava/lang/String; = "activity|call|compile|dump|each|enum|import|loadbitmap|loadlayout|loadmenu|set|task|thread|timer"

.field private static final functionTarget:Ljava/lang/String; = "__add|__band|__bnot|__bor|__bxor|__call|__concat|__div|__eq|__idiv|__index|__le|__len|__lt|__mod|__mul|__newindex|__pow|__shl|__shr|__sub|__unm|_ENV|_G|assert|collectgarbage|dofile|error|findtable|getmetatable|ipairs|load|loadfile|loadstring|module|next|pairs|pcall|print|rawequal|rawget|rawlen|rawset|require|select|self|setmetatable|tointeger|tonumber|tostring|type|unpack|xpcall|activity|call|compile|dump|each|enum|import|loadbitmap|loadlayout|loadmenu|set|task|thread|timer|coroutine|debug|io|luajava|math|os|package|string|table|utf8"

.field private static final globalTarget:Ljava/lang/String; = "__add|__band|__bnot|__bor|__bxor|__call|__concat|__div|__eq|__idiv|__index|__le|__len|__lt|__mod|__mul|__newindex|__pow|__shl|__shr|__sub|__unm|_ENV|_G|assert|collectgarbage|dofile|error|findtable|getmetatable|ipairs|load|loadfile|loadstring|module|next|pairs|pcall|print|rawequal|rawget|rawlen|rawset|require|select|self|setmetatable|tointeger|tonumber|tostring|type|unpack|xpcall"

.field private static final keywordTarget:Ljava/lang/String; = "and|break|do|else|elseif|end|false|for|function|goto|if|in|local|nil|not|or|repeat|return|then|true|until|while"

.field private static final keywords:[Ljava/lang/String;

.field private static final names:[Ljava/lang/String;

.field private static final packageName:Ljava/lang/String; = "coroutine|debug|io|luajava|math|os|package|string|table|utf8"

.field private static final package_coroutine:Ljava/lang/String; = "create|isyieldable|resume|running|status|wrap|yield"

.field private static final package_debug:Ljava/lang/String; = "debug|gethook|getinfo|getlocal|getmetatable|getregistry|getupvalue|getuservalue|sethook|setlocal|setmetatable|setupvalue|setuservalue|traceback|upvalueid|upvaluejoin"

.field private static final package_io:Ljava/lang/String; = "close|flush|input|lines|open|output|popen|read|stderr|stdin|stdout|tmpfile|type|write"

.field private static final package_luajava:Ljava/lang/String; = "astable|bindClass|clear|coding|createArray|createProxy|instanceof|loadLib|loaded|luapath|new|newInstance|package|tostring"

.field private static final package_math:Ljava/lang/String; = "abs|acos|asin|atan|atan2|ceil|cos|cosh|deg|exp|floor|fmod|frexp|huge|ldexp|log|log10|max|maxinteger|min|mininteger|modf|pi|pow|rad|random|randomseed|sin|sinh|sqrt|tan|tanh|tointeger|type|ult"

.field private static final package_os:Ljava/lang/String; = "clock|date|difftime|execute|exit|getenv|remove|rename|setlocale|time|tmpname"

.field private static final package_package:Ljava/lang/String; = "config|cpath|loaded|loaders|loadlib|path|preload|searchers|searchpath|seeall"

.field private static final package_string:Ljava/lang/String; = "byte|char|dump|find|format|gfind|gmatch|gsub|len|lower|match|pack|packsize|rep|reverse|sub|unpack|upper"

.field private static final package_table:Ljava/lang/String; = "concat|foreach|foreachi|insert|maxn|move|pack|remove|sort|unpack"

.field private static final package_utf8:Ljava/lang/String; = "char|charpattern|codepoint|codes|len|offset"


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    check-cast v0, Lcom/myopicmobile/textwarrior/common/Language;

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LanguageLua;->_theOne:Lcom/myopicmobile/textwarrior/common/Language;

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LanguageLua;->keywordTarget:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LanguageLua;->keywords:[Ljava/lang/String;

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LanguageLua;->functionTarget:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LanguageLua;->names:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LanguageLua;->LUA_OPERATORS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x28s
        0x29s
        0x7bs
        0x7ds
        0x2cs
        0x3bs
        0x3ds
        0x2bs
        0x2ds
        0x2fs
        0x2as
        0x26s
        0x21s
        0x7cs
        0x3as
        0x5bs
        0x5ds
        0x3cs
        0x3es
        0x3fs
        0x7es
        0x25s
        0x5es
    .end array-data
.end method

.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/Language;-><init>()V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LanguageLua;->LUA_OPERATORS:[C

    invoke-super {p0, v0}, Lcom/myopicmobile/textwarrior/common/Language;->setOperators([C)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LanguageLua;->keywords:[Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/myopicmobile/textwarrior/common/Language;->setKeywords([Ljava/lang/String;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LanguageLua;->names:[Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/myopicmobile/textwarrior/common/Language;->setNames([Ljava/lang/String;)V

    const-string v0, "io"

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LanguageLua;->package_io:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/Language;->addBasePackage(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "string"

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LanguageLua;->package_string:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/Language;->addBasePackage(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "luajava"

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LanguageLua;->package_luajava:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/Language;->addBasePackage(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "os"

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LanguageLua;->package_os:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/Language;->addBasePackage(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "table"

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LanguageLua;->package_table:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/Language;->addBasePackage(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "math"

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LanguageLua;->package_math:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/Language;->addBasePackage(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "utf8"

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LanguageLua;->package_utf8:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/Language;->addBasePackage(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "coroutine"

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LanguageLua;->package_coroutine:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/Language;->addBasePackage(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "package"

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LanguageLua;->package_package:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/Language;->addBasePackage(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "debug"

    sget-object v1, Lcom/myopicmobile/textwarrior/common/LanguageLua;->package_debug:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/myopicmobile/textwarrior/common/Language;->addBasePackage(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/myopicmobile/textwarrior/common/Language;
    .registers 1

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LanguageLua;->_theOne:Lcom/myopicmobile/textwarrior/common/Language;

    if-nez v0, :cond_0

    new-instance v0, Lcom/myopicmobile/textwarrior/common/LanguageLua;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/common/LanguageLua;-><init>()V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LanguageLua;->_theOne:Lcom/myopicmobile/textwarrior/common/Language;

    :cond_0
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LanguageLua;->_theOne:Lcom/myopicmobile/textwarrior/common/Language;

    return-object v0
.end method


# virtual methods
.method public isLineAStart(C)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isLineStart(CC)Z
    .registers 4

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    if-eq p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMultilineEndDelimiter(CC)Z
    .registers 4

    const/16 v0, 0x5d

    if-ne p1, v0, :cond_0

    if-eq p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMultilineStartDelimiter(CC)Z
    .registers 4

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_0

    if-eq p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWordStart2(C)Z
    .registers 3

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
