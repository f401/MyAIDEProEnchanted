.class public abstract Lc/a;
.super Lc/s;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:[B


# direct methods
.method public constructor <init>(ZI[B)V
    .locals 1

    invoke-direct {p0}, Lc/s;-><init>()V

    iput-boolean p1, p0, Lc/a;->a:Z

    iput p2, p0, Lc/a;->b:I

    invoke-static {p3}, Lx/a;->b([B)[B

    move-result-object v0

    iput-object v0, p0, Lc/a;->c:[B

    return-void
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lc/a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lc/a;

    iget-boolean v1, p0, Lc/a;->a:Z

    iget-boolean v2, p1, Lc/a;->a:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lc/a;->b:I

    iget v2, p1, Lc/a;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lc/a;->c:[B

    iget-object v2, p1, Lc/a;->c:[B

    invoke-static {v1, v2}, Lx/a;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e(Lc/q;)V
    .locals 3

    iget-boolean v0, p0, Lc/a;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    :goto_0
    iget v1, p0, Lc/a;->b:I

    iget-object v2, p0, Lc/a;->c:[B

    invoke-virtual {p1, v0, v1, v2}, Lc/q;->f(II[B)V

    return-void

    :cond_0
    const/16 v0, 0x40

    goto :goto_0
.end method

.method public final f()I
    .locals 2

    iget v0, p0, Lc/a;->b:I

    invoke-static {v0}, Lc/bu;->c(I)I

    move-result v0

    iget-object v1, p0, Lc/a;->c:[B

    array-length v1, v1

    invoke-static {v1}, Lc/bu;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lc/a;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lc/a;->a:Z

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lc/a;->a:Z

    iget v1, p0, Lc/a;->b:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lc/a;->c:[B

    invoke-static {v1}, Lx/a;->c([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
