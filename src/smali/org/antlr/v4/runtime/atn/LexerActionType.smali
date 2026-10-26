.class public final enum Lorg/antlr/v4/runtime/atn/LexerActionType;
.super Ljava/lang/Enum;
.source "LexerActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/antlr/v4/runtime/atn/LexerActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/antlr/v4/runtime/atn/LexerActionType;

.field public static final enum CHANNEL:Lorg/antlr/v4/runtime/atn/LexerActionType;

.field public static final enum CUSTOM:Lorg/antlr/v4/runtime/atn/LexerActionType;

.field public static final enum MODE:Lorg/antlr/v4/runtime/atn/LexerActionType;

.field public static final enum MORE:Lorg/antlr/v4/runtime/atn/LexerActionType;

.field public static final enum POP_MODE:Lorg/antlr/v4/runtime/atn/LexerActionType;

.field public static final enum PUSH_MODE:Lorg/antlr/v4/runtime/atn/LexerActionType;

.field public static final enum SKIP:Lorg/antlr/v4/runtime/atn/LexerActionType;

.field public static final enum TYPE:Lorg/antlr/v4/runtime/atn/LexerActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 19
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v1, "CHANNEL"

    invoke-direct {v0, v1, v10}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antlr/v4/runtime/atn/LexerActionType;->CHANNEL:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 23
    new-instance v1, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v2, "CUSTOM"

    invoke-direct {v1, v2, v11}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/antlr/v4/runtime/atn/LexerActionType;->CUSTOM:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 27
    new-instance v2, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v3, "MODE"

    invoke-direct {v2, v3, v12}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/antlr/v4/runtime/atn/LexerActionType;->MODE:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 31
    new-instance v3, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v4, "MORE"

    invoke-direct {v3, v4, v13}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/antlr/v4/runtime/atn/LexerActionType;->MORE:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 35
    new-instance v4, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v5, "POP_MODE"

    invoke-direct {v4, v5, v14}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/antlr/v4/runtime/atn/LexerActionType;->POP_MODE:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 39
    new-instance v5, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v6, "PUSH_MODE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/antlr/v4/runtime/atn/LexerActionType;->PUSH_MODE:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 43
    new-instance v6, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v7, "SKIP"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/antlr/v4/runtime/atn/LexerActionType;->SKIP:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 47
    new-instance v7, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v8, "TYPE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/antlr/v4/runtime/atn/LexerActionType;->TYPE:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 15
    const/16 v8, 0x8

    new-array v8, v8, [Lorg/antlr/v4/runtime/atn/LexerActionType;

    aput-object v0, v8, v10

    aput-object v1, v8, v11

    aput-object v2, v8, v12

    aput-object v3, v8, v13

    aput-object v4, v8, v14

    const/4 v0, 0x5

    aput-object v5, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    const/4 v0, 0x7

    aput-object v7, v8, v0

    sput-object v8, Lorg/antlr/v4/runtime/atn/LexerActionType;->$VALUES:[Lorg/antlr/v4/runtime/atn/LexerActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antlr/v4/runtime/atn/LexerActionType;
    .locals 1

    .line 15
    const-class v0, Lorg/antlr/v4/runtime/atn/LexerActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerActionType;

    return-object v0
.end method

.method public static values()[Lorg/antlr/v4/runtime/atn/LexerActionType;
    .locals 1

    .line 15
    sget-object v0, Lorg/antlr/v4/runtime/atn/LexerActionType;->$VALUES:[Lorg/antlr/v4/runtime/atn/LexerActionType;

    invoke-virtual {v0}, [Lorg/antlr/v4/runtime/atn/LexerActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/LexerActionType;

    return-object v0
.end method
