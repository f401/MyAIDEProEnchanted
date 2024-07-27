.class public final enum Lorg/a/a/a/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/a/a/a/g;

.field public static final enum b:Lorg/a/a/a/g;

.field public static final enum c:Lorg/a/a/a/g;

.field private static final d:[Lorg/a/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/a/a/a/g;

    const-string v1, "BYTE"

    invoke-direct {v0, v1, v2}, Lorg/a/a/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/g;->a:Lorg/a/a/a/g;

    new-instance v0, Lorg/a/a/a/g;

    const-string v1, "CHAR"

    invoke-direct {v0, v1, v3}, Lorg/a/a/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/g;->b:Lorg/a/a/a/g;

    new-instance v0, Lorg/a/a/a/g;

    const-string v1, "INT"

    invoke-direct {v0, v1, v4}, Lorg/a/a/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/g;->c:Lorg/a/a/a/g;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/a/a/a/g;

    sget-object v1, Lorg/a/a/a/g;->a:Lorg/a/a/a/g;

    aput-object v1, v0, v2

    sget-object v1, Lorg/a/a/a/g;->b:Lorg/a/a/a/g;

    aput-object v1, v0, v3

    sget-object v1, Lorg/a/a/a/g;->c:Lorg/a/a/a/g;

    aput-object v1, v0, v4

    sput-object v0, Lorg/a/a/a/g;->d:[Lorg/a/a/a/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lorg/a/a/a/g;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lorg/a/a/a/g;->d:[Lorg/a/a/a/g;

    array-length v1, v0

    new-array v2, v1, [Lorg/a/a/a/g;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
