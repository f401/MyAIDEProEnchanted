.class public final Lorg/xutils/cache/DiskCacheEntity;
.super Ljava/lang/Object;
.source "DiskCacheEntity.java"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "disk_cache"
.end annotation


# instance fields
.field private bytesContent:[B
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "bytesContent"
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "etag"
    .end annotation
.end field

.field private expires:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "expires"
    .end annotation
.end field

.field private hits:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "hits"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        isId = true
        name = "id"
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "key"
        property = "UNIQUE"
    .end annotation
.end field

.field private lastAccess:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "lastAccess"
    .end annotation
.end field

.field private lastModify:Ljava/util/Date;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "lastModify"
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "path"
    .end annotation
.end field

.field private textContent:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "textContent"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->expires:J

    .line 48
    return-void
.end method


# virtual methods
.method public getBytesContent()[B
    .registers 2

    .line 83
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->bytesContent:[B

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->expires:J

    return-wide v0
.end method

.method public getHits()J
    .registers 3

    .line 107
    iget-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->hits:J

    return-wide v0
.end method

.method public getId()J
    .registers 3

    .line 51
    iget-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->id:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAccess()J
    .registers 5

    .line 123
    iget-wide v0, p0, Lorg/xutils/cache/DiskCacheEntity;->lastAccess:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_c
    return-wide v0
.end method

.method public getLastModify()Ljava/util/Date;
    .registers 2

    .line 115
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->lastModify:Ljava/util/Date;

    return-object v0
.end method

.method getPath()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lorg/xutils/cache/DiskCacheEntity;->textContent:Ljava/lang/String;

    return-object v0
.end method

.method public setBytesContent([B)V
    .registers 2

    .line 87
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->bytesContent:[B

    .line 88
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->etag:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setExpires(J)V
    .registers 4

    .line 95
    iput-wide p1, p0, Lorg/xutils/cache/DiskCacheEntity;->expires:J

    .line 96
    return-void
.end method

.method public setHits(J)V
    .registers 4

    .line 111
    iput-wide p1, p0, Lorg/xutils/cache/DiskCacheEntity;->hits:J

    .line 112
    return-void
.end method

.method public setId(J)V
    .registers 4

    .line 55
    iput-wide p1, p0, Lorg/xutils/cache/DiskCacheEntity;->id:J

    .line 56
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->key:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setLastAccess(J)V
    .registers 4

    .line 127
    iput-wide p1, p0, Lorg/xutils/cache/DiskCacheEntity;->lastAccess:J

    .line 128
    return-void
.end method

.method public setLastModify(Ljava/util/Date;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->lastModify:Ljava/util/Date;

    .line 120
    return-void
.end method

.method setPath(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->path:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lorg/xutils/cache/DiskCacheEntity;->textContent:Ljava/lang/String;

    .line 80
    return-void
.end method
