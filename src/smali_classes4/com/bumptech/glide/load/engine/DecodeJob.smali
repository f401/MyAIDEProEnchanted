.class Lcom/bumptech/glide/load/engine/DecodeJob;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;,
        Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;,
        Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

.field private static final TAG:Ljava/lang/String; = "DecodeJob"


# instance fields
.field private final diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private final diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private final fetcher:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final fileOpener:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

.field private final height:I

.field private volatile isCancelled:Z

.field private final loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final priority:Lcom/bumptech/glide/Priority;

.field private final resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

.field private final transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TT;TZ;>;"
        }
    .end annotation
.end field

.field private final transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineKey;",
            "II",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TA;>;",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TA;TT;>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/Priority;",
            ")V"
        }
    .end annotation

    sget-object v11, Lcom/bumptech/glide/load/engine/DecodeJob;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineKey;",
            "II",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TA;>;",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TA;TT;>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    iput p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iput p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    iput-object p4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    iput-object p6, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->transformation:Lcom/bumptech/glide/load/Transformation;

    iput-object p7, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    iput-object p8, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    iput-object p9, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object p10, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    iput-object p11, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fileOpener:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fileOpener:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    return-object v0
.end method

.method private cacheAndDecodeSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    new-instance v2, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v3}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/EngineKey;->getOriginalKey()Lcom/bumptech/glide/load/Key;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    const-string v2, "DecodeJob"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "Wrote source to cache"

    invoke-direct {p0, v2, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    :cond_2c
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineKey;->getOriginalKey()Lcom/bumptech/glide/load/Key;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    const-string v3, "DecodeJob"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_49

    if-eqz v2, :cond_49

    const-string v3, "Decoded source from cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    :cond_49
    return-object v2
.end method

.method private decodeFromSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->cacheAndDecodeSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v0, p1, v1, v4}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    const-string v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "Decoded from source"

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    goto :goto_c
.end method

.method private decodeSource()Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "Fetched data"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    :cond_1a
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_2f

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    const/4 v0, 0x0

    :goto_24
    return-object v0

    :cond_25
    :try_start_25
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeFromSourceData(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2f

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    goto :goto_24

    :catchall_2f
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    throw v0
.end method

.method private loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v1}, Lcom/bumptech/glide/provider/DataLoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v1, v0, v2, v3}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_28

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->delete(Lcom/bumptech/glide/load/Key;)V

    goto :goto_d

    :catchall_28
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->delete(Lcom/bumptech/glide/load/Key;)V

    throw v0
.end method

.method private logWithTimeAndKey(Ljava/lang/String;J)V
    .registers 8

    const-string v0, "DecodeJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    goto :goto_3
.end method

.method private transform(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->transformation:Lcom/bumptech/glide/load/Transformation;

    iget v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v0, p1, v1, v2}, Lcom/bumptech/glide/load/Transformation;->transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    goto :goto_3
.end method

.method private transformEncodeAndTranscode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    const/4 v4, 0x2

    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->transform(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    const-string v3, "DecodeJob"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "Transformed resource from source"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    :cond_16
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->writeTransformedToCache(Lcom/bumptech/glide/load/engine/Resource;)V

    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    const-string v3, "DecodeJob"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string v3, "Transcoded transformed from source"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    :cond_2e
    return-object v2
.end method

.method private writeTransformedToCache(Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    new-instance v2, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadProvider:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v3}, Lcom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-interface {v3, v4, v2}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    const-string v2, "DecodeJob"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Wrote transformed from source to cache"

    invoke-direct {p0, v2, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    goto :goto_a
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    return-void
.end method

.method public decodeFromSource()Lcom/bumptech/glide/load/engine/Resource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeSource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->transformEncodeAndTranscode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public decodeResultFromCache()Lcom/bumptech/glide/load/engine/Resource;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    const-string v3, "DecodeJob"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v3, "Decoded transformed from cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    :cond_22
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v4

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    const-string v1, "DecodeJob"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "Transcoded transformed from cache"

    invoke-direct {p0, v1, v4, v5}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    goto :goto_a
.end method

.method public decodeSourceFromCache()Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->resultKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineKey;->getOriginalKey()Lcom/bumptech/glide/load/Key;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->loadFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    const-string v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "Decoded source from cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V

    :cond_26
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->transformEncodeAndTranscode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    goto :goto_9
.end method
