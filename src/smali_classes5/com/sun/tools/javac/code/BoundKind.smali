.class public final enum Lcom/sun/tools/javac/code/BoundKind;
.super Ljava/lang/Enum;
.source "BoundKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/code/BoundKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/code/BoundKind;

.field public static final enum EXTENDS:Lcom/sun/tools/javac/code/BoundKind;

.field public static final enum SUPER:Lcom/sun/tools/javac/code/BoundKind;

.field public static final enum UNBOUND:Lcom/sun/tools/javac/code/BoundKind;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/sun/tools/javac/code/BoundKind;

    const-string v1, "EXTENDS"

    const-string v2, "? extends "

    invoke-direct {v0, v1, v3, v2}, Lcom/sun/tools/javac/code/BoundKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/BoundKind;->EXTENDS:Lcom/sun/tools/javac/code/BoundKind;

    .line 37
    new-instance v0, Lcom/sun/tools/javac/code/BoundKind;

    const-string v1, "SUPER"

    const-string v2, "? super "

    invoke-direct {v0, v1, v4, v2}, Lcom/sun/tools/javac/code/BoundKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/BoundKind;->SUPER:Lcom/sun/tools/javac/code/BoundKind;

    .line 38
    new-instance v0, Lcom/sun/tools/javac/code/BoundKind;

    const-string v1, "UNBOUND"

    const-string v2, "?"

    invoke-direct {v0, v1, v5, v2}, Lcom/sun/tools/javac/code/BoundKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    .line 35
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sun/tools/javac/code/BoundKind;

    sget-object v2, Lcom/sun/tools/javac/code/BoundKind;->EXTENDS:Lcom/sun/tools/javac/code/BoundKind;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/code/BoundKind;->SUPER:Lcom/sun/tools/javac/code/BoundKind;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sun/tools/javac/code/BoundKind;->$VALUES:[Lcom/sun/tools/javac/code/BoundKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/sun/tools/javac/code/BoundKind;->name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/code/BoundKind;
    .registers 2

    .line 35
    const-class v0, Lcom/sun/tools/javac/code/BoundKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/BoundKind;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/code/BoundKind;
    .registers 1

    .line 35
    sget-object v0, Lcom/sun/tools/javac/code/BoundKind;->$VALUES:[Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/code/BoundKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/code/BoundKind;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/sun/tools/javac/code/BoundKind;->name:Ljava/lang/String;

    return-object v0
.end method
