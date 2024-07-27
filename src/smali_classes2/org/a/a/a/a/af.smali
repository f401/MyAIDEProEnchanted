.class public final enum Lorg/a/a/a/a/af;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/a/a/a/a/af;

.field public static final enum b:Lorg/a/a/a/a/af;

.field public static final enum c:Lorg/a/a/a/a/af;

.field public static final enum d:Lorg/a/a/a/a/af;

.field public static final enum e:Lorg/a/a/a/a/af;

.field public static final enum f:Lorg/a/a/a/a/af;

.field public static final enum g:Lorg/a/a/a/a/af;

.field public static final enum h:Lorg/a/a/a/a/af;

.field private static final i:[Lorg/a/a/a/a/af;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/a/a/a/a/af;

    const-string v1, "CHANNEL"

    invoke-direct {v0, v1, v3}, Lorg/a/a/a/a/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/a/af;->a:Lorg/a/a/a/a/af;

    new-instance v0, Lorg/a/a/a/a/af;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v4}, Lorg/a/a/a/a/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/a/af;->b:Lorg/a/a/a/a/af;

    new-instance v0, Lorg/a/a/a/a/af;

    const-string v1, "MODE"

    invoke-direct {v0, v1, v5}, Lorg/a/a/a/a/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/a/af;->c:Lorg/a/a/a/a/af;

    new-instance v0, Lorg/a/a/a/a/af;

    const-string v1, "MORE"

    invoke-direct {v0, v1, v6}, Lorg/a/a/a/a/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/a/af;->d:Lorg/a/a/a/a/af;

    new-instance v0, Lorg/a/a/a/a/af;

    const-string v1, "POP_MODE"

    invoke-direct {v0, v1, v7}, Lorg/a/a/a/a/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/a/af;->e:Lorg/a/a/a/a/af;

    new-instance v0, Lorg/a/a/a/a/af;

    const-string v1, "PUSH_MODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/a/a/a/a/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/a/af;->f:Lorg/a/a/a/a/af;

    new-instance v0, Lorg/a/a/a/a/af;

    const-string v1, "SKIP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/a/a/a/a/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/a/af;->g:Lorg/a/a/a/a/af;

    new-instance v0, Lorg/a/a/a/a/af;

    const-string v1, "TYPE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/a/a/a/a/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/a/af;->h:Lorg/a/a/a/a/af;

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/a/a/a/a/af;

    sget-object v1, Lorg/a/a/a/a/af;->a:Lorg/a/a/a/a/af;

    aput-object v1, v0, v3

    sget-object v1, Lorg/a/a/a/a/af;->b:Lorg/a/a/a/a/af;

    aput-object v1, v0, v4

    sget-object v1, Lorg/a/a/a/a/af;->c:Lorg/a/a/a/a/af;

    aput-object v1, v0, v5

    sget-object v1, Lorg/a/a/a/a/af;->d:Lorg/a/a/a/a/af;

    aput-object v1, v0, v6

    sget-object v1, Lorg/a/a/a/a/af;->e:Lorg/a/a/a/a/af;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/a/a/a/a/af;->f:Lorg/a/a/a/a/af;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/a/a/a/a/af;->g:Lorg/a/a/a/a/af;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/a/a/a/a/af;->h:Lorg/a/a/a/a/af;

    aput-object v2, v0, v1

    sput-object v0, Lorg/a/a/a/a/af;->i:[Lorg/a/a/a/a/af;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lorg/a/a/a/a/af;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lorg/a/a/a/a/af;->i:[Lorg/a/a/a/a/af;

    array-length v1, v0

    new-array v2, v1, [Lorg/a/a/a/a/af;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
