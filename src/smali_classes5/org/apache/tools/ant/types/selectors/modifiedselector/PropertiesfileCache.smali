.class public Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;
.super Ljava/lang/Object;
.source "PropertiesfileCache.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;


# instance fields
.field private cache:Ljava/util/Properties;

.field private cacheDirty:Z

.field private cacheLoaded:Z

.field private cachefile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    .line 66
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheLoaded:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheDirty:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    .line 66
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheLoaded:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheDirty:Z

    .line 91
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    .line 92
    return-void
.end method


# virtual methods
.method public delete()V
    .registers 2

    .line 173
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    .line 174
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheLoaded:Z

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheDirty:Z

    .line 177
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 186
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheLoaded:Z

    if-nez v0, :cond_7

    .line 187
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->load()V

    .line 190
    :cond_7
    :try_start_7
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_10} :catch_12

    move-result-object v0

    .line 192
    :goto_11
    return-object v0

    .line 191
    :catch_12
    move-exception v0

    .line 192
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getCachefile()Ljava/io/File;
    .registers 2

    .line 112
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public load()V
    .registers 5

    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 134
    :try_start_13
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_25} :catch_38

    .line 136
    :try_start_25
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_33

    .line 137
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_38

    .line 142
    :cond_2d
    :goto_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheLoaded:Z

    .line 143
    iput-boolean v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheDirty:Z

    .line 144
    return-void

    .line 134
    :catchall_33
    move-exception v0

    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3d

    :goto_37
    :try_start_37
    throw v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_38} :catch_38

    .line 137
    :catch_38
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    .line 134
    :catchall_3d
    move-exception v1

    goto :goto_37
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 203
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheDirty:Z

    .line 205
    return-void
.end method

.method public save()V
    .registers 5

    const/4 v3, 0x0

    .line 155
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheDirty:Z

    if-nez v0, :cond_6

    .line 168
    :goto_5
    return-void

    .line 158
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 159
    :try_start_16
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_3c

    .line 161
    :try_start_28
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_37

    .line 163
    :try_start_31
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_3c

    .line 167
    :cond_34
    :goto_34
    iput-boolean v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheDirty:Z

    goto :goto_5

    .line 159
    :catchall_37
    move-exception v0

    :try_start_38
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_41

    :goto_3b
    :try_start_3b
    throw v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3c} :catch_3c

    .line 163
    :catch_3c
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34

    .line 159
    :catchall_41
    move-exception v1

    goto :goto_3b
.end method

.method public setCachefile(Ljava/io/File;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 226
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    .line 227
    invoke-virtual {v1}, Ljava/util/Properties;->size()I

    move-result v1

    .line 226
    const-string v2, "<PropertiesfileCache:cachefile=%s;noOfEntries=%d>"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
