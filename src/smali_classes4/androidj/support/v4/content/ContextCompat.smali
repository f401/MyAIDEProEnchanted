.class public Landroidj/support/v4/content/ContextCompat;
.super Ljava/lang/Object;


# static fields
.field private static final DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final DIR_OBB:Ljava/lang/String; = "obb"

.field private static final TAG:Ljava/lang/String; = "ContextCompat"

.field private static final sLock:Ljava/lang/Object;

.field private static sTempValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidj/support/v4/content/ContextCompat;->sLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .registers 7

    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    move-object v1, p0

    :goto_4
    if-ge v2, v3, :cond_1d

    aget-object v4, p1, v2

    if-nez v1, :cond_13

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_f
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_4

    :cond_13
    if-eqz v4, :cond_1b

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_f

    :cond_1b
    move-object v0, v1

    goto :goto_f

    :cond_1d
    return-object v1
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .param p0  # Landroid/content/Context;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    invoke-static {}, Landroidj/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Landroidj/support/v4/content/ContextCompatApi24;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static createFilesDir(Ljava/io/File;)Ljava/io/File;
    .registers 4

    const-class v0, Landroidj/support/v4/content/ContextCompat;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_37

    move-result v0

    if-eqz v0, :cond_19

    :cond_15
    :goto_15
    const-class v0, Landroidj/support/v4/content/ContextCompat;

    monitor-exit v0

    return-object p0

    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContextCompat"

    const-string v2, "Unable to create files subdir "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_19 .. :try_end_35} :catchall_37

    const/4 p0, 0x0

    goto :goto_15

    :catchall_37
    move-exception v0

    const-class v1, Landroidj/support/v4/content/ContextCompat;

    monitor-exit v1

    throw v0
.end method

.method public static getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroidj/support/v4/content/ContextCompatApi21;->getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "code_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroidj/support/v4/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    goto :goto_a
.end method

.method public static final getColor(Landroid/content/Context;I)I
    .registers 4
    .param p1  # I
        .annotation build Landroidj/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/ColorInt;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroidj/support/v4/content/ContextCompatApi23;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_a
.end method

.method public static final getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 4
    .param p1  # I
        .annotation build Landroidj/support/annotation/ColorRes;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroidj/support/v4/content/ContextCompatApi23;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a
.end method

.method public static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    invoke-static {}, Landroidj/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Landroidj/support/v4/content/ContextCompatApi24;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-eqz v1, :cond_19

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_19
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1  # I
        .annotation build Landroidj/support/annotation/DrawableRes;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroidj/support/v4/content/ContextCompatApi21;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/16 v1, 0x10

    if-lt v0, v1, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_18
    sget-object v1, Landroidj/support/v4/content/ContextCompat;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1b
    sget-object v0, Landroidj/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    if-nez v0, :cond_26

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Landroidj/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Landroidj/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    sget-object v0, Landroidj/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_3e

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public static getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroidj/support/v4/content/ContextCompatKitKat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_a
.end method

.method public static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroidj/support/v4/content/ContextCompatKitKat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_a
.end method

.method public static final getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroidj/support/v4/content/ContextCompatApi21;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "no_backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroidj/support/v4/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    goto :goto_a
.end method

.method public static getObbDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_d

    invoke-static {p0}, Landroidj/support/v4/content/ContextCompatKitKat;->getObbDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1b

    invoke-static {p0}, Landroidj/support/v4/content/ContextCompatHoneycomb;->getObbDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    move-object v1, v0

    :goto_16
    new-array v0, v5, [Ljava/io/File;

    aput-object v1, v0, v4

    goto :goto_c

    :cond_1b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v4

    const-string v2, "obb"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroidj/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v1, v0

    goto :goto_16
.end method

.method public static isDeviceProtectedStorage(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Landroidj/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Landroidj/support/v4/content/ContextCompatApi24;->isDeviceProtectedStorage(Landroid/content/Context;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidj/support/v4/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 6

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_b

    invoke-static {p0, p1, p2}, Landroidj/support/v4/content/ContextCompatJellybean;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_a
    return v0

    :cond_b
    const/16 v2, 0xb

    if-lt v1, v2, :cond_13

    invoke-static {p0, p1}, Landroidj/support/v4/content/ContextCompatHoneycomb;->startActivities(Landroid/content/Context;[Landroid/content/Intent;)V

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    invoke-static {p0, p1, p2}, Landroidj/support/v4/content/ContextCompatJellybean;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9
.end method
