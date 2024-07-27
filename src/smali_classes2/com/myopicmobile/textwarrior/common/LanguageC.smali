.class public Lcom/myopicmobile/textwarrior/common/LanguageC;
.super Lcom/myopicmobile/textwarrior/common/Language;


# static fields
.field private static _theOne:Lcom/myopicmobile/textwarrior/common/Language;

.field private static final keywords:[Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Lcom/myopicmobile/textwarrior/common/Language;

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LanguageC;->_theOne:Lcom/myopicmobile/textwarrior/common/Language;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "char"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "double"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "float"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "int"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "long"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "short"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "void"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "const"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "extern"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "register"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "static"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "volatile"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "signed"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "unsigned"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sizeof"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "typedef"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "enum"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "struct"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "union"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "break"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "case"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "continue"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "default"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "do"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "else"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "for"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "goto"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "if"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "return"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "switch"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "while"

    aput-object v2, v0, v1

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LanguageC;->keywords:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/Language;-><init>()V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LanguageC;->keywords:[Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/myopicmobile/textwarrior/common/Language;->setKeywords([Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/myopicmobile/textwarrior/common/Language;
    .registers 1

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LanguageC;->_theOne:Lcom/myopicmobile/textwarrior/common/Language;

    if-nez v0, :cond_0

    new-instance v0, Lcom/myopicmobile/textwarrior/common/LanguageC;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/common/LanguageC;-><init>()V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LanguageC;->_theOne:Lcom/myopicmobile/textwarrior/common/Language;

    :cond_0
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LanguageC;->_theOne:Lcom/myopicmobile/textwarrior/common/Language;

    return-object v0
.end method
