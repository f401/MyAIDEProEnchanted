.class public final enum Lcom/a/b/c/b/t;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/a/b/c/b/t;

.field public static final enum b:Lcom/a/b/c/b/t;

.field public static final enum c:Lcom/a/b/c/b/t;

.field public static final enum d:Lcom/a/b/c/b/t;

.field public static final enum e:Lcom/a/b/c/b/t;

.field public static final enum f:Lcom/a/b/c/b/t;

.field private static final g:[Lcom/a/b/c/b/t;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/a/b/c/b/t;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/a/b/c/b/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/c/b/t;->a:Lcom/a/b/c/b/t;

    new-instance v0, Lcom/a/b/c/b/t;

    const-string v1, "END_SIMPLY"

    invoke-direct {v0, v1, v4}, Lcom/a/b/c/b/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/c/b/t;->b:Lcom/a/b/c/b/t;

    new-instance v0, Lcom/a/b/c/b/t;

    const-string v1, "END_REPLACED"

    invoke-direct {v0, v1, v5}, Lcom/a/b/c/b/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/c/b/t;->c:Lcom/a/b/c/b/t;

    new-instance v0, Lcom/a/b/c/b/t;

    const-string v1, "END_MOVED"

    invoke-direct {v0, v1, v6}, Lcom/a/b/c/b/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/c/b/t;->d:Lcom/a/b/c/b/t;

    new-instance v0, Lcom/a/b/c/b/t;

    const-string v1, "END_CLOBBERED_BY_PREV"

    invoke-direct {v0, v1, v7}, Lcom/a/b/c/b/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/c/b/t;->e:Lcom/a/b/c/b/t;

    new-instance v0, Lcom/a/b/c/b/t;

    const-string v1, "END_CLOBBERED_BY_NEXT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/a/b/c/b/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/c/b/t;->f:Lcom/a/b/c/b/t;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/a/b/c/b/t;

    sget-object v1, Lcom/a/b/c/b/t;->a:Lcom/a/b/c/b/t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/b/c/b/t;->b:Lcom/a/b/c/b/t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/b/c/b/t;->c:Lcom/a/b/c/b/t;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/b/c/b/t;->d:Lcom/a/b/c/b/t;

    aput-object v1, v0, v6

    sget-object v1, Lcom/a/b/c/b/t;->e:Lcom/a/b/c/b/t;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/a/b/c/b/t;->f:Lcom/a/b/c/b/t;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/b/c/b/t;->g:[Lcom/a/b/c/b/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/b/c/b/t;
    .registers 2

    const-class v0, Lcom/a/b/c/b/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/t;

    return-object v0
.end method

.method public static values()[Lcom/a/b/c/b/t;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/a/b/c/b/t;->g:[Lcom/a/b/c/b/t;

    array-length v1, v0

    new-array v2, v1, [Lcom/a/b/c/b/t;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
