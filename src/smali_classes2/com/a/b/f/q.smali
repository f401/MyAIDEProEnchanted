.class public final enum Lcom/a/b/f/q;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/a/b/f/q;

.field public static final enum b:Lcom/a/b/f/q;

.field public static final enum c:Lcom/a/b/f/q;

.field public static final enum d:Lcom/a/b/f/q;

.field public static final enum e:Lcom/a/b/f/q;

.field private static final f:[Lcom/a/b/f/q;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/b/f/q;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/a/b/f/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/q;->a:Lcom/a/b/f/q;

    new-instance v0, Lcom/a/b/f/q;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/a/b/f/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/q;->b:Lcom/a/b/f/q;

    new-instance v0, Lcom/a/b/f/q;

    const-string v1, "METHOD"

    invoke-direct {v0, v1, v4}, Lcom/a/b/f/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/q;->c:Lcom/a/b/f/q;

    new-instance v0, Lcom/a/b/f/q;

    const-string v1, "INTER"

    invoke-direct {v0, v1, v5}, Lcom/a/b/f/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/q;->d:Lcom/a/b/f/q;

    new-instance v0, Lcom/a/b/f/q;

    const-string v1, "GLOBAL"

    invoke-direct {v0, v1, v6}, Lcom/a/b/f/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/q;->e:Lcom/a/b/f/q;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/a/b/f/q;

    sget-object v1, Lcom/a/b/f/q;->a:Lcom/a/b/f/q;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/b/f/q;->b:Lcom/a/b/f/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/b/f/q;->c:Lcom/a/b/f/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/b/f/q;->d:Lcom/a/b/f/q;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/b/f/q;->e:Lcom/a/b/f/q;

    aput-object v1, v0, v6

    sput-object v0, Lcom/a/b/f/q;->f:[Lcom/a/b/f/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/b/f/q;
    .registers 2

    const-class v0, Lcom/a/b/f/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/q;

    return-object v0
.end method

.method public static values()[Lcom/a/b/f/q;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/a/b/f/q;->f:[Lcom/a/b/f/q;

    array-length v1, v0

    new-array v2, v1, [Lcom/a/b/f/q;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
