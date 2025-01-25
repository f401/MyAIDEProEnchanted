.class public Labcd/uw;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labcd/uw;->j6:Ljava/lang/Object;

    return-void
.end method

.method private static DW(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "backbone"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_12
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v1, "no_backup/backbone"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static DW(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_2a

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    new-instance v0, Ljava/io/File;

    const-string v2, "gone"

    invoke-static {p0, v2}, Labcd/uw;->j6(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    aget-object p1, p1, v1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_28} :catch_29

    return-object v0

    :catch_29
    move-exception p0

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j6(Landroid/content/Context;)Ljava/io/File;
    .registers 1

    invoke-static {p0}, Labcd/uw;->DW(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Labcd/uw;->j6(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Labcd/uw;->DW(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/uw;->j6(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Ljava/io/File;)Ljava/io/File;
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Labcd/uw;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1d

    monitor-exit v0

    return-object p0

    :cond_1d
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_22

    throw p0

    :cond_25
    :goto_25
    return-object p0
.end method
