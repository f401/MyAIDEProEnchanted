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
    .registers 3

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
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 114
    :cond_4
    instance-of v1, p1, Lorg/antlr/v4/runtime/atn/LexerCustomAction;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 118
    :cond_a
    check-cast p1, Lorg/antlr/v4/runtime/atn/LexerCustomAction;

    .line 119
    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->ruleIndex:I

    iget v3, p1, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->ruleIndex:I

    if-ne v1, v3, :cond_19

    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->actionIndex:I

    iget p1, p1, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->actionIndex:I

    if-ne v1, p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public execute(Lorg/antlr/v4/runtime/Lexer;)V
    .registers 5

    .line 97
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->ruleIndex:I

    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->actionIndex:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lorg/antlr/v4/runtime/Lexer;->action(Lorg/antlr/v4/runtime/RuleContext;II)V

    return-void
.end method

.method public getActionIndex()I
    .registers 2

    .line 60
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->actionIndex:I

    return v0
.end method

.method public getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;
    .registers 2

    .line 70
    sget-object v0, Lorg/antlr/v4/runtime/atn/LexerActionType;->CUSTOM:Lorg/antlr/v4/runtime/atn/LexerActionType;

    return-object v0
.end method

.method public getRuleIndex()I
    .registers 2

    .line 51
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->ruleIndex:I

    return v0
.end method

.method public hashCode()I
    .registers 3

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
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
