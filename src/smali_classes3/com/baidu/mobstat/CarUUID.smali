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
    .registers 4

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
    .registers 7

    const/4 v0, 0x0

    .line 114
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    const/16 v1, 0x400

    :try_start_1
    new-array v3, v1, [B

    .line 121
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 123
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V

    .line 125
    sget-object v3, Lcom/baidu/mobstat/CarUUID;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 127
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 131
    :cond_0
    invoke-static {v2}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    .line 135
    :cond_1
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 131
    :goto_1
    invoke-static {v2}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v0, v2

    :goto_2
    invoke-static {v0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    throw v1

    .line 128
    :catch_1
    move-exception v1

    goto :goto_1

    .line 131
    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v3, 0x0

    const/16 v5, 0x15

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_0

    move v0, v1

    .line 92
    :goto_0
    const-string v4, "libdueros_uuid.so"

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 93
    :try_start_1
    invoke-static {v0, p1}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/FileOutputStream;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_2

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 97
    const-string v4, "libdueros_uuid.so"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 99
    new-instance v5, Ljava/io/File;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1c9

    invoke-static {v5, v3}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/File;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x1e4

    invoke-static {v4, v3}, Lcom/baidu/mobstat/CarUUID;->a(Ljava/io/File;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    :goto_1
    invoke-static {v0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    .line 110
    :goto_2
    return v2

    :cond_0
    move v0, v2

    .line 90
    goto :goto_0

    :cond_1
    move v2, v1

    .line 99
    goto :goto_1

    .line 107
    :cond_2
    invoke-static {v0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    :goto_3
    move v2, v1

    .line 110
    goto :goto_2

    .line 104
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 107
    :goto_4
    invoke-static {v0}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_5
    invoke-static {v3}, Lcom/baidu/mobstat/dp;->a(Ljava/io/Closeable;)V

    throw v1

    .line 104
    :catch_1
    move-exception v2

    goto :goto_4

    .line 107
    :catchall_1
    move-exception v1

    move-object v3, v0

    goto :goto_5
.end method

.method private static a(Ljava/io/File;I)Z
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    .line 152
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 165
    :goto_0
    return v0

    .line 157
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v1, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 165
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/io/FileOutputStream;Ljava/lang/String;)Z
    .registers 3

    .line 140
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 141
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 147
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

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
    .registers 6

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

    .line 79
    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static optUUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 35
    invoke-static {p0}, Lcom/baidu/mobstat/CarUUID;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-object v0

    .line 40
    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/CarUUID;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    invoke-static {p0, v0}, Lcom/baidu/mobstat/CarUUID;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p0}, Lcom/baidu/mobstat/CarUUID;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    invoke-static {p0, v0}, Lcom/baidu/mobstat/CarUUID;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 52
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
