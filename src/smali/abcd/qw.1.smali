.class public Labcd/qw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/qw$a;
    }
.end annotation


# static fields
.field private static volatile DW:J

.field private static volatile FH:Z

.field private static volatile Hw:Ljava/lang/String;

.field private static volatile VH:Ljava/util/UUID;

.field private static volatile Zo:J

.field private static final gn:Ljava/lang/Object;

.field private static volatile j6:J

.field private static final tp:Labcd/tw;

.field private static final u7:Labcd/tw;

.field private static volatile v5:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labcd/qw;->gn:Ljava/lang/Object;

    new-instance v0, Labcd/tw;

    invoke-static {}, Labcd/qw;->Hw()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Labcd/tw;-><init>(Ljava/io/File;Z)V

    sput-object v0, Labcd/qw;->u7:Labcd/tw;

    new-instance v0, Labcd/tw;

    invoke-static {}, Labcd/qw;->Hw()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/tw;-><init>(Ljava/io/File;Z)V

    sput-object v0, Labcd/qw;->tp:Labcd/tw;

    return-void
.end method

.method public static DW()V
    .registers 2

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Labcd/qw;->gn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Labcd/qw;->Hw:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static FH()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Labcd/uw;->j6(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "sessionid.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static Hw()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Labcd/uw;->j6(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "sessionid.txt.lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static VH()V
    .registers 6

    invoke-static {}, Labcd/qw;->gn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SessionIds"

    const-string v1, "Session ID file may be outdated."

    invoke-static {v0, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Labcd/qw;->tp:Labcd/tw;

    invoke-virtual {v0}, Labcd/tw;->j6()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Labcd/qw;->FH()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    sput-wide v2, Labcd/qw;->DW:J

    invoke-static {}, Labcd/qw;->gn()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SessionIds"

    const-string v2, "Session ID file is outdated - touching"

    invoke-static {v1, v2}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-wide v2, Labcd/qw;->DW:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    sget-object v0, Labcd/qw;->tp:Labcd/tw;

    invoke-virtual {v0}, Labcd/tw;->DW()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not touch session file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    sget-object v1, Labcd/qw;->tp:Labcd/tw;

    invoke-virtual {v1}, Labcd/tw;->DW()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Error touching session ID file"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    sput-boolean v0, Labcd/qw;->FH:Z

    const/4 v0, 0x0

    sput-object v0, Labcd/qw;->v5:Ljava/util/UUID;

    goto :goto_0

    :cond_3
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Session file vanished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private static Zo()Z
    .registers 16

    const-wide/32 v14, 0xdbba0

    const-wide/16 v12, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "SessionIds"

    const-string v3, "Loading/updating session ID from/on disk"

    invoke-static {v2, v3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Labcd/qw;->FH()Ljava/io/File;

    move-result-object v2

    :try_start_0
    sget-object v3, Labcd/qw;->u7:Labcd/tw;

    invoke-virtual {v3}, Labcd/tw;->j6()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v3, v6, v12

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long v10, v6, v14

    cmp-long v3, v8, v10

    if-gez v3, :cond_0

    const-string v2, "SessionIds"

    const-string v3, "Session ID file on disk seems to be valid, loading from disk"

    invoke-static {v2, v3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Labcd/qw;->u7()V

    sput-wide v6, Labcd/qw;->DW:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    sget-object v2, Labcd/qw;->u7:Labcd/tw;

    invoke-virtual {v2}, Labcd/tw;->DW()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_1
    return v0

    :cond_0
    :try_start_3
    sget-object v3, Labcd/qw;->u7:Labcd/tw;

    invoke-virtual {v3}, Labcd/tw;->DW()V

    sget-object v3, Labcd/qw;->tp:Labcd/tw;

    invoke-virtual {v3}, Labcd/tw;->j6()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v3, v6, v12

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long v10, v14, v6

    cmp-long v3, v8, v10

    if-gez v3, :cond_1

    const-string v2, "SessionIds"

    const-string v3, "Session ID file on disk seems to be valid, loading from disk (2)"

    invoke-static {v2, v3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Labcd/qw;->u7()V

    sput-wide v6, Labcd/qw;->DW:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_2
    :try_start_5
    sget-object v2, Labcd/qw;->tp:Labcd/tw;

    invoke-virtual {v2}, Labcd/tw;->DW()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    move v3, v0

    :goto_3
    :try_start_6
    sget-object v0, Labcd/qw;->u7:Labcd/tw;

    invoke-virtual {v0}, Labcd/tw;->DW()V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v2

    move v0, v3

    :goto_4
    const-string v3, "Error reading, creating or updating session ID file"

    invoke-static {v3, v2}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-boolean v1, Labcd/qw;->FH:Z

    sput-object v4, Labcd/qw;->v5:Ljava/util/UUID;

    goto :goto_1

    :cond_1
    :try_start_7
    const-string v3, "SessionIds"

    const-string v5, "Session ID file on disk does not exist or is outdated - updating"

    invoke-static {v3, v5}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "tmp"

    const-string v5, "txt"

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-static {v3, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object v6

    :try_start_8
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    new-instance v8, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v8, v7, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :try_start_a
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    sput-object v3, Labcd/qw;->v5:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v5, v2, v12

    if-eqz v5, :cond_2

    sput-wide v2, Labcd/qw;->DW:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move v0, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move v3, v1

    :goto_5
    :try_start_e
    sget-object v0, Labcd/qw;->tp:Labcd/tw;

    invoke-virtual {v0}, Labcd/tw;->DW()V

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_3

    :cond_2
    :try_start_f
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Session file vanished after creation"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_3
    move-exception v2

    :try_start_10
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catchall_4
    move-exception v2

    move v3, v0

    goto :goto_5

    :cond_3
    :try_start_11
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not rename temp file over session ID file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :catchall_5
    move-exception v2

    move-object v3, v2

    move-object v5, v4

    :goto_6
    if-eqz v5, :cond_4

    :try_start_12
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :goto_7
    :try_start_13
    throw v3
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :catch_1
    move-exception v2

    :try_start_14
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :catchall_6
    move-exception v5

    move-object v3, v2

    :goto_8
    if-eqz v3, :cond_5

    :try_start_15
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :goto_9
    :try_start_16
    throw v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :catch_2
    move-exception v2

    :try_start_17
    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :catchall_7
    move-exception v3

    move-object v5, v2

    goto :goto_6

    :catch_3
    move-exception v2

    :try_start_18
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_8
    move-exception v2

    move-object v3, v4

    move-object v5, v2

    goto :goto_8

    :cond_4
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    goto :goto_7

    :catch_4
    move-exception v2

    :try_start_19
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto :goto_9

    :catch_5
    move-exception v2

    goto/16 :goto_4
.end method

.method private static gn()Z
    .registers 6

    sget-wide v0, Labcd/qw;->DW:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j6(JZ)Labcd/qw$a;
    .registers 9

    const-wide/32 v4, 0xdbba0

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    sget-wide v0, Labcd/qw;->Zo:J

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    sget-object v0, Labcd/qw;->VH:Ljava/util/UUID;

    if-nez v0, :cond_2

    :cond_0
    sput-wide p0, Labcd/qw;->Zo:J

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Labcd/qw;->VH:Ljava/util/UUID;

    new-instance v0, Labcd/qw$a;

    sget-object v1, Labcd/qw;->VH:Ljava/util/UUID;

    invoke-static {v1}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Labcd/qw$a;-><init>(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Labcd/qw$a;

    sget-object v1, Labcd/qw;->VH:Ljava/util/UUID;

    invoke-static {v1}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Labcd/qw$a;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {p2}, Labcd/qw;->j6(Z)Labcd/qw$a;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Labcd/qw$a;

    sget-object v1, Labcd/Aw;->j6:Ljava/util/UUID;

    invoke-static {v1}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Labcd/qw$a;-><init>(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static j6(Z)Labcd/qw$a;
    .registers 5

    sget-boolean v0, Labcd/qw;->FH:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Labcd/qw;->v5()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Labcd/qw;->gn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Labcd/qw;->Zo()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Labcd/qw;->j6:J

    :cond_1
    :goto_1
    invoke-static {}, Labcd/qw;->VH()V

    new-instance v1, Labcd/qw$a;

    sget-object v2, Labcd/qw;->v5:Ljava/util/UUID;

    invoke-static {v2}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/qw$a;-><init>(Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Labcd/qw;->j6:J

    goto :goto_1
.end method

.method public static j6()Ljava/lang/String;
    .registers 1

    sget-object v0, Labcd/qw;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method private static u7()V
    .registers 6

    const/4 v1, 0x0

    new-instance v4, Ljava/io/FileInputStream;

    invoke-static {}, Labcd/qw;->FH()Ljava/io/File;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v0, v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Labcd/qw;->v5:Ljava/util/UUID;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v0

    :goto_0
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :goto_2
    throw v0

    :catch_1
    move-exception v0

    :try_start_7
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_2
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v3

    move-object v2, v0

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_9
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_2
.end method

.method private static v5()Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Labcd/qw;->j6:J

    const-wide/32 v4, 0xdbba0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
