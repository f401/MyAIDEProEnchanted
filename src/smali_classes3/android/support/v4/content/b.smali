.class public Landroid/support/v4/content/b;
.super Ljava/lang/Object;


# static fields
.field private static DW:Landroid/util/TypedValue;

.field private static final j6:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/content/b;->j6:Ljava/lang/Object;

    return-void
.end method

.method public static final DW(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 v1, 0x10

    if-lt v0, v1, :cond_18

    :goto_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_18
    sget-object v0, Landroid/support/v4/content/b;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    sget-object v1, Landroid/support/v4/content/b;->DW:Landroid/util/TypedValue;

    if-nez v1, :cond_26

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    sput-object v1, Landroid/support/v4/content/b;->DW:Landroid/util/TypedValue;

    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Landroid/support/v4/content/b;->DW:Landroid/util/TypedValue;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    sget-object p1, Landroid/support/v4/content/b;->DW:Landroid/util/TypedValue;

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    monitor-exit v0

    goto :goto_f

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_36

    goto :goto_3a

    :goto_39
    throw p0

    :goto_3a
    goto :goto_39
.end method

.method public static final DW(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v1, "no_backup"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/support/v4/content/b;->j6(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static DW(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static FH(Landroid/content/Context;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static final j6(Landroid/content/Context;I)I
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    if-eqz p1, :cond_f

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "permission is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static j6(Ljava/io/File;)Ljava/io/File;
    .registers 3

    const-class v0, Landroid/support/v4/content/b;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_3c

    if-eqz v0, :cond_19

    const-class v0, Landroid/support/v4/content/b;

    monitor-exit v0

    return-object p0

    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create files subdir "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ContextCompat"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_3c

    const-class p0, Landroid/support/v4/content/b;

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_38
    const-class v0, Landroid/support/v4/content/b;

    monitor-exit v0

    return-object p0

    :catchall_3c
    move-exception p0

    const-class v0, Landroid/support/v4/content/b;

    monitor-exit v0

    throw p0
.end method

.method public static j6(Landroid/content/Context;)[Ljava/io/File;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method
