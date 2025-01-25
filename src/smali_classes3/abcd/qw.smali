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

    :try_start_11
    sput-object v0, Labcd/qw;->Hw:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_15

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
    .registers 8

    invoke-static {}, Labcd/qw;->gn()Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "Session ID file may be outdated."

    const-string v1, "SessionIds"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    sget-object v0, Labcd/qw;->tp:Labcd/tw;

    invoke-virtual {v0}, Labcd/tw;->j6()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_55

    :try_start_12
    invoke-static {}, Labcd/qw;->FH()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_46

    sput-wide v3, Labcd/qw;->DW:J

    invoke-static {}, Labcd/qw;->gn()Z

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "Session ID file is outdated - touching"

    invoke-static {v1, v3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    move-result v1

    if-eqz v1, :cond_3a

    sput-wide v3, Labcd/qw;->DW:J

    goto :goto_42

    :cond_3a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not touch session file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_42
    .catchall {:try_start_12 .. :try_end_42} :catchall_4e

    :cond_42
    :goto_42
    :try_start_42
    invoke-virtual {v0}, Labcd/tw;->DW()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_55

    goto :goto_61

    :cond_46
    :try_start_46
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Session file vanished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v0

    :try_start_4f
    sget-object v1, Labcd/qw;->tp:Labcd/tw;

    invoke-virtual {v1}, Labcd/tw;->DW()V

    throw v0
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_55} :catch_55

    :catch_55
    move-exception v0

    const-string v1, "Error touching session ID file"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    sput-boolean v0, Labcd/qw;->FH:Z

    const/4 v0, 0x0

    sput-object v0, Labcd/qw;->v5:Ljava/util/UUID;

    :cond_61
    :goto_61
    return-void
.end method

.method private static Zo()Z
    .registers 16

    const-string v0, "Loading/updating session ID from/on disk"

    const-string v1, "SessionIds"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Labcd/qw;->FH()Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_d
    sget-object v4, Labcd/qw;->u7:Labcd/tw;

    invoke-virtual {v4}, Labcd/tw;->j6()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_eb

    :try_start_12
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/32 v7, 0xdbba0

    const-wide/16 v9, 0x0

    cmp-long v11, v5, v9

    if-eqz v11, :cond_34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    add-long v13, v5, v7

    cmp-long v15, v11, v13

    if-gez v15, :cond_34

    const-string v0, "Session ID file on disk seems to be valid, loading from disk"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Labcd/qw;->u7()V

    sput-wide v5, Labcd/qw;->DW:J

    goto :goto_a9

    :cond_34
    invoke-virtual {v4}, Labcd/tw;->DW()V

    sget-object v5, Labcd/qw;->tp:Labcd/tw;

    invoke-virtual {v5}, Labcd/tw;->j6()V
    :try_end_3c
    .catchall {:try_start_12 .. :try_end_3c} :catchall_e4

    :try_start_3c
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    cmp-long v6, v11, v9

    if-eqz v6, :cond_58

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    add-long/2addr v7, v11

    cmp-long v6, v13, v7

    if-gez v6, :cond_58

    const-string v0, "Session ID file on disk seems to be valid, loading from disk (2)"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Labcd/qw;->u7()V

    sput-wide v11, Labcd/qw;->DW:J

    goto :goto_a6

    :cond_58
    const-string v6, "Session ID file on disk does not exist or is outdated - updating"

    invoke-static {v1, v6}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tmp"

    const-string v6, "txt"

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v1, v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_69
    .catchall {:try_start_3c .. :try_end_69} :catchall_dd

    :try_start_69
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_d8

    :try_start_6e
    new-instance v7, Ljava/io/OutputStreamWriter;

    const-string v8, "UTF-8"

    invoke-direct {v7, v6, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_cc

    :try_start_75
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/FileDescriptor;->sync()V
    :try_end_8a
    .catchall {:try_start_75 .. :try_end_8a} :catchall_c0

    :try_start_8a
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_cc

    :try_start_8d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_b8

    sput-object v8, Labcd/qw;->v5:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v0, v6, v9

    if-eqz v0, :cond_b0

    sput-wide v6, Labcd/qw;->DW:J
    :try_end_a2
    .catchall {:try_start_8d .. :try_end_a2} :catchall_d8

    :try_start_a2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_ad

    const/4 v3, 0x1

    :goto_a6
    :try_start_a6
    invoke-virtual {v5}, Labcd/tw;->DW()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_e4

    :goto_a9
    :try_start_a9
    invoke-virtual {v4}, Labcd/tw;->DW()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_eb

    goto :goto_f6

    :catchall_ad
    move-exception v0

    const/4 v3, 0x1

    goto :goto_de

    :cond_b0
    :try_start_b0
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Session file vanished after creation"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b8
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Could not rename temp file over session ID file"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c0
    .catchall {:try_start_b0 .. :try_end_c0} :catchall_d8

    :catchall_c0
    move-exception v0

    :try_start_c1
    throw v0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c2

    :catchall_c2
    move-exception v4

    :try_start_c3
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_c7

    goto :goto_cb

    :catchall_c7
    move-exception v5

    :try_start_c8
    invoke-static {v0, v5}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_cb
    throw v4
    :try_end_cc
    .catchall {:try_start_c8 .. :try_end_cc} :catchall_cc

    :catchall_cc
    move-exception v0

    :try_start_cd
    throw v0
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_ce

    :catchall_ce
    move-exception v4

    :try_start_cf
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d3

    goto :goto_d7

    :catchall_d3
    move-exception v5

    :try_start_d4
    invoke-static {v0, v5}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_d7
    throw v4
    :try_end_d8
    .catchall {:try_start_d4 .. :try_end_d8} :catchall_d8

    :catchall_d8
    move-exception v0

    :try_start_d9
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
    :try_end_dd
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_dd

    :catchall_dd
    move-exception v0

    :goto_de
    :try_start_de
    sget-object v1, Labcd/qw;->tp:Labcd/tw;

    invoke-virtual {v1}, Labcd/tw;->DW()V

    throw v0
    :try_end_e4
    .catchall {:try_start_de .. :try_end_e4} :catchall_e4

    :catchall_e4
    move-exception v0

    :try_start_e5
    sget-object v1, Labcd/qw;->u7:Labcd/tw;

    invoke-virtual {v1}, Labcd/tw;->DW()V

    throw v0
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_eb} :catch_eb

    :catch_eb
    move-exception v0

    const-string v1, "Error reading, creating or updating session ID file"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-boolean v2, Labcd/qw;->FH:Z

    const/4 v0, 0x0

    sput-object v0, Labcd/qw;->v5:Ljava/util/UUID;

    :goto_f6
    return v3
