.class public Lcom/bumptech/glide/provider/ChildLoadProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/provider/LoadProvider;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/LoadProvider",
        "<TA;TT;TZ;TR;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation
.end field

.field private encoder:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private final parent:Lcom/bumptech/glide/provider/LoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private sourceDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TZ;>;"
        }
    .end annotation
.end field

.field private sourceEncoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;"
        }
    .end annotation
.end field

.field private transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/provider/LoadProvider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->parent:Lcom/bumptech/glide/provider/LoadProvider;

    return-void
.end method


# virtual methods
.method public clone()Lcom/bumptech/glide/provider/ChildLoadProvider;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/provider/ChildLoadProvider",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/provider/ChildLoadProvider;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/provider/ChildLoadProvider;->clone()Lcom/bumptech/glide/provider/ChildLoadProvider;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->parent:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    goto :goto_6
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->parent:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v0

    goto :goto_6
.end method

.method public getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->parent:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    return-object v0
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->sourceDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->sourceDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->parent:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    goto :goto_6
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->parent:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v0

    goto :goto_6
.end method

.method public getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->parent:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v0

    goto :goto_6
.end method

.method public setCacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TZ;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    return-void
.end method

.method public setEncoder(Lcom/bumptech/glide/load/ResourceEncoder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TZ;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    return-void
.end method

.method public setSourceDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TZ;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->sourceDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    return-void
.end method

.method public setSourceEncoder(Lcom/bumptech/glide/load/Encoder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    return-void
.end method

.method public setTranscoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    return-void
.end method
