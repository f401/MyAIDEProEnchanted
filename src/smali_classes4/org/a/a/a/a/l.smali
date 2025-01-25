.class final enum Lorg/a/a/a/a/l;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/a/a/a/a/l;

.field public static final enum b:Lorg/a/a/a/a/l;

.field private static final c:[Lorg/a/a/a/a/l;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/a/a/a/a/l;

    const-string v1, "UNICODE_BMP"

    invoke-direct {v0, v1, v2}, Lorg/a/a/a/a/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/a/l;->a:Lorg/a/a/a/a/l;

    new-instance v0, Lorg/a/a/a/a/l;

    const-string v1, "UNICODE_SMP"

    invoke-direct {v0, v1, v3}, Lorg/a/a/a/a/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/a/l;->b:Lorg/a/a/a/a/l;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/a/a/a/a/l;

    sget-object v1, Lorg/a/a/a/a/l;->a:Lorg/a/a/a/a/l;

    aput-object v1, v0, v2

    sget-object v1, Lorg/a/a/a/a/l;->b:Lorg/a/a/a/a/l;

    aput-object v1, v0, v3

    sput-object v0, Lorg/a/a/a/a/l;->c:[Lorg/a/a/a/a/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