.end method

.method private static gn()Z
    .registers 6

    sget-wide v0, Labcd/qw;->DW:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static j6(JZ)Labcd/qw$a;
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/32 v3, 0xdbba0

    cmp-long v5, v0, v3

    if-lez v5, :cond_43

    sget-wide v0, Labcd/qw;->Zo:J

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long p2, v0, v3

    if-gtz p2, :cond_2e

    sget-object p2, Labcd/qw;->VH:Ljava/util/UUID;

    if-nez p2, :cond_22

    goto :goto_2e

    :cond_22
    new-instance p0, Labcd/qw$a;

    sget-object p1, Labcd/qw;->VH:Ljava/util/UUID;

    invoke-static {p1}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Labcd/qw$a;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :cond_2e
    :goto_2e
    sput-wide p0, Labcd/qw;->Zo:J

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    sput-object p0, Labcd/qw;->VH:Ljava/util/UUID;

    new-instance p0, Labcd/qw$a;

    sget-object p1, Labcd/qw;->VH:Ljava/util/UUID;

    invoke-static {p1}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Labcd/qw$a;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :cond_43
    invoke-static {p2}, Labcd/qw;->j6(Z)Labcd/qw$a;

    move-result-object p0

    if-eqz p0, :cond_4a

    goto :goto_55

    :cond_4a
    new-instance p0, Labcd/qw$a;

    sget-object p1, Labcd/Aw;->j6:Ljava/util/UUID;

    invoke-static {p1}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Labcd/qw$a;-><init>(Ljava/lang/String;Z)V

    :goto_55
    return-object p0
.end method

.method private static j6(Z)Labcd/qw$a;
    .registers 3

    sget-boolean v0, Labcd/qw;->FH:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-static {}, Labcd/qw;->v5()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Labcd/qw;->gn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    invoke-static {}, Labcd/qw;->Zo()Z

    move-result p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Labcd/qw;->j6:J

    goto :goto_27

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0

    :cond_1e
    if-eqz p0, :cond_26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Labcd/qw;->j6:J

    :cond_26
    const/4 p0, 0x0

    :goto_27
    invoke-static {}, Labcd/qw;->VH()V

    new-instance v0, Labcd/qw$a;

    sget-object v1, Labcd/qw;->v5:Ljava/util/UUID;

    invoke-static {v1}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Labcd/qw$a;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static j6()Ljava/lang/String;
    .registers 1

    sget-object v0, Labcd/qw;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method private static u7()V
    .registers 4

    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {}, Labcd/qw;->FH()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_9
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_3a

    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    sput-object v2, Labcd/qw;->v5:Ljava/util/UUID;
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1f} :catch_28
    .catchall {:try_start_15 .. :try_end_1f} :catchall_26

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_3a

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_26
    move-exception v2

    goto :goto_2f

    :catch_28
    move-exception v2

    :try_start_29
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_26

    :goto_2f
    :try_start_2f
    throw v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v3

    :try_start_31
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v1

    :try_start_36
    invoke-static {v2, v1}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_39
    throw v3
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v1

    :try_start_3b
    throw v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v2

    :try_start_3d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v0

    invoke-static {v1, v0}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_45
    throw v2
.end method

.method private static v5()Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Labcd/qw;->j6:J

    const-wide/32 v4, 0xdbba0

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
