.class public Lsun/misc/MetaIndex;
.super Ljava/lang/Object;
.source "MetaIndex.java"


# static fields
.field static final $assertionsDisabled:Z

.field private static volatile jarMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lsun/misc/MetaIndex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contents:[Ljava/lang/String;

.field private isClassOnlyJar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 130
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    if-eqz p1, :cond_0

    .line 260
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lsun/misc/MetaIndex;->contents:[Ljava/lang/String;

    .line 261
    iput-boolean p2, p0, Lsun/misc/MetaIndex;->isClassOnlyJar:Z

    .line 262
    return-void

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static forJar(Ljava/io/File;)Lsun/misc/MetaIndex;
    .registers 2

    .line 148
    invoke-static {}, Lsun/misc/MetaIndex;->getJarMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/MetaIndex;

    return-object v0
.end method

.method private static getJarMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lsun/misc/MetaIndex;",
            ">;"
        }
    .end annotation

    .line 265
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 266
    const-class v0, Lsun/misc/MetaIndex;

    monitor-enter v0

    .line 267
    :try_start_0
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    .line 270
    :cond_0
    const-class v0, Lsun/misc/MetaIndex;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_1
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    return-object v0

    .line 270
    :catchall_0
    move-exception v0

    :try_start_1
    const-class v1, Lsun/misc/MetaIndex;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static registerDirectory(Ljava/io/File;)V
    .registers 12

    const/16 v10, 0x21

    const/4 v1, 0x0

    const-class v0, Lsun/misc/MetaIndex;

    monitor-enter v0

    .line 163
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "meta-index"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 167
    const/4 v2, 0x0

    .line 170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-static {}, Lsun/misc/MetaIndex;->getJarMap()Ljava/util/Map;

    move-result-object v5

    .line 174
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v6

    .line 178
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    const-string v7, "% VERSION 2"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 181
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    const-class v0, Lsun/misc/MetaIndex;

    monitor-exit v0

    .line 227
    :goto_0
    return-void

    .line 184
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 185
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_3

    const/16 v9, 0x23

    if-eq v8, v9, :cond_3

    const/16 v9, 0x25

    if-eq v8, v9, :cond_1

    const/16 v9, 0x40

    if-eq v8, v9, :cond_3

    .line 210
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 222
    :catch_0
    move-exception v0

    .line 227
    :cond_2
    :goto_2
    const-class v0, Lsun/misc/MetaIndex;

    monitor-exit v0

    goto :goto_0

    .line 190
    :cond_3
    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 191
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lsun/misc/MetaIndex;

    invoke-direct {v2, v4, v0}, Lsun/misc/MetaIndex;-><init>(Ljava/util/List;Z)V

    invoke-interface {v5, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 198
    :cond_4
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_5

    .line 200
    const/4 v0, 0x1

    goto :goto_1

    .line 201
    :cond_5
    if-eqz v0, :cond_1

    move v0, v1

    .line 202
    goto :goto_1

    .line 215
    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 216
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lsun/misc/MetaIndex;

    invoke-direct {v2, v4, v0}, Lsun/misc/MetaIndex;-><init>(Ljava/util/List;Z)V

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 162
    :catchall_0
    move-exception v0

    const-class v1, Lsun/misc/MetaIndex;

    monitor-exit v1

    throw v0

    :cond_8
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public mayContain(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    .line 237
    iget-boolean v0, p0, Lsun/misc/MetaIndex;->isClassOnlyJar:Z

    if-eqz v0, :cond_1

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v1

    .line 241
    :cond_1
    iget-object v2, p0, Lsun/misc/MetaIndex;->contents:[Ljava/lang/String;

    move v0, v1

    .line 242
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 243
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    const/4 v1, 0x1

    goto :goto_0

    .line 242
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
