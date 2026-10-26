.class public final Lc/br;
.super Lc/t;
.source "SourceFile"


# instance fields
.field public q:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lc/t;-><init>()V

    iput-object p1, p0, Lc/br;->q:[B

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .locals 2

    iget-object v0, p0, Lc/br;->q:[B

    if-eqz v0, :cond_0

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lc/q;->g(I[B)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lc/t;->j()Lc/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/s;->e(Lc/q;)V

    goto :goto_0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lc/br;->q:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lc/br;->q:[B

    array-length v1, v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lc/t;->j()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->f()I

    move-result v0

    goto :goto_0
.end method

.method public final i()Lc/s;
    .locals 1

    iget-object v0, p0, Lc/br;->q:[B

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/br;->r()V

    :cond_0
    invoke-super {p0}, Lc/t;->i()Lc/s;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lc/s;
    .locals 1

    iget-object v0, p0, Lc/br;->q:[B

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/br;->r()V

    :cond_0
    invoke-super {p0}, Lc/t;->j()Lc/s;

    move-result-object v0

    return-object v0
.end method

.method public final k(I)Lc/e;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/br;->q:[B

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/br;->r()V

    :cond_0
    invoke-super {p0, p1}, Lc/t;->k(I)Lc/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final o()Ljava/util/Enumeration;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc/br;->q:[B

    if-nez v1, :cond_0

    invoke-super {p0}, Lc/t;->o()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lc/bq;

    invoke-direct {v0, v1}, Lc/bq;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final p()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/br;->q:[B

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/br;->r()V

    :cond_0
    invoke-super {p0}, Lc/t;->p()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final r()V
    .locals 3

    new-instance v0, Lc/bq;

    iget-object v1, p0, Lc/br;->q:[B

    invoke-direct {v0, v1}, Lc/bq;-><init>([B)V

    :goto_0
    invoke-virtual {v0}, Lc/bq;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/t;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Lc/bq;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc/br;->q:[B

    return-void
.end method
