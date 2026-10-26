.class public final Lorg/antlr/v4/runtime/atn/LexerModeAction;
.super Ljava/lang/Object;
.source "LexerModeAction.java"

# interfaces
.implements Lorg/antlr/v4/runtime/atn/LexerAction;


# instance fields
.field private final mode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lorg/antlr/v4/runtime/atn/LexerModeAction;->mode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    instance-of v2, p1, Lorg/antlr/v4/runtime/atn/LexerModeAction;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 85
    :cond_2
    iget v2, p0, Lorg/antlr/v4/runtime/atn/LexerModeAction;->mode:I

    check-cast p1, Lorg/antlr/v4/runtime/atn/LexerModeAction;

    iget v3, p1, Lorg/antlr/v4/runtime/atn/LexerModeAction;->mode:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public execute(Lorg/antlr/v4/runtime/Lexer;)V
    .locals 1

    .line 65
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerModeAction;->mode:I

    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/Lexer;->mode(I)V

    return-void
.end method

.method public getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;
    .locals 1

    .line 45
    sget-object v0, Lorg/antlr/v4/runtime/atn/LexerActionType;->MODE:Lorg/antlr/v4/runtime/atn/LexerActionType;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 36
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerModeAction;->mode:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 70
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 71
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/LexerModeAction;->getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/LexerActionType;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 72
    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerModeAction;->mode:I

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 73
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public isPositionDependent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 90
    const-string v0, "mode(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/antlr/v4/runtime/atn/LexerModeAction;->mode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
