.class public abstract Lc/a;
.super Lc/s;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:[B


# direct methods
.method public constructor <init>(ZI[B)V
    .registers 4

    invoke-direct {p0}, Lc/s;-><init>()V

    iput-boolean p1, p0, Lc/a;->a:Z

    iput p2, p0, Lc/a;->b:I

    invoke-static {p3}, Lx/a;->b([B)[B

    move-result-object p1

    iput-object p1, p0, Lc/a;->c:[B

    return-void
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .registers 5

    instance-of v0, p1, Lc/a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lc/a;

    iget-boolean v0, p0, Lc/a;->a:Z

    iget-boolean v2, p1, Lc/a;->a:Z

    if-ne v0, v2, :cond_1f

    iget v0, p0, Lc/a;->b:I

    iget v2, p1, Lc/a;->b:I

    if-ne v0, v2, :cond_1f

    iget-object v0, p0, Lc/a;->c:[B

    iget-object p1, p1, Lc/a;->c:[B

    invoke-static {v0, p1}, Lx/a;->a([B[B)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method public e(Lc/q;)V
    .registers 5

    iget-boolean v0, p0, Lc/a;->a:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x60

    goto :goto_9

    :cond_7
    const/16 v0, 0x40

    :goto_9
    iget v1, p0, Lc/a;->b:I

    iget-object v2, p0, Lc/a;->c:[B

    invoke-virtual {p1, v0, v1, v2}, Lc/q;->f(II[B)V

    return-void
.end method

.method public final f()I
    .registers 3

    iget v0, p0, Lc/a;->b:I

    invoke-static {v0}, Lc/bu;->c(I)I

    move-result v0

    iget-object v1, p0, Lc/a;->c:[B

    array-length v1, v1

    invoke-static {v1}, Lc/bu;->b(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lc/a;->c:[B

    array-length v0, v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final g()Z
    .registers 2

    iget-boolean v0, p0, Lc/a;->a:Z

    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget-boolean v0, p0, Lc/a;->a:Z

    iget v1, p0, Lc/a;->b:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lc/a;->c:[B

    invoke-static {v1}, Lx/a;->c([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
