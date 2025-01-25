.class public final enum Lcom/a/b/f/ab;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/a/b/f/ab;

.field public static final enum b:Lcom/a/b/f/ab;

.field public static final enum c:Lcom/a/b/f/ab;

.field public static final enum d:Lcom/a/b/f/ab;

.field public static final enum e:Lcom/a/b/f/ab;

.field private static final f:[Lcom/a/b/f/ab;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/b/f/ab;

    const-string v1, "MOVE_PARAM_COMBINER"

    invoke-direct {v0, v1, v2}, Lcom/a/b/f/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/ab;->a:Lcom/a/b/f/ab;

    new-instance v0, Lcom/a/b/f/ab;

    const-string v1, "SCCP"

    invoke-direct {v0, v1, v3}, Lcom/a/b/f/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/ab;->b:Lcom/a/b/f/ab;

    new-instance v0, Lcom/a/b/f/ab;

    const-string v1, "LITERAL_UPGRADE"

    invoke-direct {v0, v1, v4}, Lcom/a/b/f/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/ab;->c:Lcom/a/b/f/ab;

    new-instance v0, Lcom/a/b/f/ab;

    const-string v1, "CONST_COLLECTOR"

    invoke-direct {v0, v1, v5}, Lcom/a/b/f/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/ab;->d:Lcom/a/b/f/ab;

    new-instance v0, Lcom/a/b/f/ab;

    const-string v1, "ESCAPE_ANALYSIS"

    invoke-direct {v0, v1, v6}, Lcom/a/b/f/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/ab;->e:Lcom/a/b/f/ab;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/a/b/f/ab;

    sget-object v1, Lcom/a/b/f/ab;->a:Lcom/a/b/f/ab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/b/f/ab;->b:Lcom/a/b/f/ab;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/b/f/ab;->c:Lcom/a/b/f/ab;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/b/f/ab;->d:Lcom/a/b/f/ab;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/b/f/ab;->e:Lcom/a/b/f/ab;

    aput-object v1, v0, v6

    sput-object v0, Lcom/a/b/f/ab;->f:[Lcom/a/b/f/ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/b/f/ab;
    .registers 2

    const-class v0, Lcom/a/b/f/ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/ab;

    return-object v0
.end method

.method public static values()[Lcom/a/b/f/ab;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/a/b/f/ab;->f:[Lcom/a/b/f/ab;

    array-length v1, v0

    new-array v2, v1, [Lcom/a/b/f/ab;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
