.class Lgroovyjarjarantlr/collections/impl/VectorEnumeration;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field DW:I

.field j6:Lgroovyjarjarantlr/collections/impl/Vector;


# virtual methods
.method public hasMoreElements()Z
    .registers 4

    iget-object v0, p0, Lgroovyjarjarantlr/collections/impl/VectorEnumeration;->j6:Lgroovyjarjarantlr/collections/impl/Vector;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lgroovyjarjarantlr/collections/impl/VectorEnumeration;->DW:I

    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/VectorEnumeration;->j6:Lgroovyjarjarantlr/collections/impl/Vector;

    iget v2, v2, Lgroovyjarjarantlr/collections/impl/Vector;->DW:I

    if-gt v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/collections/impl/VectorEnumeration;->j6:Lgroovyjarjarantlr/collections/impl/Vector;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lgroovyjarjarantlr/collections/impl/VectorEnumeration;->DW:I

    iget-object v2, p0, Lgroovyjarjarantlr/collections/impl/VectorEnumeration;->j6:Lgroovyjarjarantlr/collections/impl/Vector;

    iget v2, v2, Lgroovyjarjarantlr/collections/impl/Vector;->DW:I

    if-gt v1, v2, :cond_19

    iget-object v1, p0, Lgroovyjarjarantlr/collections/impl/VectorEnumeration;->j6:Lgroovyjarjarantlr/collections/impl/Vector;

    iget-object v1, v1, Lgroovyjarjarantlr/collections/impl/Vector;->j6:[Ljava/lang/Object;

    iget v2, p0, Lgroovyjarjarantlr/collections/impl/VectorEnumeration;->DW:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgroovyjarjarantlr/collections/impl/VectorEnumeration;->DW:I
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_21

    aget-object v1, v1, v2

    :try_start_17
    monitor-exit v0

    return-object v1

    :cond_19
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "VectorEnumerator"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_21

    throw v1
.end method
