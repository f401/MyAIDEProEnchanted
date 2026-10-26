.class public final enum Lorg/antlr/v4/runtime/CodePointBuffer$Type;
.super Ljava/lang/Enum;
.source "CodePointBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/CodePointBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/antlr/v4/runtime/CodePointBuffer$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/antlr/v4/runtime/CodePointBuffer$Type;

.field public static final enum BYTE:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

.field public static final enum CHAR:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

.field public static final enum INT:Lorg/antlr/v4/runtime/CodePointBuffer$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 21
    new-instance v0, Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    const-string v1, "BYTE"

    invoke-direct {v0, v1, v4}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->BYTE:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    .line 22
    new-instance v1, Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    const-string v2, "CHAR"

    invoke-direct {v1, v2, v5}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->CHAR:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    .line 23
    new-instance v2, Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    const-string v3, "INT"

    invoke-direct {v2, v3, v6}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->INT:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    .line 20
    const/4 v3, 0x3

    new-array v3, v3, [Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    sput-object v3, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->$VALUES:[Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointBuffer$Type;
    .locals 1

    .line 20
    const-class v0, Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    return-object v0
.end method

.method public static values()[Lorg/antlr/v4/runtime/CodePointBuffer$Type;
    .locals 1

    .line 20
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->$VALUES:[Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    invoke-virtual {v0}, [Lorg/antlr/v4/runtime/CodePointBuffer$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    return-object v0
.end method
