.class Lokhttp3/Cache$CacheResponseBody;
.super Lokhttp3/ResponseBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final bodySource:Lokio/BufferedSource;

.field private final contentLength:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final contentType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    iput-object p2, p0, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    new-instance v0, Lokhttp3/Cache$CacheResponseBody$1;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lokhttp3/Cache$CacheResponseBody$1;-><init>(Lokhttp3/Cache$CacheResponseBody;Lokio/Source;Lokhttp3/internal/cache/DiskLruCache$Snapshot;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$CacheResponseBody;->bodySource:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    :try_start_0
    iget-object v0, p0, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v0

    :goto_8
    return-wide v0

    :catch_9
    move-exception v0

    :cond_a
    const-wide/16 v0, -0x1

    goto :goto_8
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    iget-object v0, p0, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public source()Lokio/BufferedSource;
    .registers 2

    iget-object v0, p0, Lokhttp3/Cache$CacheResponseBody;->bodySource:Lokio/BufferedSource;

    return-object v0
.end method
