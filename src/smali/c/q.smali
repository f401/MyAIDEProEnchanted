.class public Lc/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/q$a;
    }
.end annotation


# instance fields
.field public a:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/q;->a:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public b()Lc/q;
    .registers 4

    new-instance v0, Lc/ba;

    iget-object v1, p0, Lc/q;->a:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/ba;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public c()Lc/q;
    .registers 4

    new-instance v0, Lc/ba;

    iget-object v1, p0, Lc/q;->a:Ljava/io/OutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc/ba;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public d(I)V
    .registers 3

    iget-object v0, p0, Lc/q;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final e([B)V
    .registers 3

    iget-object v0, p0, Lc/q;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final f(II[B)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lc/q;->k(II)V

    array-length p1, p3

    invoke-virtual {p0, p1}, Lc/q;->i(I)V

    invoke-virtual {p0, p3}, Lc/q;->e([B)V

    return-void
.end method

.method public final g(I[B)V
    .registers 3

    invoke-virtual {p0, p1}, Lc/q;->d(I)V

    array-length p1, p2

    invoke-virtual {p0, p1}, Lc/q;->i(I)V

    invoke-virtual {p0, p2}, Lc/q;->e([B)V

    return-void
.end method

.method public final h(Lc/s;)V
    .registers 4

    new-instance v0, Lc/q$a;

    iget-object v1, p0, Lc/q;->a:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lc/q$a;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lc/s;->e(Lc/q;)V

    return-void
.end method

.method public final i(I)V
    .registers 5

    const/16 v0, 0x7f

    if-le p1, v0, :cond_22

    const/4 v0, 0x1

    move v1, p1

    const/4 v2, 0x1

    :goto_7
    ushr-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_e

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    or-int/lit16 v1, v2, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lc/q;->d(I)V

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    :goto_17
    if-ltz v2, :cond_26

    shr-int v0, p1, v2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/q;->d(I)V

    add-int/lit8 v2, v2, -0x8

    goto :goto_17

    :cond_22
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lc/q;->d(I)V

    :cond_26
    return-void
.end method

.method public j(Lc/e;)V
    .registers 3

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lc/e;->l()Lc/s;

    move-result-object p1

    invoke-virtual {p1, p0}, Lc/s;->e(Lc/q;)V

    return-void

    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "null object detected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(II)V
    .registers 6

    const/16 v0, 0x1f

    if-ge p2, v0, :cond_9

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lc/q;->d(I)V

    goto :goto_33

    :cond_9
    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lc/q;->d(I)V

    const/16 p1, 0x80

    if-ge p2, p1, :cond_15

    invoke-virtual {p0, p2}, Lc/q;->d(I)V

    goto :goto_33

    :cond_15
    const/4 v0, 0x5

    new-array v0, v0, [B

    and-int/lit8 v1, p2, 0x7f

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    :cond_1e
    shr-int/lit8 p2, p2, 0x7

    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v1, p2, 0x7f

    or-int/2addr v1, p1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/16 v1, 0x7f

    if-gt p2, v1, :cond_1e

    iget-object p1, p0, Lc/q;->a:Ljava/io/OutputStream;

    rsub-int/lit8 p2, v2, 0x5

    invoke-virtual {p1, v0, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    :goto_33
    return-void
.end method
