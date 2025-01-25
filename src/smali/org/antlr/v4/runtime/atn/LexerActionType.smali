.class public final enum Lorg/antlr/v4/runtime/atn/LexerActionType;
.super Ljava/lang/Enum;
.source "LexerActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
    .registers 16

    .line 19
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v1, "CHANNEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antlr/v4/runtime/atn/LexerActionType;->CHANNEL:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 23
    new-instance v1, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v3, "CUSTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/antlr/v4/runtime/atn/LexerActionType;->CUSTOM:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 27
    new-instance v3, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v5, "MODE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/antlr/v4/runtime/atn/LexerActionType;->MODE:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 31
    new-instance v5, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v7, "MORE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/antlr/v4/runtime/atn/LexerActionType;->MORE:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 35
    new-instance v7, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v9, "POP_MODE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/antlr/v4/runtime/atn/LexerActionType;->POP_MODE:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 39
    new-instance v9, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v11, "PUSH_MODE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/antlr/v4/runtime/atn/LexerActionType;->PUSH_MODE:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 43
    new-instance v11, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v13, "SKIP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/antlr/v4/runtime/atn/LexerActionType;->SKIP:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 47
    new-instance v13, Lorg/antlr/v4/runtime/atn/LexerActionType;

    const-string v15, "TYPE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/antlr/v4/runtime/atn/LexerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/antlr/v4/runtime/atn/LexerActionType;->TYPE:Lorg/antlr/v4/runtime/atn/LexerActionType;

    .line 15
    const/16 v15, 0x8

    new-array v15, v15, [Lorg/antlr/v4/runtime/atn/LexerActionType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lorg/antlr/v4/runtime/atn/LexerActionType;->$VALUES:[Lorg/antlr/v4/runtime/atn/LexerActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
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
    .registers 2

    .line 15
    const-class v0, Lorg/antlr/v4/runtime/atn/LexerActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/antlr/v4/runtime/atn/LexerActionType;

    return-object p0
.end method

.method public static values()[Lorg/antlr/v4/runtime/atn/LexerActionType;
    .registers 1

    .line 15
    sget-object v0, Lorg/antlr/v4/runtime/atn/LexerActionType;->$VALUES:[Lorg/antlr/v4/runtime/atn/LexerActionType;

    invoke-virtual {v0}, [Lorg/antlr/v4/runtime/atn/LexerActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/LexerActionType;

    return-object v0
.end method
