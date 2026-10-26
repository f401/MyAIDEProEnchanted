.class public final Lc/bj;
.super Lc/s;
.source "SourceFile"

# interfaces
.implements Lc/y;


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lc/s;-><init>()V

    invoke-static {p1}, Lx/a;->b([B)[B

    move-result-object v0

    iput-object v0, p0, Lc/bj;->a:[B

    return-void
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .locals 2

    instance-of v0, p1, Lc/bj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lc/bj;

    iget-object v0, p0, Lc/bj;->a:[B

    iget-object v1, p1, Lc/bj;->a:[B

    invoke-static {v0, v1}, Lx/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final e(Lc/q;)V
    .locals 2

    const/16 v0, 0x15

    iget-object v1, p0, Lc/bj;->a:[B

    invoke-virtual {p1, v0, v1}, Lc/q;->g(I[B)V

    return-void
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lc/bj;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lc/bj;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/bj;->a:[B

    invoke-static {v0}, Lx/b;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lc/bj;->a:[B

    invoke-static {v0}, Lx/a;->c([B)I

    move-result v0

    return v0
.end method
