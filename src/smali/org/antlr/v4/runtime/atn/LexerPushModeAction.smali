.class public final Lorg/antlr/v4/runtime/atn/LexerPushModeAction;
.super Ljava/lang/Object;
.source "LexerPushModeAction.java"

# interfaces
.implements Lorg/antlr/v4/runtime/atn/LexerAction;


# instance fields
.field private final mode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;->mode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 81
    :cond_4
    instance-of v1, p1, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 85
    :cond_a
    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;->mode:I

    check-cast p1, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;

    iget p1, p1, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;->mode:I

    if-ne v1, p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public execute(Lorg/antlr/v4/runtime/Lexer;)V
    .registers 3

    .line 65
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;->mode:I

    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/Lexer;->pushMode(I)V

    return-void
.end method

.method public getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;
    .registers 2

    .line 45
    sget-object v0, Lorg/antlr/v4/runtime/atn/LexerActionType;->PUSH_MODE:Lorg/antlr/v4/runtime/atn/LexerActionType;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .line 36
    iget v0, p0, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;->mode:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 70
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 71
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;->getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/LexerActionType;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 72
    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;->mode:I

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 73
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public isPositionDependent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;->mode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "pushMode(%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
