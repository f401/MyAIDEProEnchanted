.class final enum Lcom/a/b/f/a/k;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/a/b/f/a/k;

.field public static final enum b:Lcom/a/b/f/a/k;

.field public static final enum c:Lcom/a/b/f/a/k;

.field public static final enum d:Lcom/a/b/f/a/k;

.field private static final e:[Lcom/a/b/f/a/k;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/b/f/a/k;

    const-string v1, "LIVE_IN_AT_STATEMENT"

    invoke-direct {v0, v1, v2}, Lcom/a/b/f/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/a/k;->a:Lcom/a/b/f/a/k;

    new-instance v0, Lcom/a/b/f/a/k;

    const-string v1, "LIVE_OUT_AT_STATEMENT"

    invoke-direct {v0, v1, v3}, Lcom/a/b/f/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/a/k;->b:Lcom/a/b/f/a/k;

    new-instance v0, Lcom/a/b/f/a/k;

    const-string v1, "LIVE_OUT_AT_BLOCK"

    invoke-direct {v0, v1, v4}, Lcom/a/b/f/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/a/k;->c:Lcom/a/b/f/a/k;

    new-instance v0, Lcom/a/b/f/a/k;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v5}, Lcom/a/b/f/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/a/k;->d:Lcom/a/b/f/a/k;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/a/b/f/a/k;

    sget-object v1, Lcom/a/b/f/a/k;->a:Lcom/a/b/f/a/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/b/f/a/k;->b:Lcom/a/b/f/a/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/b/f/a/k;->c:Lcom/a/b/f/a/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/b/f/a/k;->d:Lcom/a/b/f/a/k;

    aput-object v1, v0, v5

    sput-object v0, Lcom/a/b/f/a/k;->e:[Lcom/a/b/f/a/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/b/f/a/k;
    .registers 2

    const-class v0, Lcom/a/b/f/a/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/a/k;

    return-object v0
.end method

.method public static values()[Lcom/a/b/f/a/k;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/a/b/f/a/k;->e:[Lcom/a/b/f/a/k;

    array-length v1, v0

    new-array v2, v1, [Lcom/a/b/f/a/k;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
