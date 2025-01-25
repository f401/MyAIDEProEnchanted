.class public Lcom/baidu/mobstat/CarUUID;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-string v0, "(\\w{32})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/CarUUID;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 56
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3c

    .line 114
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 117
    :try_start_9
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_37
    .catchall {:try_start_9 .. :try_end_e} :catchall_32

    .line 119
    const/16 p0, 0x400

    :try_start_10
    new-array p0, p0, [B

    .line 121
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 123
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 125
    sget-object p0, Lcom/baidu/mobstat/CarUUID;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_26} :catch_30
    .catchall {:try_start_10 .. :try_end_26} :catchall_2d

    if-eqz p0, :cond_29

    move-object v0, v3

    .line 131
    :cond_29
    invoke-static {v1}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2d
    move-exception p0

    move-object v0, v1

    goto :goto_33

    :catch_30
    move-exception p0

    goto :goto_39

    :catchall_32
    move-exception p0

    :goto_33
    invoke-static {v0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    throw p0

    :catch_37
    move-exception p0

    move-object v1, v0

    :goto_39
    invoke-static {v1}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    :cond_3c
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 88
    const-string v0, "libdueros_uuid.so"

    .line 92
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 93
    invoke-static {v2, p1}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/FileOutputStream;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 97
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 99
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x1c9

    invoke-static {v0, p1}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/File;I)Z

    move-result p1

    if-eqz p1, :cond_2e

    const/16 p1, 0x1e4

    invoke-static {p0, p1}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/File;I)Z

    move-result p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_37
    .catchall {:try_start_4 .. :try_end_2b} :catchall_32

    if-eqz p0, :cond_2e

    const/4 v1, 0x1

    .line 107
    :cond_2e
    :goto_2e
    invoke-static {v2}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    return v1

    :catchall_32
    move-exception p0

    invoke-static {v2}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    throw p0

    :catch_37
    move-exception p0

    goto :goto_2e
.end method

.method private static a(Ljava/io/File;I)Z
    .registers 2

    .line 157
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 p0, 0x1

    return p0

    :catch_9
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/io/FileOutputStream;Ljava/lang/String;)Z
    .registers 2

    .line 140
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 141
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    const/4 p0, 0x1

    return p0

    :catch_c
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 60
    const-string v0, "libdueros_uuid.so"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 62
    invoke-static {p0}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 71
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_11

    .line 75
    :cond_28
    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v3, "files"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v1, Ljava/io/File;

    const-string v3, "libdueros_uuid.so"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    invoke-static {v1}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    return-object v1

    :cond_3f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static optUUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 35
    invoke-static {p0}, Lcom/baidu/mobstat/CarUUID;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 40
    :cond_7
    invoke-static {p0}, Lcom/baidu/mobstat/CarUUID;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 42
    invoke-static {p0, v0}, Lcom/baidu/mobstat/CarUUID;->a(Landroid/content/Context;Ljava/lang/String;)Z

    return-object v0

    .line 46
    :cond_11
    invoke-static {p0}, Lcom/baidu/mobstat/CarUUID;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 48
    invoke-static {p0, v0}, Lcom/baidu/mobstat/CarUUID;->a(Landroid/content/Context;Ljava/lang/String;)Z

    return-object v0

    .line 52
    :cond_1b
    const-string p0, ""

    return-object p0
.end method
