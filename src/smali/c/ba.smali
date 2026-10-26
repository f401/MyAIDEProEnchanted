.class public final Lc/ba;
.super Lc/q;
.source "SourceFile"


# instance fields
.field public final l:I


# direct methods
.method public synthetic constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    iput p2, p0, Lc/ba;->l:I

    invoke-direct {p0, p1}, Lc/q;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final b()Lc/q;
    .locals 1

    iget v0, p0, Lc/ba;->l:I

    if-eqz v0, :cond_0

    invoke-super {p0}, Lc/q;->b()Lc/q;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final c()Lc/q;
    .locals 1

    iget v0, p0, Lc/ba;->l:I

    if-eqz v0, :cond_0

    invoke-super {p0}, Lc/q;->c()Lc/q;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final j(Lc/e;)V
    .locals 2

    iget v0, p0, Lc/ba;->l:I

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->j()Lc/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/s;->e(Lc/q;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->i()Lc/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/s;->e(Lc/q;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
