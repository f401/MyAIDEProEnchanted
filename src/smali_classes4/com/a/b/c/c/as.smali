.class final enum Lcom/a/b/c/c/as;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/a/b/c/c/as;

.field public static final enum b:Lcom/a/b/c/c/as;

.field public static final enum c:Lcom/a/b/c/c/as;

.field private static final d:[Lcom/a/b/c/c/as;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/b/c/c/as;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/a/b/c/c/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/c/c/as;->a:Lcom/a/b/c/c/as;

    new-instance v0, Lcom/a/b/c/c/as;

    const-string v1, "TYPE"

    invoke-direct {v0, v1, v3}, Lcom/a/b/c/c/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/c/c/as;->b:Lcom/a/b/c/c/as;

    new-instance v0, Lcom/a/b/c/c/as;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v4}, Lcom/a/b/c/c/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/c/c/as;->c:Lcom/a/b/c/c/as;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/b/c/c/as;

    sget-object v1, Lcom/a/b/c/c/as;->a:Lcom/a/b/c/c/as;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/b/c/c/as;->b:Lcom/a/b/c/c/as;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/b/c/c/as;->c:Lcom/a/b/c/c/as;

    aput-object v1, v0, v4

    sput-object v0, Lcom/a/b/c/c/as;->d:[Lcom/a/b/c/c/as;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/b/c/c/as;
    .registers 2

    const-class v0, Lcom/a/b/c/c/as;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/c/as;

    return-object v0
.end method

.method public static values()[Lcom/a/b/c/c/as;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/a/b/c/c/as;->d:[Lcom/a/b/c/c/as;

    array-length v1, v0

    new-array v2, v1, [Lcom/a/b/c/c/as;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
