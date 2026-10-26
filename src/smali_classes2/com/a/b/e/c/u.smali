.class public abstract Lcom/a/b/e/c/u;
.super Lcom/a/b/e/c/v;


# instance fields
.field private final a:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lcom/a/b/e/c/v;-><init>()V

    iput-wide p1, p0, Lcom/a/b/e/c/u;->a:J

    return-void
.end method


# virtual methods
.method protected b(Lcom/a/b/e/c/a;)I
    .locals 4

    check-cast p1, Lcom/a/b/e/c/u;

    iget-wide v0, p1, Lcom/a/b/e/c/u;->a:J

    iget-wide v2, p0, Lcom/a/b/e/c/u;->a:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/a/b/e/c/u;->a:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/a/b/e/c/u;->a:J

    check-cast p1, Lcom/a/b/e/c/u;

    iget-wide v2, p1, Lcom/a/b/e/c/u;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/a/b/e/c/u;->a:J

    long-to-int v0, v0

    iget-wide v2, p0, Lcom/a/b/e/c/u;->a:J

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 4

    iget-wide v0, p0, Lcom/a/b/e/c/u;->a:J

    long-to-int v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/a/b/e/c/u;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()I
    .locals 2

    iget-wide v0, p0, Lcom/a/b/e/c/u;->a:J

    long-to-int v0, v0

    return v0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Lcom/a/b/e/c/u;->a:J

    return-wide v0
.end method
