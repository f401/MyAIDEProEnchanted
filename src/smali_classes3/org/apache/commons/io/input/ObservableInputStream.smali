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
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/commons/io/input/ObservableInputStream$Observer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteClosed()V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteError(Ljava/io/IOException;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public consume()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void
.end method

.method protected getObservers()Ljava/util/List;
    .locals 1
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->closed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected noteDataByte(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->data(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected noteDataBytes([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->data([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected noteError(Ljava/io/IOException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->error(Ljava/io/IOException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected noteFinished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->getObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->finished()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteError(Ljava/io/IOException;)V

    :goto_1
    return v1

    :cond_0
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteFinished()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ObservableInputStream;->noteDataByte(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteError(Ljava/io/IOException;)V

    :cond_0
    :goto_1
    return v1

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteFinished()V

    goto :goto_1

    :cond_2
    if-lez v1, :cond_0

    invoke-virtual {p0, p1, v2, v1}, Lorg/apache/commons/io/input/ObservableInputStream;->noteDataBytes([BII)V

    goto :goto_1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteError(Ljava/io/IOException;)V

    :cond_0
    :goto_1
    return v1

    :cond_1
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteFinished()V

    goto :goto_1

    :cond_2
    if-lez v1, :cond_0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/io/input/ObservableInputStream;->noteDataBytes([BII)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public remove(Lorg/apache/commons/io/input/ObservableInputStream$Observer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAllObservers()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
