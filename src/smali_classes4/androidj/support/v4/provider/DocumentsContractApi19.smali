.class Landroidj/support/v4/provider/DocumentsContractApi19;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x13
.end annotation


# static fields
.field private static final FLAG_VIRTUAL_DOCUMENT:I = 0x200

.field private static final TAG:Ljava/lang/String; = "DocumentFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRead(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    invoke-static {p0, p1}, Landroidj/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_8
.end method

.method public static canWrite(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-static {p0, p1}, Landroidj/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "flags"

    invoke-static {p0, p1, v3, v0}, Landroidj/support/v4/provider/DocumentsContractApi19;->queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_20

    move v0, v1

    goto :goto_9

    :cond_20
    const-string v4, "vnd.android.document/directory"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_2e

    move v0, v1

    goto :goto_9

    :cond_2e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    and-int/lit8 v2, v3, 0x2

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_9
.end method

.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    throw v0

    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static exists(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_8
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "document_id"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_48
    .catchall {:try_start_8 .. :try_end_16} :catchall_42

    move-result-object v8

    :try_start_17
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_24
    .catchall {:try_start_17 .. :try_end_1a} :catchall_4a

    move-result v0

    if-lez v0, :cond_22

    move v0, v6

    :goto_1e
    invoke-static {v8}, Landroidj/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_21
    return v0

    :cond_22
    move v0, v7

    goto :goto_1e

    :catch_24
    move-exception v0

    :goto_25
    :try_start_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocumentFile"

    const-string v3, "Failed query: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_4a

    invoke-static {v8}, Landroidj/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move v0, v7

    goto :goto_21

    :catchall_42
    move-exception v0

    move-object v1, v8

    :goto_44
    invoke-static {v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_48
    move-exception v0

    goto :goto_25

    :catchall_4a
    move-exception v0

    move-object v1, v8

    goto :goto_44
.end method

.method public static getFlags(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 6

    const-string v0, "flags"

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Landroidj/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    const-string v0, "_display_name"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    const-string v0, "mime_type"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1}, Landroidj/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.document/directory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method

.method public static isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4

    const-string v0, "vnd.android.document/directory"

    invoke-static {p0, p1}, Landroidj/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 3

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static isFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4

    invoke-static {p0, p1}, Landroidj/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.document/directory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static isVirtual(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {p0, p1}, Landroidj/support/v4/provider/DocumentsContractApi19;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-static {p0, p1}, Landroidj/support/v4/provider/DocumentsContractApi19;->getFlags(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    const-wide/16 v4, 0x200

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static lastModified(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 6

    const-string v0, "last_modified"

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Landroidj/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static length(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 6

    const-string v0, "_size"

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Landroidj/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .registers 6

    int-to-long v0, p3

    invoke-static {p0, p1, p2, v0, v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J
    .registers 12

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_6
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_2d
    .catchall {:try_start_6 .. :try_end_12} :catchall_4a

    move-result-object v6

    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_53
    .catchall {:try_start_13 .. :try_end_24} :catchall_50

    move-result-wide p3

    invoke-static {v6}, Landroidj/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_28
    return-wide p3

    :cond_29
    invoke-static {v6}, Landroidj/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_28

    :catch_2d
    move-exception v0

    :goto_2e
    :try_start_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocumentFile"

    const-string v3, "Failed query: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_50

    invoke-static {v6}, Landroidj/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_28

    :catchall_4a
    move-exception v0

    move-object v1, v6

    :goto_4c
    invoke-static {v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catchall_50
    move-exception v0

    move-object v1, v6

    goto :goto_4c

    :catch_53
    move-exception v0

    goto :goto_2e
.end method

.method private static queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_6
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_2d
    .catchall {:try_start_6 .. :try_end_12} :catchall_4a

    move-result-object v6

    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_53
    .catchall {:try_start_13 .. :try_end_24} :catchall_50

    move-result-object p3

    invoke-static {v6}, Landroidj/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_28
    return-object p3

    :cond_29
    invoke-static {v6}, Landroidj/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_28

    :catch_2d
    move-exception v0

    :goto_2e
    :try_start_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocumentFile"

    const-string v3, "Failed query: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_50

    invoke-static {v6}, Landroidj/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_28

    :catchall_4a
    move-exception v1

    move-object v0, v6

    :goto_4c
    invoke-static {v0}, Landroidj/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    :catchall_50
    move-exception v1

    move-object v0, v6

    goto :goto_4c

    :catch_53
    move-exception v0

    goto :goto_2e
.end method
