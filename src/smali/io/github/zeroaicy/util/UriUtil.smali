.class public Lio/github/zeroaicy/util/UriUtil;
.super Ljava/lang/Object;
.source "UriUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 95
    const-string v0, "_data"

    .line 100
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object v0, v4, p0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_34

    if-eqz p0, :cond_2e

    .line 102
    :try_start_17
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 103
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 104
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_2b

    if-eqz p0, :cond_2a

    .line 109
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2a
    return-object p1

    :catchall_2b
    move-exception p1

    move-object v1, p0

    goto :goto_36

    :cond_2e
    if-eqz p0, :cond_33

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_33
    return-object v1

    :catchall_34
    move-exception p0

    move-object p1, p0

    :goto_36
    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_3b
    throw p1
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 7

    .line 24
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9d

    .line 26
    invoke-static {p1}, Lio/github/zeroaicy/util/UriUtil;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v0

    const-string v2, ":"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3e

    .line 27
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 29
    aget-object p1, p0, v4

    .line 31
    const-string v0, "primary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :cond_3e
    invoke-static {p1}, Lio/github/zeroaicy/util/UriUtil;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 37
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 38
    nop

    .line 39
    const-string v0, "content://downloads/public_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 38
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 41
    invoke-static {p0, p1, v1, v1}, Lio/github/zeroaicy/util/UriUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 42
    :cond_60
    invoke-static {p1}, Lio/github/zeroaicy/util/UriUtil;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 44
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 46
    aget-object v0, p1, v4

    .line 49
    const-string v2, "image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 50
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_90

    .line 51
    :cond_7b
    const-string v2, "video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 52
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_90

    .line 53
    :cond_86
    const-string v2, "audio"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 54
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 58
    :cond_90
    :goto_90
    aget-object p1, p1, v3

    .line 62
    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v4

    const-string p1, "_id=?"

    invoke-static {p0, v1, p1, v0}, Lio/github/zeroaicy/util/UriUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 64
    :cond_9d
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 66
    invoke-static {p1}, Lio/github/zeroaicy/util/UriUtil;->isGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 67
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 70
    :cond_b4
    invoke-static {p0, p1, v1, v1}, Lio/github/zeroaicy/util/UriUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 71
    :cond_b9
    const-string p0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ca

    .line 73
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ca
    return-object v1
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 128
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 120
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isGooglePhotosUri(Landroid/net/Uri;)Z
    .registers 2

    .line 144
    const-string v0, "com.google.android.apps.photos.content"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 136
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
