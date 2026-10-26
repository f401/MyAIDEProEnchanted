.class public final Lorg/antlr/v4/runtime/atn/LexerCustomAction;
.super Ljava/lang/Object;
.source "LexerCustomAction.java"

# interfaces
.implements Lorg/antlr/v4/runtime/atn/LexerAction;


# instance fields
.field private final actionIndex:I

.field private final ruleIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->ruleIndex:I

    .line 42
    iput p2, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->actionIndex:I

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
    instance-of v2, p1, Lorg/antlr/v4/runtime/atn/LexerCustomAction;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 118
    :cond_2
    check-cast p1, Lorg/antlr/v4/runtime/atn/LexerCustomAction;

    .line 119
    iget v2, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->ruleIndex:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->ruleIndex:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->actionIndex:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->actionIndex:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public execute(Lorg/antlr/v4/runtime/Lexer;)V
    .locals 3

    .line 97
    const/4 v0, 0x0

    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->ruleIndex:I

    iget v2, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->actionIndex:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/antlr/v4/runtime/Lexer;->action(Lorg/antlr/v4/runtime/RuleContext;II)V

    return-void
.end method

.method public getActionIndex()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->actionIndex:I

    return v0
.end method

.method public getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;
    .locals 1

    .line 70
    sget-object v0, Lorg/antlr/v4/runtime/atn/LexerActionType;->CUSTOM:Lorg/antlr/v4/runtime/atn/LexerActionType;

    return-object v0
.end method

.method public getRuleIndex()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->ruleIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 102
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 103
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/LexerActionType;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 104
    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->ruleIndex:I

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 105
    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->actionIndex:I

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 106
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public isPositionDependent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
