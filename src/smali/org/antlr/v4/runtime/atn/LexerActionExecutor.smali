.class public Lorg/antlr/v4/runtime/atn/LexerActionExecutor;
.super Ljava/lang/Object;
.source "LexerActionExecutor.java"


# instance fields
.field private final hashCode:I

.field private final lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;


# direct methods
.method public constructor <init>([Lorg/antlr/v4/runtime/atn/LexerAction;)V
    .registers 6

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    .line 44
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 45
    array-length v1, p1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_16

    aget-object v3, p1, v2

    .line 46
    invoke-static {v0, v3}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 49
    :cond_16
    array-length p1, p1

    invoke-static {v0, p1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result p1

    iput p1, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->hashCode:I

    return-void
.end method

.method public static append(Lorg/antlr/v4/runtime/atn/LexerActionExecutor;Lorg/antlr/v4/runtime/atn/LexerAction;)Lorg/antlr/v4/runtime/atn/LexerActionExecutor;
    .registers 4

    const/4 v0, 0x1

    if-nez p0, :cond_e

    .line 69
    new-instance p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    new-array v0, v0, [Lorg/antlr/v4/runtime/atn/LexerAction;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;-><init>([Lorg/antlr/v4/runtime/atn/LexerAction;)V

    return-object p0

    .line 72
    :cond_e
    iget-object p0, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    array-length v1, p0

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/antlr/v4/runtime/atn/LexerAction;

    .line 73
    array-length v1, p0

    sub-int/2addr v1, v0

    aput-object p1, p0, v1

    .line 74
    new-instance p1, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    invoke-direct {p1, p0}, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;-><init>([Lorg/antlr/v4/runtime/atn/LexerAction;)V

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 188
    :cond_4
    instance-of v1, p1, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 192
    :cond_a
    check-cast p1, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    .line 193
    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->hashCode:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->hashCode:I

    if-ne v1, v3, :cond_1d

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public execute(Lorg/antlr/v4/runtime/Lexer;Lorg/antlr/v4/runtime/CharStream;I)V
    .registers 12

    .line 154
    invoke-interface {p2}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v0

    .line 156
    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    array-length v3, v2
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_40

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_a
    if-ge v4, v3, :cond_3a

    aget-object v6, v2, v4

    .line 157
    :try_start_e
    instance-of v7, v6, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;

    if-eqz v7, :cond_27

    .line 158
    move-object v7, v6

    check-cast v7, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;

    invoke-virtual {v7}, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->getOffset()I

    move-result v7

    add-int/2addr v7, p3

    .line 159
    invoke-interface {p2, v7}, Lorg/antlr/v4/runtime/CharStream;->seek(I)V

    .line 160
    check-cast v6, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;

    invoke-virtual {v6}, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->getAction()Lorg/antlr/v4/runtime/atn/LexerAction;

    move-result-object v6

    if-eq v7, v0, :cond_30

    const/4 v5, 0x1

    goto :goto_31

    .line 163
    :cond_27
    invoke-interface {v6}, Lorg/antlr/v4/runtime/atn/LexerAction;->isPositionDependent()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 164
    invoke-interface {p2, v0}, Lorg/antlr/v4/runtime/CharStream;->seek(I)V

    :cond_30
    const/4 v5, 0x0

    .line 168
    :cond_31
    :goto_31
    invoke-interface {v6, p1}, Lorg/antlr/v4/runtime/atn/LexerAction;->execute(Lorg/antlr/v4/runtime/Lexer;)V
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_37

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :catchall_37
    move-exception p1

    move v1, v5

    goto :goto_41

    :cond_3a
    if-eqz v5, :cond_3f

    .line 173
    invoke-interface {p2, v0}, Lorg/antlr/v4/runtime/CharStream;->seek(I)V

    :cond_3f
    return-void

    :catchall_40
    move-exception p1

    :goto_41
    if-eqz v1, :cond_46

    invoke-interface {p2, v0}, Lorg/antlr/v4/runtime/CharStream;->seek(I)V

    :cond_46
    goto :goto_48

    :goto_47
    throw p1

    :goto_48
    goto :goto_47
.end method

.method public fixOffsetBeforeMatch(I)Lorg/antlr/v4/runtime/atn/LexerActionExecutor;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    :goto_2
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    array-length v3, v2

    if-ge v1, v3, :cond_2d

    .line 109
    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/antlr/v4/runtime/atn/LexerAction;->isPositionDependent()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    aget-object v3, v2, v1

    instance-of v3, v3, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;

    if-nez v3, :cond_2a

    if-nez v0, :cond_1f

    .line 111
    invoke-virtual {v2}, [Lorg/antlr/v4/runtime/atn/LexerAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/LexerAction;

    .line 114
    :cond_1f
    new-instance v2, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    aget-object v3, v3, v1

    invoke-direct {v2, p1, v3}, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;-><init>(ILorg/antlr/v4/runtime/atn/LexerAction;)V

    aput-object v2, v0, v1

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2d
    if-nez v0, :cond_30

    return-object p0

    .line 122
    :cond_30
    new-instance p1, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;

    invoke-direct {p1, v0}, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;-><init>([Lorg/antlr/v4/runtime/atn/LexerAction;)V

    return-object p1
.end method

.method public getLexerActions()[Lorg/antlr/v4/runtime/atn/LexerAction;
    .registers 2

    .line 130
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 180
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerActionExecutor;->hashCode:I

    return v0
.end method
