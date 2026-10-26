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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/q;->a:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public b()Lc/q;
    .locals 3

    new-instance v0, Lc/ba;

    iget-object v1, p0, Lc/q;->a:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/ba;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public c()Lc/q;
    .locals 3

    new-instance v0, Lc/ba;

    iget-object v1, p0, Lc/q;->a:Ljava/io/OutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc/ba;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lc/q;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final e([B)V
    .locals 1

    iget-object v0, p0, Lc/q;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final f(II[B)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lc/q;->k(II)V

    array-length v0, p3

    invoke-virtual {p0, v0}, Lc/q;->i(I)V

    invoke-virtual {p0, p3}, Lc/q;->e([B)V

    return-void
.end method

.method public final g(I[B)V
    .locals 1

    invoke-virtual {p0, p1}, Lc/q;->d(I)V

    array-length v0, p2

    invoke-virtual {p0, v0}, Lc/q;->i(I)V

    invoke-virtual {p0, p2}, Lc/q;->e([B)V

    return-void
.end method

.method public final h(Lc/s;)V
    .locals 2

    new-instance v0, Lc/q$a;

    iget-object v1, p0, Lc/q;->a:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lc/q$a;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lc/s;->e(Lc/q;)V

    return-void
.end method

.method public final i(I)V
    .locals 2

    const/16 v0, 0x7f

    if-le p1, v0, :cond_1

    const/4 v1, 0x1

    move v0, p1

    :goto_0
    ushr-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    or-int/lit16 v0, v1, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/q;->d(I)V

    add-int/lit8 v0, v1, -0x1

    mul-int/lit8 v0, v0, 0x8

    :goto_1
    if-ltz v0, :cond_2

    shr-int v1, p1, v0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lc/q;->d(I)V

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_1
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lc/q;->d(I)V

    :cond_2
    return-void
.end method

.method public j(Lc/e;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/s;->e(Lc/q;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(II)V
    .locals 4

    const/4 v0, 0x4

    const/16 v1, 0x1f

    if-ge p2, v1, :cond_0

    or-int v0, p1, p2

    invoke-virtual {p0, v0}, Lc/q;->d(I)V

    :goto_0
    return-void

    :cond_0
    or-int/lit8 v1, p1, 0x1f

    invoke-virtual {p0, v1}, Lc/q;->d(I)V

    const/16 v1, 0x80

    if-ge p2, v1, :cond_1

    invoke-virtual {p0, p2}, Lc/q;->d(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    new-array v1, v1, [B

    and-int/lit8 v2, p2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :cond_2
    shr-int/lit8 p2, p2, 0x7

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v2, 0x7f

    if-gt p2, v2, :cond_2

    iget-object v2, p0, Lc/q;->a:Ljava/io/OutputStream;

    rsub-int/lit8 v3, v0, 0x5

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
