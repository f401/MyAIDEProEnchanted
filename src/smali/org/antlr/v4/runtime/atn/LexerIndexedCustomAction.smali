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
    .locals 0

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
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    instance-of v2, p1, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 118
    :cond_2
    check-cast p1, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;

    .line 119
    iget v2, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->offset:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->offset:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->action:Lorg/antlr/v4/runtime/atn/LexerAction;

    iget-object v3, p1, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->action:Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public execute(Lorg/antlr/v4/runtime/Lexer;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->action:Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-interface {v0, p1}, Lorg/antlr/v4/runtime/atn/LexerAction;->execute(Lorg/antlr/v4/runtime/Lexer;)V

    return-void
.end method

.method public getAction()Lorg/antlr/v4/runtime/atn/LexerAction;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->action:Lorg/antlr/v4/runtime/atn/LexerAction;

    return-object v0
.end method

.method public getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->action:Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/atn/LexerAction;->getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v0

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerIndexedCustomAction;->offset:I

    return v0
.end method

.method public hashCode()I
    .locals 2

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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
