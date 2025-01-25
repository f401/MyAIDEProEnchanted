.class final Lcom/google/firebase/iid/X;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DW(Landroid/content/SharedPreferences;Ljava/lang/String;)J
    .registers 3

    const-string v0, "cre"

    invoke-static {p1, v0}, Lcom/google/firebase/iid/zzaw;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    :try_start_d
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_12

    return-wide p0

    :catch_12
    move-exception p0

    :cond_13
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static DW(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    invoke-static {p0}, Landroid/support/v4/content/b;->DW(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    const-string v0, "FirebaseInstanceId"

    const-string v1, "noBackupFilesDir doesn\'t exist, using regular files directory instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final FH(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/Y;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/X;->Hw(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/Y;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-direct {p0, p1, p2, v1}, Lcom/google/firebase/iid/X;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/Y;)V
    :try_end_a
    .catch Lcom/google/firebase/iid/d; {:try_start_1 .. :try_end_a} :catch_d

    return-object v1

    :cond_b
    move-object v1, v0

    goto :goto_e

    :catch_d
    move-exception v1

    :goto_e
    :try_start_e
    const-string v2, "com.google.android.gms.appid"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/firebase/iid/X;->j6(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/firebase/iid/Y;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/google/firebase/iid/X;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/Y;Z)Lcom/google/firebase/iid/Y;
    :try_end_1e
    .catch Lcom/google/firebase/iid/d; {:try_start_e .. :try_end_1e} :catch_1f

    return-object v2

    :catch_1f
    move-exception p1

    move-object v1, p1

    :cond_21
    if-nez v1, :cond_24

    return-object v0

    :cond_24
    throw v1
.end method

.method private final Hw(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/Y;
    .registers 6

    invoke-static {p1, p2}, Lcom/google/firebase/iid/X;->v5(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    :try_start_c
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/X;->j6(Ljava/io/File;)Lcom/google/firebase/iid/Y;

    move-result-object p1
    :try_end_10
    .catch Lcom/google/firebase/iid/d; {:try_start_c .. :try_end_10} :catch_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p2

    goto :goto_14

    :catch_13
    move-exception p2

    :goto_14
    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to read key from file, retrying: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :try_start_3f
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/X;->j6(Ljava/io/File;)Lcom/google/firebase/iid/Y;

    move-result-object p1
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_44

    return-object p1

    :catch_44
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "IID file exists, but failed to read from it: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/google/firebase/iid/d;

    invoke-direct {p2, p1}, Lcom/google/firebase/iid/d;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method private final j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/Y;Z)Lcom/google/firebase/iid/Y;
    .registers 13

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "Writing key to properties file"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const-string v3, "pub"

    invoke-static {p3}, Lcom/google/firebase/iid/Y;->j6(Lcom/google/firebase/iid/Y;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "pri"

    invoke-static {p3}, Lcom/google/firebase/iid/Y;->DW(Lcom/google/firebase/iid/Y;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/firebase/iid/Y;->FH(Lcom/google/firebase/iid/Y;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cre"

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/google/firebase/iid/X;->v5(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_37
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_41} :catch_b2

    :try_start_41
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_ab

    :try_start_45
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    const-wide/16 v4, 0x0

    if-eqz p4, :cond_8f

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_a2

    cmp-long p4, v6, v4

    if-lez p4, :cond_8f

    :try_start_54
    invoke-virtual {p1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {p1}, Lcom/google/firebase/iid/X;->j6(Ljava/nio/channels/FileChannel;)Lcom/google/firebase/iid/Y;

    move-result-object p3
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5b} :catch_66
    .catch Lcom/google/firebase/iid/d; {:try_start_54 .. :try_end_5b} :catch_64
    .catchall {:try_start_54 .. :try_end_5b} :catchall_a2

    if-eqz p1, :cond_60

    :try_start_5d
    invoke-static {p2, p1}, Lcom/google/firebase/iid/X;->j6(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_ab

    :cond_60
    :try_start_60
    invoke-static {p2, v3}, Lcom/google/firebase/iid/X;->j6(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_b2

    return-object p3

    :catch_64
    move-exception p4

    goto :goto_67

    :catch_66
    move-exception p4

    :goto_67
    :try_start_67
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x40

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Tried reading key pair before writing new one, but failed with: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    invoke-virtual {p1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {p1}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object p4

    invoke-virtual {v2, p4, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_67 .. :try_end_99} :catchall_a2

    if-eqz p1, :cond_9e

    :try_start_9b
    invoke-static {p2, p1}, Lcom/google/firebase/iid/X;->j6(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_ab

    :cond_9e
    :try_start_9e
    invoke-static {p2, v3}, Lcom/google/firebase/iid/X;->j6(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_b2

    return-object p3

    :catchall_a2
    move-exception p3

    :try_start_a3
    throw p3
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a4

    :catchall_a4
    move-exception p4

    if-eqz p1, :cond_aa

    :try_start_a7
    invoke-static {p3, p1}, Lcom/google/firebase/iid/X;->j6(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V

    :cond_aa
    throw p4
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_ab

    :catchall_ab
    move-exception p1

    :try_start_ac
    throw p1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ad

    :catchall_ad
    move-exception p3

    :try_start_ae
    invoke-static {p1, v3}, Lcom/google/firebase/iid/X;->j6(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V

    throw p3
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b2} :catch_b2

    :catch_b2
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 p4, p4, 0x15

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Failed to write key: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private static j6(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/firebase/iid/Y;
    .registers 5

    const-string v0, "|P|"

    invoke-static {p1, v0}, Lcom/google/firebase/iid/zzaw;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "|K|"

    invoke-static {p1, v2}, Lcom/google/firebase/iid/zzaw;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_27

    if-nez v2, :cond_1a

    goto :goto_27

    :cond_1a
    new-instance v1, Lcom/google/firebase/iid/Y;

    invoke-static {v0, v2}, Lcom/google/firebase/iid/X;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/firebase/iid/X;->DW(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    move-result-wide p0

    invoke-direct {v1, v0, p0, p1}, Lcom/google/firebase/iid/Y;-><init>(Ljava/security/KeyPair;J)V

    :cond_27
    :goto_27
    return-object v1
.end method

.method private final j6(Ljava/io/File;)Lcom/google/firebase/iid/Y;
    .registers 9

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_2c

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x1

    move-object v1, p1

    :try_start_12
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    invoke-static {p1}, Lcom/google/firebase/iid/X;->j6(Ljava/nio/channels/FileChannel;)Lcom/google/firebase/iid/Y;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_23

    const/4 v2, 0x0

    if-eqz p1, :cond_1f

    :try_start_1c
    invoke-static {v2, p1}, Lcom/google/firebase/iid/X;->j6(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2c

    :cond_1f
    invoke-static {v2, v0}, Lcom/google/firebase/iid/X;->j6(Ljava/lang/Throwable;Ljava/io/FileInputStream;)V

    return-object v1

    :catchall_23
    move-exception v1

    :try_start_24
    throw v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v2

    if-eqz p1, :cond_2b

    :try_start_28
    invoke-static {v1, p1}, Lcom/google/firebase/iid/X;->j6(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V

    :cond_2b
    throw v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p1

    :try_start_2d
    throw p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v1

    invoke-static {p1, v0}, Lcom/google/firebase/iid/X;->j6(Ljava/lang/Throwable;Ljava/io/FileInputStream;)V

    throw v1
.end method

.method private static j6(Ljava/nio/channels/FileChannel;)Lcom/google/firebase/iid/Y;
    .registers 4

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-static {p0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string p0, "pub"

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pri"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_37

    if-eqz v1, :cond_37

    invoke-static {p0, v1}, Lcom/google/firebase/iid/X;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object p0

    :try_start_20
    const-string v1, "cre"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2a} :catch_30

    new-instance v2, Lcom/google/firebase/iid/Y;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/iid/Y;-><init>(Ljava/security/KeyPair;J)V

    return-object v2

    :catch_30
    move-exception p0

    new-instance v0, Lcom/google/firebase/iid/d;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/d;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_37
    new-instance p0, Lcom/google/firebase/iid/d;

    const-string v0, "Invalid properties file"

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;
    .registers 4

    const/16 v0, 0x8

    :try_start_2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_a} :catch_55

    :try_start_a
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    new-instance p1, Ljava/security/KeyPair;

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_27
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_a .. :try_end_27} :catch_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_27} :catch_28

    return-object p1

    :catch_28
    move-exception p0

    goto :goto_2b

    :catch_2a
    move-exception p0

    :goto_2b
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x13

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid key stored "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "FirebaseInstanceId"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/firebase/iid/d;

    invoke-direct {p1, p0}, Lcom/google/firebase/iid/d;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_55
    move-exception p0

    new-instance p1, Lcom/google/firebase/iid/d;

    invoke-direct {p1, p0}, Lcom/google/firebase/iid/d;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method static j6(Landroid/content/Context;)V
    .registers 6

    invoke-static {p0}, Lcom/google/firebase/iid/X;->DW(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_20

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.InstanceId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_20
    return-void
.end method

.method private final j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/Y;)V
    .registers 6

    const-string v0, "com.google.android.gms.appid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    :try_start_7
    invoke-static {p1, p2}, Lcom/google/firebase/iid/X;->j6(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/firebase/iid/Y;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/firebase/iid/Y;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catch Lcom/google/firebase/iid/d; {:try_start_7 .. :try_end_f} :catch_12

    if-eqz v0, :cond_13

    return-void

    :catch_12
    move-exception v0

    :cond_13
    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "Writing key to shared preferences"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "|P|"

    invoke-static {p2, v0}, Lcom/google/firebase/iid/zzaw;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/google/firebase/iid/Y;->j6(Lcom/google/firebase/iid/Y;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "|K|"

    invoke-static {p2, v0}, Lcom/google/firebase/iid/zzaw;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/google/firebase/iid/Y;->DW(Lcom/google/firebase/iid/Y;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "cre"

    invoke-static {p2, v0}, Lcom/google/firebase/iid/zzaw;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/google/firebase/iid/Y;->FH(Lcom/google/firebase/iid/Y;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static synthetic j6(Ljava/lang/Throwable;Ljava/io/FileInputStream;)V
    .registers 2

    if-eqz p0, :cond_b

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p1

    invoke-static {p0, p1}, Labcd/Hx;->j6(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method private static synthetic j6(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V
    .registers 2

    if-eqz p0, :cond_b

    :try_start_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p1

    invoke-static {p0, p1}, Labcd/Hx;->j6(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method private static synthetic j6(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    .registers 2

    if-eqz p0, :cond_b

    :try_start_2
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p1

    invoke-static {p0, p1}, Labcd/Hx;->j6(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method private static v5(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "com.google.InstanceId.properties"

    goto :goto_35

    :cond_9
    :try_start_9
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v0, 0xb

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x21

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "com.google.InstanceId_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".properties"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_35
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_35} :catch_3f

    :goto_35
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/firebase/iid/X;->DW(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :catch_3f
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method final DW(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/Y;
    .registers 8

    new-instance v0, Lcom/google/firebase/iid/Y;

    invoke-static {}, Lcom/google/firebase/iid/c;->j6()Ljava/security/KeyPair;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/iid/Y;-><init>(Ljava/security/KeyPair;J)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/firebase/iid/X;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/Y;Z)Lcom/google/firebase/iid/Y;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "FirebaseInstanceId"

    if-eqz v1, :cond_29

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/Y;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "Loaded key after generating new one, using loaded one"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-object v1

    :cond_29
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "Generated new key"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/iid/X;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/Y;)V

    return-object v0
.end method

.method final j6(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/Y;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/X;->FH(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/Y;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/iid/X;->DW(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/Y;

    move-result-object p1

    return-object p1
.end method
