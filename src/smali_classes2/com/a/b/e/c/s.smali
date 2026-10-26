.class public final Lcom/a/b/e/c/s;
.super Lcom/a/b/e/c/v;


# static fields
.field public static final a:Lcom/a/b/e/c/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/b/e/c/s;

    invoke-direct {v0}, Lcom/a/b/e/c/s;-><init>()V

    sput-object v0, Lcom/a/b/e/c/s;->a:Lcom/a/b/e/c/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/e/c/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/e/d/c;
    .locals 1

    sget-object v0, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    return-object v0
.end method

.method protected b(Lcom/a/b/e/c/a;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/a/b/e/c/s;

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "known-null"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x4466757a

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "known-null"

    return-object v0
.end method
