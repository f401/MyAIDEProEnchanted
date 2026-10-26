.class public Lorg/antlr/v4/runtime/atn/LexerActionExecutor;
.super Ljava/lang/Object;
.source "LexerActionExecutor.java"


# instance fields
.field private final hashCode:I

.field private final lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;


# direct methods
.method public constructor <init>([Lorg/antlr/v4/runtime/atn/LexerAction;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    .line 44
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 45
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 46
    invoke-static {v0, v3}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    array-length v1, p1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->hashCode:I

    return-void
.end method

.method public static append(Lorg/antlr/v4/runtime/atn/LexerActionExecutor;Lorg/antlr/v4/runtime/atn/LexerAction;)Lorg/antlr/v4/runtime/atn/LexerActionExecutor;
    .locals 3

    if-nez p0, :cond_0

    .line 69
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/antlr/v4/runtime/atn/LexerAction;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;-><init>([Lorg/antlr/v4/runtime/atn/LexerAction;)V

    .line 74
    :goto_0
    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/LexerAction;

    .line 73
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 74
    new-instance v1, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;-><init>([Lorg/antlr/v4/runtime/atn/LexerAction;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    instance-of v2, p1, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 192
    :cond_2
    check-cast p1, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    .line 193
    iget v2, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->hashCode:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->hashCode:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public execute(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/CharStream;I)V
    .locals 9

    const/4 v4, 0x0

    .line 154
    invoke-interface {p2}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v6

    .line 156
    :try_start_0
    iget-object v7, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    array-length v8, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v4

    move v3, v4

    :goto_0
    if-ge v5, v8, :cond_2

    aget-object v2, v7, v5

    .line 157
    :try_start_1
    instance-of v1, v2, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;

    if-eqz v1, :cond_0

    .line 158
    move-object v0, v2

    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->getOffset()I

    move-result v1

    add-int/2addr v1, p3

    .line 159
    invoke-interface {p2, v1}, Lorg/antlr/v4/runtime/CharStream;->seek(I)V

    .line 160
    check-cast v2, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->getAction()Lorg/antlr/v4/runtime/atn/LexerAction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-eq v1, v6, :cond_1

    const/4 v1, 0x1

    .line 168
    :goto_1
    :try_start_2
    invoke-interface {v2, p1}, Lorg/antlr/v4/runtime/atn/LexerAction;->execute(Lorg/antlr/v4/runtime/Lexer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v1

    goto :goto_0

    .line 163
    :cond_0
    :try_start_3
    invoke-interface {v2}, Lorg/antlr/v4/runtime/atn/LexerAction;->isPositionDependent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 164
    invoke-interface {p2, v6}, Lorg/antlr/v4/runtime/CharStream;->seek(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    move v1, v4

    goto :goto_1

    .line 168
    :cond_2
    if-eqz v3, :cond_3

    .line 173
    invoke-interface {p2, v6}, Lorg/antlr/v4/runtime/CharStream;->seek(I)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    move v3, v4

    move-object v2, v1

    :goto_2
    if-eqz v3, :cond_4

    invoke-interface {p2, v6}, Lorg/antlr/v4/runtime/CharStream;->seek(I)V

    :cond_4
    throw v2

    .line 168
    :catchall_1
    move-exception v1

    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception v2

    move v3, v1

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_1
.end method

.method public fixOffsetBeforeMatch(I)Lorg/antlr/v4/runtime/atn/LexerActionExecutor;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    :goto_0
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 109
    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/antlr/v4/runtime/atn/LexerAction;->isPositionDependent()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    aget-object v3, v2, v1

    instance-of v3, v3, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;

    if-nez v3, :cond_1

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {v2}, [Lorg/antlr/v4/runtime/atn/LexerAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/LexerAction;

    .line 114
    :cond_0
    new-instance v2, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    aget-object v3, v3, v1

    invoke-direct {v2, p1, v3}, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;-><init>(ILorg/antlr/v4/runtime/atn/LexerAction;)V

    aput-object v2, v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 122
    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;-><init>([Lorg/antlr/v4/runtime/atn/LexerAction;)V

    goto :goto_1
.end method

.method public getLexerActions()[Lorg/antlr/v4/runtime/atn/LexerAction;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 180
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->hashCode:I

    return v0
.end method
