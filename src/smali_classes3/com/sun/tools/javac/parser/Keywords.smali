.class public Lcom/sun/tools/javac/parser/Keywords;
.super Ljava/lang/Object;
.source "Keywords.java"


# static fields
.field public static final keywordsKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/parser/Keywords;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final key:[Lcom/sun/tools/javac/parser/Token;

.field private maxKey:I

.field private final names:Lcom/sun/tools/javac/util/Names;

.field private tokenName:[Lcom/sun/tools/javac/util/Name;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/parser/Keywords;->keywordsKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 9

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v1, p0, Lcom/sun/tools/javac/parser/Keywords;->maxKey:I

    .line 91
    invoke-static {}, Lcom/sun/tools/javac/parser/Token;->values()[Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/sun/tools/javac/util/Name;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Keywords;->tokenName:[Lcom/sun/tools/javac/util/Name;

    .line 57
    sget-object v0, Lcom/sun/tools/javac/parser/Keywords;->keywordsKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 58
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Keywords;->names:Lcom/sun/tools/javac/util/Names;

    .line 60
    invoke-static {}, Lcom/sun/tools/javac/parser/Token;->values()[Lcom/sun/tools/javac/parser/Token;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 61
    iget-object v5, v4, Lcom/sun/tools/javac/parser/Token;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 62
    iget-object v5, v4, Lcom/sun/tools/javac/parser/Token;->name:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/sun/tools/javac/parser/Keywords;->enterKeyword(Ljava/lang/String;Lcom/sun/tools/javac/parser/Token;)V

    .line 60
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget-object v5, p0, Lcom/sun/tools/javac/parser/Keywords;->tokenName:[Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v4}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v4

    const/4 v6, 0x0

    aput-object v6, v5, v4

    goto :goto_1

    .line 67
    :cond_1
    iget v0, p0, Lcom/sun/tools/javac/parser/Keywords;->maxKey:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/sun/tools/javac/parser/Token;

    iput-object v0, p0, Lcom/sun/tools/javac/parser/Keywords;->key:[Lcom/sun/tools/javac/parser/Token;

    move v0, v1

    .line 68
    :goto_2
    iget v2, p0, Lcom/sun/tools/javac/parser/Keywords;->maxKey:I

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Lcom/sun/tools/javac/parser/Keywords;->key:[Lcom/sun/tools/javac/parser/Token;

    sget-object v3, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 69
    :cond_2
    invoke-static {}, Lcom/sun/tools/javac/parser/Token;->values()[Lcom/sun/tools/javac/parser/Token;

    move-result-object v0

    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 70
    iget-object v4, v3, Lcom/sun/tools/javac/parser/Token;->name:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 71
    iget-object v4, p0, Lcom/sun/tools/javac/parser/Keywords;->key:[Lcom/sun/tools/javac/parser/Token;

    iget-object v5, p0, Lcom/sun/tools/javac/parser/Keywords;->tokenName:[Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v3}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/Name;->getIndex()I

    move-result v5

    aput-object v3, v4, v5

    .line 69
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 73
    :cond_4
    return-void
.end method

.method private enterKeyword(Ljava/lang/String;Lcom/sun/tools/javac/parser/Token;)V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Keywords;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/sun/tools/javac/parser/Keywords;->tokenName:[Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p2}, Lcom/sun/tools/javac/parser/Token;->ordinal()I

    move-result v2

    aput-object v0, v1, v2

    .line 96
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->getIndex()I

    move-result v1

    iget v2, p0, Lcom/sun/tools/javac/parser/Keywords;->maxKey:I

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/sun/tools/javac/parser/Keywords;->maxKey:I

    .line 97
    :cond_0
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/parser/Keywords;
    .registers 2

    .line 48
    sget-object v0, Lcom/sun/tools/javac/parser/Keywords;->keywordsKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/parser/Keywords;

    .line 49
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/sun/tools/javac/parser/Keywords;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/parser/Keywords;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 51
    :cond_0
    return-object v0
.end method


# virtual methods
.method public key(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/parser/Token;
    .registers 4

    .line 77
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getIndex()I

    move-result v0

    iget v1, p0, Lcom/sun/tools/javac/parser/Keywords;->maxKey:I

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/sun/tools/javac/parser/Token;->IDENTIFIER:Lcom/sun/tools/javac/parser/Token;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/parser/Keywords;->key:[Lcom/sun/tools/javac/parser/Token;

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0
.end method
