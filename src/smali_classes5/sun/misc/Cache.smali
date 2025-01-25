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

    const/high16 v1, 0x3f400000  # 0.75f

    :try_start_7
    invoke-direct {p0, v0, v1}, Lsun/misc/Cache;->init(IF)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_a} :catch_b

    .line 144
    return-void

    .line 141
    :catch_b
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
    const/high16 v0, 0x3f400000  # 0.75f

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
    if-lez p1, :cond_15

    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_15

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
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public elements()Ljava/util/Enumeration;
    .registers 4

    monitor-enter p0

    .line 177
    :try_start_1
    new-instance v0, Lsun/misc/CacheEnumerator;

    iget-object v1, p0, Lsun/misc/Cache;->table:[Lsun/misc/CacheEntry;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/misc/CacheEnumerator;-><init>([Lsun/misc/CacheEntry;Z)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    monitor-enter p0

    .line 188
    :try_start_1
    iget-object v0, p0, Lsun/misc/Cache;->table:[Lsun/misc/CacheEntry;

    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 190
    array-length v2, v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2a

    .line 191
    const v3, 0x7fffffff

    and-int/2addr v3, v1

    rem-int v2, v3, v2

    aget-object v0, v0, v2

    :goto_10
    if-eqz v0, :cond_27

    .line 192
    :try_start_12
    iget v2, v0, Lsun/misc/CacheEntry;->hash:I

    if-ne v2, v1, :cond_24

    iget-object v2, v0, Lsun/misc/CacheEntry;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 193
    invoke-virtual {v0}, Lsun/misc/CacheEntry;->check()Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_2a

    move-result-object v0

    monitor-exit p0

    .line 196
    :goto_23
    return-object v0

    .line 191
    :cond_24
    :try_start_24
    iget-object v0, v0, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_2a

    goto :goto_10

    .line 196
    :cond_27
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_23

    .line 187
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 158
    iget v0, p0, Lsun/misc/Cache;->count:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 4

    monitor-enter p0

    .line 167
    :try_start_1
    new-instance v0, Lsun/misc/CacheEnumerator;

    iget-object v1, p0, Lsun/misc/Cache;->table:[Lsun/misc/CacheEntry;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsun/misc/CacheEnumerator;-><init>([Lsun/misc/CacheEntry;Z)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    monitor-enter p0

    .line 244
    if-eqz p2, :cond_60

    .line 248
    :try_start_4
    iget-object v3, p0, Lsun/misc/Cache;->table:[Lsun/misc/CacheEntry;

    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 250
    const v1, 0x7fffffff

    and-int/2addr v1, v4

    array-length v2, v3

    rem-int v5, v1, v2
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_66

    .line 252
    aget-object v2, v3, v5

    move-object v1, v0

    :goto_14
    if-eqz v2, :cond_35

    .line 253
    :try_start_16
    iget v6, v2, Lsun/misc/CacheEntry;->hash:I

    if-ne v6, v4, :cond_2b

    iget-object v6, v2, Lsun/misc/CacheEntry;->key:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 254
    invoke-virtual {v2}, Lsun/misc/CacheEntry;->check()Ljava/lang/Object;

    move-result-object v0

    .line 255
    invoke-virtual {v2, p2}, Lsun/misc/CacheEntry;->setThing(Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_66

    .line 256
    monitor-exit p0

    .line 276
    :goto_2a
    return-object v0

    .line 257
    :cond_2b
    :try_start_2b
    invoke-virtual {v2}, Lsun/misc/CacheEntry;->check()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_32

    move-object v1, v2

    .line 252
    :cond_32
    iget-object v2, v2, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;

    goto :goto_14

    .line 261
    :cond_35
    iget v2, p0, Lsun/misc/Cache;->count:I

    iget v6, p0, Lsun/misc/Cache;->threshold:I

    if-lt v2, v6, :cond_44

    .line 263
    invoke-virtual {p0}, Lsun/misc/Cache;->rehash()V

    .line 264
    invoke-virtual {p0, p1, p2}, Lsun/misc/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_2b .. :try_end_41} :catchall_66

    move-result-object v0

    monitor-exit p0

    goto :goto_2a

    .line 267
    :cond_44
    if-nez v1, :cond_57

    .line 268
    :try_start_46
    new-instance v1, Lsun/misc/CacheEntry;

    invoke-direct {v1}, Lsun/misc/CacheEntry;-><init>()V

    .line 269
    aget-object v2, v3, v5

    iput-object v2, v1, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_66

    .line 270
    aput-object v1, v3, v5

    .line 271
    :try_start_51
    iget v2, p0, Lsun/misc/Cache;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsun/misc/Cache;->count:I

    .line 273
    :cond_57
    iput v4, v1, Lsun/misc/CacheEntry;->hash:I

    .line 274
    iput-object p1, v1, Lsun/misc/CacheEntry;->key:Ljava/lang/Object;

    .line 275
    invoke-virtual {v1, p2}, Lsun/misc/CacheEntry;->setThing(Ljava/lang/Object;)V
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_66

    .line 276
    monitor-exit p0

    goto :goto_2a

    .line 245
    :cond_60
    :try_start_60
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_66

    .line 243
    :catchall_66
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
    :goto_14
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_3c

    .line 218
    aget-object v0, v3, v2

    :goto_1a
    if-eqz v0, :cond_3a

    .line 219
    iget-object v1, v0, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;

    .line 221
    invoke-virtual {v0}, Lsun/misc/CacheEntry;->check()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_33

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

    :goto_31
    move-object v0, v1

    .line 227
    goto :goto_1a

    .line 226
    :cond_33
    iget v0, p0, Lsun/misc/Cache;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/misc/Cache;->count:I

    goto :goto_31

    :cond_3a
    move v0, v2

    .line 227
    goto :goto_14

    .line 229
    :cond_3c
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 v0, 0x0

    monitor-enter p0

    .line 286
    :try_start_2
    iget-object v4, p0, Lsun/misc/Cache;->table:[Lsun/misc/CacheEntry;

    .line 287
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 288
    const v1, 0x7fffffff

    and-int/2addr v1, v5

    array-length v2, v4

    rem-int v6, v1, v2
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_37

    .line 289
    aget-object v2, v4, v6

    move-object v1, v0

    :goto_12
    if-eqz v2, :cond_3f

    .line 290
    :try_start_14
    iget v3, v2, Lsun/misc/CacheEntry;->hash:I

    if-ne v3, v5, :cond_3a

    iget-object v3, v2, Lsun/misc/CacheEntry;->key:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 291
    if-eqz v1, :cond_32

    .line 292
    iget-object v0, v2, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;

    iput-object v0, v1, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;

    .line 296
    :goto_26
    iget v0, p0, Lsun/misc/Cache;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/misc/Cache;->count:I

    .line 297
    invoke-virtual {v2}, Lsun/misc/CacheEntry;->check()Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_37

    move-result-object v0

    monitor-exit p0

    .line 300
    :goto_31
    return-object v0

    .line 294
    :cond_32
    :try_start_32
    iget-object v0, v2, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;

    aput-object v0, v4, v6
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_37

    goto :goto_26

    .line 285
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    .line 289
    :cond_3a
    :try_start_3a
    iget-object v3, v2, Lsun/misc/CacheEntry;->next:Lsun/misc/CacheEntry;
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_37

    move-object v1, v2

    move-object v2, v3

    goto :goto_12

    .line 300
    :cond_3f
    monitor-exit p0

    goto :goto_31
.end method

.method public size()I
    .registers 2

    .line 151
    iget v0, p0, Lsun/misc/Cache;->count:I

    return v0
.end method
