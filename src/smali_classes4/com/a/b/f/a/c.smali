.class abstract enum Lcom/a/b/f/a/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/a/b/f/a/c;

.field public static final enum b:Lcom/a/b/f/a/c;

.field public static final enum c:Lcom/a/b/f/a/c;

.field private static final d:[Lcom/a/b/f/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/b/f/a/d;

    const-string v1, "EVEN"

    invoke-direct {v0, v1, v2}, Lcom/a/b/f/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/a/c;->a:Lcom/a/b/f/a/c;

    new-instance v0, Lcom/a/b/f/a/e;

    const-string v1, "ODD"

    invoke-direct {v0, v1, v3}, Lcom/a/b/f/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/a/c;->b:Lcom/a/b/f/a/c;

    new-instance v0, Lcom/a/b/f/a/f;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v4}, Lcom/a/b/f/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/f/a/c;->c:Lcom/a/b/f/a/c;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/b/f/a/c;

    sget-object v1, Lcom/a/b/f/a/c;->a:Lcom/a/b/f/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/b/f/a/c;->b:Lcom/a/b/f/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/b/f/a/c;->c:Lcom/a/b/f/a/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/a/b/f/a/c;->d:[Lcom/a/b/f/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/a/b/f/a/c;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/a/b/f/a/c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/b/f/a/c;
    .registers 2

    const-class v0, Lcom/a/b/f/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/a/c;

    return-object v0
.end method

.method public static values()[Lcom/a/b/f/a/c;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/a/b/f/a/c;->d:[Lcom/a/b/f/a/c;

    array-length v1, v0

    new-array v2, v1, [Lcom/a/b/f/a/c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method abstract a(Ljava/util/BitSet;I)I
.end method
