.class public final enum Lcom/a/b/e/a/b;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/a/b/g/w;


# static fields
.field public static final enum a:Lcom/a/b/e/a/b;

.field public static final enum b:Lcom/a/b/e/a/b;

.field public static final enum c:Lcom/a/b/e/a/b;

.field public static final enum d:Lcom/a/b/e/a/b;

.field private static final f:[Lcom/a/b/e/a/b;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/a/b/e/a/b;

    const-string v1, "RUNTIME"

    const-string v2, "runtime"

    invoke-direct {v0, v1, v3, v2}, Lcom/a/b/e/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/b/e/a/b;->a:Lcom/a/b/e/a/b;

    new-instance v0, Lcom/a/b/e/a/b;

    const-string v1, "BUILD"

    const-string v2, "build"

    invoke-direct {v0, v1, v4, v2}, Lcom/a/b/e/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/b/e/a/b;->b:Lcom/a/b/e/a/b;

    new-instance v0, Lcom/a/b/e/a/b;

    const-string v1, "SYSTEM"

    const-string v2, "system"

    invoke-direct {v0, v1, v5, v2}, Lcom/a/b/e/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/b/e/a/b;->c:Lcom/a/b/e/a/b;

    new-instance v0, Lcom/a/b/e/a/b;

    const-string v1, "EMBEDDED"

    const-string v2, "embedded"

    invoke-direct {v0, v1, v6, v2}, Lcom/a/b/e/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/a/b/e/a/b;->d:Lcom/a/b/e/a/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/a/b/e/a/b;

    sget-object v1, Lcom/a/b/e/a/b;->a:Lcom/a/b/e/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/b/e/a/b;->b:Lcom/a/b/e/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/b/e/a/b;->c:Lcom/a/b/e/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/b/e/a/b;->d:Lcom/a/b/e/a/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/a/b/e/a/b;->f:[Lcom/a/b/e/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/a/b/e/a/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/b/e/a/b;
    .registers 2

    const-class v0, Lcom/a/b/e/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/a/b;

    return-object v0
.end method

.method public static values()[Lcom/a/b/e/a/b;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/a/b/e/a/b;->f:[Lcom/a/b/e/a/b;

    array-length v1, v0

    new-array v2, v1, [Lcom/a/b/e/a/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/a/b;->e:Ljava/lang/String;

    return-object v0
.end method
