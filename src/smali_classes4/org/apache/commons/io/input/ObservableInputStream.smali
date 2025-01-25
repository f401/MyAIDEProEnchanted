.class public Lorg/apache/commons/io/input/ObservableInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    }
.end annotation


# instance fields
.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/io/input/ObservableInputStream$Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/commons/io/input/ObservableInputStream$Observer;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_e

    :goto_4
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteClosed()V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteError(Ljava/io/IOException;)V

    goto :goto_9

    :catch_e
    move-exception v0

    goto :goto_4
.end method

.method public consume()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    return-void
.end method

.method protected getObservers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/io/input/ObservableInputStream$Observer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    return-object v0
.end method

.method protected noteClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->closed()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method protected noteDataByte(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->data(I)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method protected noteDataBytes([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->data([BII)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method protected noteError(Ljava/io/IOException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->error(Ljava/io/IOException;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method protected noteFinished()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->finished()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->read()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_17

    move-result v1

    :goto_6
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteError(Ljava/io/IOException;)V

    :goto_b
    return v1

    :cond_c
    const/4 v0, -0x1

    if-ne v1, v0, :cond_13

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteFinished()V

    goto :goto_b

    :cond_13
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ObservableInputStream;->noteDataByte(I)V

    goto :goto_b

    :catch_17
    move-exception v0

    goto :goto_6
.end method

.method public read([B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;->read([B)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_c

    move-result v1

    :goto_6
    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteError(Ljava/io/IOException;)V

    :cond_b
    :goto_b
    return v1

    :catch_c
    move-exception v0

    move v1, v2

    goto :goto_6

    :cond_f
    const/4 v0, -0x1

    if-ne v1, v0, :cond_16

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteFinished()V

    goto :goto_b

    :cond_16
    if-lez v1, :cond_b

    invoke-virtual {p0, p1, v2, v1}, Lorg/apache/commons/io/input/ObservableInputStream;->noteDataBytes([BII)V

    goto :goto_b
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->read([BII)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_19

    move-result v1

    :goto_6
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteError(Ljava/io/IOException;)V

    :cond_b
    :goto_b
    return v1

    :cond_c
    const/4 v0, -0x1

    if-ne v1, v0, :cond_13

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteFinished()V

    goto :goto_b

    :cond_13
    if-lez v1, :cond_b

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/io/input/ObservableInputStream;->noteDataBytes([BII)V

    goto :goto_b

    :catch_19
    move-exception v0

    goto :goto_6
.end method

.method public remove(Lorg/apache/commons/io/input/ObservableInputStream$Observer;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAllObservers()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
