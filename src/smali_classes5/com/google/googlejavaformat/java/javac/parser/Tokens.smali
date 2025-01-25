.class public Lcom/google/googlejavaformat/java/javac/parser/Tokens;
.super Ljava/lang/Object;
.source "Tokens.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;,
        Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;,
        Lcom/google/googlejavaformat/java/javac/parser/Tokens$NamedToken;,
        Lcom/google/googlejavaformat/java/javac/parser/Tokens$NumericToken;,
        Lcom/google/googlejavaformat/java/javac/parser/Tokens$StringToken;,
        Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;,
        Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;,
        Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;
    }
.end annotation


# static fields
.field public static final DUMMY:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

.field public static final tokensKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final key:[Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

.field private maxKey:I

.field private final names:Lcom/sun/tools/javac/util/Names;

.field private tokenName:[Lcom/sun/tools/javac/util/Name;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->tokensKey:Lcom/sun/tools/javac/util/Context$Key;

    .line 478
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ERROR:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;-><init>(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;IILcom/sun/tools/javac/util/List;)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->DUMMY:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 9

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v1, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->maxKey:I

    .line 62
    invoke-static {}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->values()[Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/sun/tools/javac/util/Name;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->tokenName:[Lcom/sun/tools/javac/util/Name;

    .line 75
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->tokensKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 76
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->names:Lcom/sun/tools/javac/util/Names;

    .line 77
    invoke-static {}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->values()[Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_20
    if-ge v0, v3, :cond_3a

    aget-object v4, v2, v0

    .line 78
    iget-object v5, v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    if-eqz v5, :cond_30

    .line 79
    iget-object v5, v4, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->enterKeyword(Ljava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;)V

    .line 77
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 81
    :cond_30
    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->tokenName:[Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v4

    const/4 v6, 0x0

    aput-object v6, v5, v4

    goto :goto_2d

    .line 84
    :cond_3a
    iget v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->maxKey:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->key:[Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move v0, v1

    .line 85
    :goto_43
    iget v2, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->maxKey:I

    if-gt v0, v2, :cond_50

    iget-object v2, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->key:[Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    sget-object v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 86
    :cond_50
    invoke-static {}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->values()[Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move-result-object v0

    array-length v2, v0

    :goto_55
    if-ge v1, v2, :cond_70

    aget-object v3, v0, v1

    .line 87
    iget-object v4, v3, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    if-eqz v4, :cond_6d

    .line 88
    iget-object v4, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->key:[Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    iget-object v5, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->tokenName:[Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/Name;->getIndex()I

    move-result v5

    aput-object v3, v4, v5

    .line 86
    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 90
    :cond_70
    return-void
.end method

.method private enterKeyword(Ljava/lang/String;Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;)V
    .registers 6

    .line 93
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->tokenName:[Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p2}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v2

    aput-object v0, v1, v2

    .line 95
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->getIndex()I

    move-result v1

    iget v2, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->maxKey:I

    if-le v1, v2, :cond_1c

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->maxKey:I

    .line 96
    :cond_1c
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/google/googlejavaformat/java/javac/parser/Tokens;
    .registers 2

    .line 68
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->tokensKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;

    .line 69
    if-nez v0, :cond_f

    .line 70
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;

    invoke-direct {v0, p0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 71
    :cond_f
    return-object v0
.end method


# virtual methods
.method lookupKind(Lcom/sun/tools/javac/util/Name;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;
    .registers 4

    .line 104
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getIndex()I

    move-result v0

    iget v1, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->maxKey:I

    if-le v0, v1, :cond_b

    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->key:[Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_a
.end method

.method lookupKind(Ljava/lang/String;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens;->lookupKind(Lcom/sun/tools/javac/util/Name;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move-result-object v0

    return-object v0
.end method
