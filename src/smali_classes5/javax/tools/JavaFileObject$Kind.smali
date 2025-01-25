.class public final enum Ljavax/tools/JavaFileObject$Kind;
.super Ljava/lang/Enum;
.source "JavaFileObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/tools/JavaFileObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/tools/JavaFileObject$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Ljavax/tools/JavaFileObject$Kind;

.field public static final enum CLASS:Ljavax/tools/JavaFileObject$Kind;

.field public static final enum HTML:Ljavax/tools/JavaFileObject$Kind;

.field public static final enum OTHER:Ljavax/tools/JavaFileObject$Kind;

.field public static final enum SOURCE:Ljavax/tools/JavaFileObject$Kind;


# instance fields
.field public final extension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Ljavax/tools/JavaFileObject$Kind;

    const-string v1, "SOURCE"

    const-string v2, ".java"

    invoke-direct {v0, v1, v3, v2}, Ljavax/tools/JavaFileObject$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    .line 62
    new-instance v0, Ljavax/tools/JavaFileObject$Kind;

    const-string v1, "CLASS"

    const-string v2, ".class"

    invoke-direct {v0, v1, v4, v2}, Ljavax/tools/JavaFileObject$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    .line 68
    new-instance v0, Ljavax/tools/JavaFileObject$Kind;

    const-string v1, "HTML"

    const-string v2, ".html"

    invoke-direct {v0, v1, v5, v2}, Ljavax/tools/JavaFileObject$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljavax/tools/JavaFileObject$Kind;->HTML:Ljavax/tools/JavaFileObject$Kind;

    .line 73
    new-instance v0, Ljavax/tools/JavaFileObject$Kind;

    const-string v1, "OTHER"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v2}, Ljavax/tools/JavaFileObject$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljavax/tools/JavaFileObject$Kind;->OTHER:Ljavax/tools/JavaFileObject$Kind;

    .line 51
    const/4 v1, 0x4

    new-array v1, v1, [Ljavax/tools/JavaFileObject$Kind;

    sget-object v2, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    aput-object v2, v1, v3

    sget-object v2, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    aput-object v2, v1, v4

    sget-object v2, Ljavax/tools/JavaFileObject$Kind;->HTML:Ljavax/tools/JavaFileObject$Kind;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Ljavax/tools/JavaFileObject$Kind;->$VALUES:[Ljavax/tools/JavaFileObject$Kind;

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

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    iput-object p3, p0, Ljavax/tools/JavaFileObject$Kind;->extension:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/tools/JavaFileObject$Kind;
    .registers 2

    .line 51
    const-class v0, Ljavax/tools/JavaFileObject$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileObject$Kind;

    return-object v0
.end method

.method public static values()[Ljavax/tools/JavaFileObject$Kind;
    .registers 1

    .line 51
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->$VALUES:[Ljavax/tools/JavaFileObject$Kind;

    invoke-virtual {v0}, [Ljavax/tools/JavaFileObject$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/tools/JavaFileObject$Kind;

    return-object v0
.end method
