.class public final enum Lorg/antlr/v4/runtime/atn/ATNType;
.super Ljava/lang/Enum;
.source "ATNType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/antlr/v4/runtime/atn/ATNType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/antlr/v4/runtime/atn/ATNType;

.field public static final enum LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

.field public static final enum PARSER:Lorg/antlr/v4/runtime/atn/ATNType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNType;

    const-string v1, "LEXER"

    invoke-direct {v0, v1, v3}, Lorg/antlr/v4/runtime/atn/ATNType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    .line 24
    new-instance v1, Lorg/antlr/v4/runtime/atn/ATNType;

    const-string v2, "PARSER"

    invoke-direct {v1, v2, v4}, Lorg/antlr/v4/runtime/atn/ATNType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/antlr/v4/runtime/atn/ATNType;->PARSER:Lorg/antlr/v4/runtime/atn/ATNType;

    .line 14
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/antlr/v4/runtime/atn/ATNType;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    sput-object v2, Lorg/antlr/v4/runtime/atn/ATNType;->$VALUES:[Lorg/antlr/v4/runtime/atn/ATNType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antlr/v4/runtime/atn/ATNType;
    .locals 1

    .line 14
    const-class v0, Lorg/antlr/v4/runtime/atn/ATNType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNType;

    return-object v0
.end method

.method public static values()[Lorg/antlr/v4/runtime/atn/ATNType;
    .locals 1

    .line 14
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNType;->$VALUES:[Lorg/antlr/v4/runtime/atn/ATNType;

    invoke-virtual {v0}, [Lorg/antlr/v4/runtime/atn/ATNType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/ATNType;

    return-object v0
.end method
