.class public final Lc/ba;
.super Lc/q;
.source "SourceFile"


# instance fields
.field public final l:I


# direct methods
.method public synthetic constructor <init>(Ljava/io/OutputStream;I)V
    .registers 3

    iput p2, p0, Lc/ba;->l:I

    invoke-direct {p0, p1}, Lc/q;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final b()Lc/q;
    .registers 2

    iget v0, p0, Lc/ba;->l:I

    if-eqz v0, :cond_9

    invoke-super {p0}, Lc/q;->b()Lc/q;

    move-result-object v0

    return-object v0

    :cond_9
    return-object p0
.end method

.method public final c()Lc/q;
    .registers 2

    iget v0, p0, Lc/ba;->l:I

    if-eqz v0, :cond_9

    invoke-super {p0}, Lc/q;->c()Lc/q;

    move-result-object v0

    return-object v0

    :cond_9
    return-object p0
.end method

.method public final j(Lc/e;)V
    .registers 4

    iget v0, p0, Lc/ba;->l:I

    const-string v1, "null object detected"

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_14

    .line 2
    invoke-interface {p1}, Lc/e;->l()Lc/s;

    move-result-object p1

    invoke-virtual {p1}, Lc/s;->j()Lc/s;

    move-result-object p1

    invoke-virtual {p1, p0}, Lc/s;->e(Lc/q;)V

    return-void

    :cond_14
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    if-eqz p1, :cond_28

    .line 1
    invoke-interface {p1}, Lc/e;->l()Lc/s;

    move-result-object p1

    invoke-virtual {p1}, Lc/s;->i()Lc/s;

    move-result-object p1

    invoke-virtual {p1, p0}, Lc/s;->e(Lc/q;)V

    return-void

    :cond_28
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
