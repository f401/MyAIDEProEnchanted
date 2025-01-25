.class public final Lr/f;
.super Lc/m;
.source "SourceFile"


# instance fields
.field public a:Lc/t;

.field public b:Lr/d;


# direct methods
.method public constructor <init>(Lc/t;)V
    .registers 8

    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object p1, p0, Lr/f;->a:Lc/t;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v1

    instance-of v1, v1, Lc/z;

    if-eqz v1, :cond_19

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v1

    check-cast v1, Lc/z;

    invoke-static {v1}, Lc/k;->c(Lc/z;)Lc/k;

    const/4 v1, 0x0

    goto :goto_23

    .line 1
    :cond_19
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    const/4 v1, -0x1

    .line 2
    :goto_23
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Lc/t;->k(I)Lc/e;

    move-result-object v2

    invoke-static {v2}, Lc/k;->b(Ljava/lang/Object;)Lc/k;

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v2}, Lc/t;->k(I)Lc/e;

    move-result-object v2

    invoke-static {v2}, Lr/a;->c(Ljava/lang/Object;)Lr/a;

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p1, v2}, Lc/t;->k(I)Lc/e;

    move-result-object v2

    invoke-static {v2}, Lp/c;->f(Ljava/lang/Object;)Lp/c;

    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p1, v2}, Lc/t;->k(I)Lc/e;

    move-result-object v2

    check-cast v2, Lc/t;

    invoke-virtual {v2, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    invoke-static {v0}, Lr/g;->b(Ljava/lang/Object;)Lr/g;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v2

    invoke-static {v2}, Lr/g;->b(Ljava/lang/Object;)Lr/g;

    add-int/lit8 v2, v1, 0x5

    invoke-virtual {p1, v2}, Lc/t;->k(I)Lc/e;

    move-result-object v2

    invoke-static {v2}, Lp/c;->f(Ljava/lang/Object;)Lp/c;

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1, v1}, Lc/t;->k(I)Lc/e;

    move-result-object v2

    invoke-static {v2}, Lr/e;->c(Ljava/lang/Object;)Lr/e;

    invoke-virtual {p1}, Lc/t;->p()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    :goto_6d
    if-lez v2, :cond_a4

    add-int v3, v1, v2

    invoke-virtual {p1, v3}, Lc/t;->k(I)Lc/e;

    move-result-object v3

    check-cast v3, Lc/z;

    .line 3
    iget v4, v3, Lc/z;->a:I

    if-eq v4, v0, :cond_9e

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9e

    const/4 v5, 0x3

    if-eq v4, v5, :cond_82

    goto :goto_a1

    .line 4
    :cond_82
    invoke-static {v3}, Lc/t;->c(Lc/z;)Lc/t;

    move-result-object v3

    .line 5
    instance-of v4, v3, Lr/d;

    if-eqz v4, :cond_8d

    check-cast v3, Lr/d;

    goto :goto_9b

    :cond_8d
    if-eqz v3, :cond_9a

    new-instance v4, Lr/d;

    invoke-static {v3}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object v3

    invoke-direct {v4, v3}, Lr/d;-><init>(Lc/t;)V

    move-object v3, v4

    goto :goto_9b

    :cond_9a
    const/4 v3, 0x0

    .line 6
    :goto_9b
    iput-object v3, p0, Lr/f;->b:Lr/d;

    goto :goto_a1

    :cond_9e
    invoke-static {v3}, Lc/ap;->p(Lc/z;)Lc/ap;

    :goto_a1
    add-int/lit8 v2, v2, -0x1

    goto :goto_6d

    :cond_a4
    return-void
.end method

.method public static c(Ljava/lang/Object;)Lr/f;
    .registers 2

    instance-of v0, p0, Lr/f;

    if-eqz v0, :cond_7

    check-cast p0, Lr/f;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lr/f;

    invoke-static {p0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object p0

    invoke-direct {v0, p0}, Lr/f;-><init>(Lc/t;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final l()Lc/s;
    .registers 2

    iget-object v0, p0, Lr/f;->a:Lc/t;

    return-object v0
.end method
