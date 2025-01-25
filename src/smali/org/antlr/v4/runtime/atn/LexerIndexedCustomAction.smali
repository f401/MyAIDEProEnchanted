.class public final Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;
.super Ljava/lang/Object;
.source "LexerIndexedCustomAction.java"

# interfaces
.implements Lorg/antlr/v4/runtime/atn/LexerAction;


# instance fields
.field private final action:Lorg/antlr/v4/runtime/atn/LexerAction;

.field private final offset:I


# direct methods
.method public constructor <init>(ILorg/antlr/v4/runtime/atn/LexerAction;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->offset:I

    .line 45
    iput-object p2, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->action:Lorg/antlr/v4/runtime/atn/LexerAction;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 114
    :cond_4
    instance-of v1, p1, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 118
    :cond_a
    check-cast p1, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;

    .line 119
    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->offset:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->offset:I

    if-ne v1, v3, :cond_1d

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->action:Lorg/antlr/v4/runtime/atn/LexerAction;

    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->action:Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public execute(Lorg/antlr/v4/runtime/Lexer;)V
    .registers 3

    .line 98
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->action:Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-interface {v0, p1}, Lorg/antlr/v4/runtime/atn/LexerAction;->execute(Lorg/antlr/v4/runtime/Lexer;)V

    return-void
.end method

.method public getAction()Lorg/antlr/v4/runtime/atn/LexerAction;
    .registers 2

    .line 66
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->action:Lorg/antlr/v4/runtime/atn/LexerAction;

    return-object v0
.end method

.method public getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;
    .registers 2

    .line 77
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->action:Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/atn/LexerAction;->getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v0

    return-object v0
.end method

.method public getOffset()I
    .registers 2

    .line 57
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->offset:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 103
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 104
    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->offset:I

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 105
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->action:Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    .line 106
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public isPositionDependent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
