.class public final enum Lcom/sun/tools/javac/code/RetentionPolicy;
.super Ljava/lang/Enum;
.source "RetentionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/code/RetentionPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/code/RetentionPolicy;

.field public static final enum CLASS:Lcom/sun/tools/javac/code/RetentionPolicy;

.field public static final enum RUNTIME:Lcom/sun/tools/javac/code/RetentionPolicy;

.field public static final enum SOURCE:Lcom/sun/tools/javac/code/RetentionPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/sun/tools/javac/code/RetentionPolicy;

    const-string v1, "SOURCE"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/code/RetentionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/code/RetentionPolicy;->SOURCE:Lcom/sun/tools/javac/code/RetentionPolicy;

    .line 5
    new-instance v0, Lcom/sun/tools/javac/code/RetentionPolicy;

    const-string v1, "CLASS"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/code/RetentionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/code/RetentionPolicy;->CLASS:Lcom/sun/tools/javac/code/RetentionPolicy;

    .line 6
    new-instance v0, Lcom/sun/tools/javac/code/RetentionPolicy;

    const-string v1, "RUNTIME"

    invoke-direct {v0, v1, v5}, Lcom/sun/tools/javac/code/RetentionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/code/RetentionPolicy;->RUNTIME:Lcom/sun/tools/javac/code/RetentionPolicy;

    .line 3
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sun/tools/javac/code/RetentionPolicy;

    sget-object v2, Lcom/sun/tools/javac/code/RetentionPolicy;->SOURCE:Lcom/sun/tools/javac/code/RetentionPolicy;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/code/RetentionPolicy;->CLASS:Lcom/sun/tools/javac/code/RetentionPolicy;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sun/tools/javac/code/RetentionPolicy;->$VALUES:[Lcom/sun/tools/javac/code/RetentionPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/code/RetentionPolicy;
    .registers 2

    .line 3
    const-class v0, Lcom/sun/tools/javac/code/RetentionPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/RetentionPolicy;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/code/RetentionPolicy;
    .registers 1

    .line 3
    sget-object v0, Lcom/sun/tools/javac/code/RetentionPolicy;->$VALUES:[Lcom/sun/tools/javac/code/RetentionPolicy;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/code/RetentionPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/code/RetentionPolicy;

    return-object v0
.end method
