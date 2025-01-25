.class public final Lc/br;
.super Lc/t;
.source "SourceFile"


# instance fields
.field public q:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lc/t;-><init>()V

    iput-object p1, p0, Lc/br;->q:[B

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .registers 4

    iget-object v0, p0, Lc/br;->q:[B

    if-eqz v0, :cond_a

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lc/q;->g(I[B)V

    goto :goto_11

    :cond_a
    invoke-super {p0}, Lc/t;->j()Lc/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/s;->e(Lc/q;)V

    :goto_11
    return-void
.end method

.method public final f()I
    .registers 3

    iget-object v0, p0, Lc/br;->q:[B

    if-eqz v0, :cond_10

    array-length v0, v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lc/br;->q:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_10
    invoke-super {p0}, Lc/t;->j()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->f()I

    move-result v0

    return v0
.end method

.method public final i()Lc/s;
    .registers 2

    iget-object v0, p0, Lc/br;->q:[B

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lc/br;->r()V

    :cond_7
    invoke-super {p0}, Lc/t;->i()Lc/s;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lc/s;
    .registers 2

    iget-object v0, p0, Lc/br;->q:[B

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lc/br;->r()V

    :cond_7
    invoke-super {p0}, Lc/t;->j()Lc/s;

    move-result-object v0

    return-object v0
.end method

.method public final k(I)Lc/e;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/br;->q:[B

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lc/br;->r()V

    :cond_8
    invoke-super {p0, p1}, Lc/t;->k(I)Lc/e;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object p1

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final o()Ljava/util/Enumeration;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/br;->q:[B

    if-nez v0, :cond_b

    invoke-super {p0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_12

    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    new-instance v1, Lc/bq;

    invoke-direct {v1, v0}, Lc/bq;-><init>([B)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v1

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final p()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/br;->q:[B

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lc/br;->r()V

    :cond_8
    invoke-super {p0}, Lc/t;->p()I

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final r()V
    .registers 4

    new-instance v0, Lc/bq;

    iget-object v1, p0, Lc/br;->q:[B

    invoke-direct {v0, v1}, Lc/bq;-><init>([B)V

    :goto_7
    invoke-virtual {v0}, Lc/bq;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lc/t;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Lc/bq;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lc/br;->q:[B

    return-void
.end method
