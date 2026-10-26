.class public Lcom/baidu/mobstat/CarUUID;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "(\\w{32})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/CarUUID;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 56
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    const/16 v0, 0x400

    :try_start_1
    new-array v3, v0, [B

    .line 121
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 123
    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v0, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V

    .line 125
    sget-object v3, Lcom/baidu/mobstat/CarUUID;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 127
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    :goto_0
    invoke-static {v2}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_3
    invoke-static {v2}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    :cond_0
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 88
    :try_start_0
    const-string v0, "libdueros_uuid.so"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 93
    :try_start_1
    invoke-static {v0, p1}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/FileOutputStream;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 97
    const-string v3, "libdueros_uuid.so"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 99
    new-instance v4, Ljava/io/File;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1c9

    invoke-static {v4, v2}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/File;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1e4

    invoke-static {v3, v2}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/File;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 107
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_1
    invoke-static {v2}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    throw v1

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method

.method private static a(Ljava/io/File;I)Z
    .locals 1

    .line 157
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/io/FileOutputStream;Ljava/lang/String;)Z
    .locals 1

    .line 140
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 141
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "libdueros_uuid.so"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 71
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v4, "files"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/io/File;

    const-string v4, "libdueros_uuid.so"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    invoke-static {v0}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static optUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/baidu/mobstat/CarUUID;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-object v0

    .line 40
    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/CarUUID;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    invoke-static {p0, v0}, Lcom/baidu/mobstat/CarUUID;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p0}, Lcom/baidu/mobstat/CarUUID;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 48
    invoke-static {p0, v0}, Lcom/baidu/mobstat/CarUUID;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 52
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
