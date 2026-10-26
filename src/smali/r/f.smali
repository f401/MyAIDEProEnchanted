.class public final Lr/f;
.super Lc/m;
.source "SourceFile"


# instance fields
.field public a:Lc/t;

.field public b:Lr/d;


# direct methods
.method public constructor <init>(Lc/t;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object p1, p0, Lr/f;->a:Lc/t;

    invoke-virtual {p1, v2}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    instance-of v0, v0, Lc/z;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    check-cast v0, Lc/z;

    invoke-static {v0}, Lc/k;->c(Lc/z;)Lc/k;

    move v1, v2

    .line 2
    :goto_0
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    invoke-static {v0}, Lc/k;->b(Ljava/lang/Object;)Lc/k;

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    invoke-static {v0}, Lr/a;->c(Ljava/lang/Object;)Lr/a;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    invoke-static {v0}, Lp/c;->f(Ljava/lang/Object;)Lp/c;

    add-int/lit8 v0, v1, 0x4

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    check-cast v0, Lc/t;

    invoke-virtual {v0, v2}, Lc/t;->k(I)Lc/e;

    move-result-object v2

    invoke-static {v2}, Lr/g;->b(Ljava/lang/Object;)Lr/g;

    invoke-virtual {v0, v5}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    invoke-static {v0}, Lr/g;->b(Ljava/lang/Object;)Lr/g;

    add-int/lit8 v0, v1, 0x5

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    invoke-static {v0}, Lp/c;->f(Ljava/lang/Object;)Lp/c;

    add-int/lit8 v3, v1, 0x6

    invoke-virtual {p1, v3}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    invoke-static {v0}, Lr/e;->c(Ljava/lang/Object;)Lr/e;

    invoke-virtual {p1}, Lc/t;->p()I

    move-result v0

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-lez v2, :cond_5

    add-int v0, v3, v2

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    check-cast v0, Lc/z;

    .line 3
    iget v1, v0, Lc/z;->a:I

    if-eq v1, v5, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    .line 6
    :goto_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 1
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v0}, Lc/t;->c(Lc/z;)Lc/t;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lr/d;

    if-eqz v1, :cond_2

    check-cast v0, Lr/d;

    .line 6
    :goto_3
    iput-object v0, p0, Lr/f;->b:Lr/d;

    goto :goto_2

    .line 5
    :cond_2
    if-eqz v0, :cond_3

    new-instance v1, Lr/d;

    invoke-static {v0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object v0

    invoke-direct {v1, v0}, Lr/d;-><init>(Lc/t;)V

    move-object v0, v1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 6
    :cond_4
    invoke-static {v0}, Lc/ap;->p(Lc/z;)Lc/ap;

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static c(Ljava/lang/Object;)Lr/f;
    .locals 2

    instance-of v0, p0, Lr/f;

    if-eqz v0, :cond_0

    check-cast p0, Lr/f;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lr/f;

    invoke-static {p0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lr/f;-><init>(Lc/t;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final l()Lc/s;
    .locals 1

    iget-object v0, p0, Lr/f;->a:Lc/t;

    return-object v0
.end method
