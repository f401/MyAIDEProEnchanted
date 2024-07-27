.class public Lsun/misc/Cache;
.super Ljava/util/Dictionary;
.source "Cache.java"


# instance fields
.field private count:I

.field private loadFactor:F

.field private table:[Lsun/misc/CacheEntry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 138
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 140
    const/16 v0, 0x65

    const/high16 v1, 0x3f400000    # 0.75f

    :try_start_0
    invoke-direct {p0, v0, v1}, Lsun/misc/Cache;->init(IF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 143
    new-instance v0, Ljava/lang/Error;

    const-string v1, "panic"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 129
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 130
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lsun/misc/Cache;->init(IF)V

    .line 131
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 3

    .line 120
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 121
    invoke-direct {p0, p1, p2}, Lsun/misc/Cache;->init(IF)V

    .line 122
    return-void
.end method

.method private init(IF)V
    .registers 7

    .line 100
    if-lez p1, :cond_0

    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    .line 103
    iput p2, p0, Lsun/misc/Cache;->loadFactor:F

    .line 104
    new-array v0, p1, [Lsun/misc/CacheEntry;

    iput-object v0, p0, Lsun/misc/Cache;->table:[Lsun/misc/CacheEntry;

    .line 105
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lsun/misc/Cache;->threshold:I

    .line 106
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public elements()Ljava/util/Enumeration;
    .registers 4

    monitor-enter p0

    .line 177
    :try_start_0
    new-instance v0, Lsun/misc/CacheEnumerator;

    iget-object v1, p0, Lsun/misc/Cache;->table:[Lsun/misc/CacheEntry;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/misc/CacheEnumerator;-><init>([Lsun/misc/CacheEntry;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lsun/misc/Cache;->table:[Lsun/misc/CacheEntry;

    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 190
    array-length v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    const v3, 0x7fffffff

    and-int/2addr v3, v1

    rem-int v2, v3, v2

    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 192
    :try_start_1
    iget v2, v0, Lsun/misc/CacheEntry;->hash:I

    if-ne v2, v1, :cond_0

    iget-object v2, v0, Lsun/misc/CacheEntry;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v0}, Lsun/misc/CacheEntry;->check()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    .line 196
    :goto_1
    return-object v0

    .line 191
    :cond_0
    :try_start_2
    iget-object v0, v0, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 196
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 158
    iget v0, p0, Lsun/misc/Cache;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 4

    monitor-enter p0

    .line 167
    :try_start_0
    new-instance v0, Lsun/misc/CacheEnumerator;

    iget-object v1, p0, Lsun/misc/Cache;->table:[Lsun/misc/CacheEntry;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsun/misc/CacheEnumerator;-><init>([Lsun/misc/CacheEntry;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    monitor-enter p0

    .line 244
    if-eqz p2, :cond_5

    .line 248
    :try_start_0
    iget-object v3, p0, Lsun/misc/Cache;->table:[Lsun/misc/CacheEntry;

    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 250
    const v1, 0x7fffffff

    and-int/2addr v1, v4

    array-length v2, v3

    rem-int v5, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    aget-object v2, v3, v5

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 253
    :try_start_1
    iget v6, v2, Lsun/misc/CacheEntry;->hash:I

    if-ne v6, v4, :cond_0

    iget-object v6, v2, Lsun/misc/CacheEntry;->key:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 254
    invoke-virtual {v2}, Lsun/misc/CacheEntry;->check()Ljava/lang/Object;

    move-result-object v0

    .line 255
    invoke-virtual {v2, p2}, Lsun/misc/CacheEntry;->setThing(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    monitor-exit p0

    .line 276
    :goto_1
    return-object v0

    .line 257
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lsun/misc/CacheEntry;->check()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v1, v2

    .line 252
    :cond_1
    iget-object v2, v2, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;

    goto :goto_0

    .line 261
    :cond_2
    iget v2, p0, Lsun/misc/Cache;->count:I

    iget v6, p0, Lsun/misc/Cache;->threshold:I

    if-lt v2, v6, :cond_3

    .line 263
    invoke-virtual {p0}, Lsun/misc/Cache;->rehash()V

    .line 264
    invoke-virtual {p0, p1, p2}, Lsun/misc/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    goto :goto_1

    .line 267
    :cond_3
    if-nez v1, :cond_4

    .line 268
    :try_start_3
    new-instance v1, Lsun/misc/CacheEntry;

    invoke-direct {v1}, Lsun/misc/CacheEntry;-><init>()V

    .line 269
    aget-object v2, v3, v5

    iput-object v2, v1, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    aput-object v1, v3, v5

    .line 271
    :try_start_4
    iget v2, p0, Lsun/misc/Cache;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsun/misc/Cache;->count:I

    .line 273
    :cond_4
    iput v4, v1, Lsun/misc/CacheEntry;->hash:I

    .line 274
    iput-object p1, v1, Lsun/misc/CacheEntry;->key:Ljava/lang/Object;

    .line 275
    invoke-virtual {v1, p2}, Lsun/misc/CacheEntry;->setThing(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    monitor-exit p0

    goto :goto_1

    .line 245
    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected rehash()V
    .registers 9

    .line 205
    iget-object v0, p0, Lsun/misc/Cache;->table:[Lsun/misc/CacheEntry;

    array-length v0, v0

    .line 206
    iget-object v3, p0, Lsun/misc/Cache;->table:[Lsun/misc/CacheEntry;

    .line 208
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v4, v1, 0x1

    .line 209
    new-array v5, v4, [Lsun/misc/CacheEntry;

    .line 211
    int-to-float v1, v4

    iget v2, p0, Lsun/misc/Cache;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lsun/misc/Cache;->threshold:I

    .line 212
    iput-object v5, p0, Lsun/misc/Cache;->table:[Lsun/misc/CacheEntry;

    .line 217
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_2

    .line 218
    aget-object v0, v3, v2

    :goto_1
    if-eqz v0, :cond_1

    .line 219
    iget-object v1, v0, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;

    .line 221
    invoke-virtual {v0}, Lsun/misc/CacheEntry;->check()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 222
    iget v6, v0, Lsun/misc/CacheEntry;->hash:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    rem-int/2addr v6, v4

    .line 223
    aget-object v7, v5, v6

    iput-object v7, v0, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;

    .line 224
    aput-object v0, v5, v6

    :goto_2
    move-object v0, v1

    .line 227
    goto :goto_1

    .line 226
    :cond_0
    iget v0, p0, Lsun/misc/Cache;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/misc/Cache;->count:I

    goto :goto_2

    :cond_1
    move v0, v2

    .line 227
    goto :goto_0

    .line 229
    :cond_2
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 v0, 0x0

    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v4, p0, Lsun/misc/Cache;->table:[Lsun/misc/CacheEntry;

    .line 287
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 288
    const v1, 0x7fffffff

    and-int/2addr v1, v5

    array-length v2, v4

    rem-int v6, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    aget-object v2, v4, v6

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 290
    :try_start_1
    iget v3, v2, Lsun/misc/CacheEntry;->hash:I

    if-ne v3, v5, :cond_1

    iget-object v3, v2, Lsun/misc/CacheEntry;->key:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    if-eqz v1, :cond_0

    .line 292
    iget-object v0, v2, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;

    iput-object v0, v1, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;

    .line 296
    :goto_1
    iget v0, p0, Lsun/misc/Cache;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/misc/Cache;->count:I

    .line 297
    invoke-virtual {v2}, Lsun/misc/CacheEntry;->check()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    .line 300
    :goto_2
    return-object v0

    .line 294
    :cond_0
    :try_start_2
    iget-object v0, v2, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;

    aput-object v0, v4, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 289
    :cond_1
    :try_start_3
    iget-object v3, v2, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    .line 300
    :cond_2
    monitor-exit p0

    goto :goto_2
.end method

.method public size()I
    .registers 2

    .line 151
    iget v0, p0, Lsun/misc/Cache;->count:I

    return v0
.end method
