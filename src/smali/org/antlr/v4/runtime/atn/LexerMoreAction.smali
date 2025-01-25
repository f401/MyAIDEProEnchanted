.class public final Lorg/antlr/v4/runtime/atn/LexerMoreAction;
.super Ljava/lang/Object;
.source "LexerMoreAction.java"

# interfaces
.implements Lorg/antlr/v4/runtime/atn/LexerAction;


# static fields
.field public static final INSTANCE:Lorg/antlr/v4/runtime/atn/LexerMoreAction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerMoreAction;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/LexerMoreAction;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/atn/LexerMoreAction;->INSTANCE:Lorg/antlr/v4/runtime/atn/LexerMoreAction;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public execute(Lorg/antlr/v4/runtime/Lexer;)V
    .registers 2

    .line 58
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Lexer;->more()V

    return-void
.end method

.method public getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;
    .registers 2

    .line 39
    sget-object v0, Lorg/antlr/v4/runtime/atn/LexerActionType;->MORE:Lorg/antlr/v4/runtime/atn/LexerActionType;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 63
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 64
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/LexerMoreAction;->getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/LexerActionType;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 65
    const/4 v1, 0x1

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
    .registers 2

    .line 76
    const-string v0, "more"

    return-object v0
.end method
