.class public final synthetic Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m()I
    .registers 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic m(Landroid/content/pm/ApplicationInfo;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    return p0
.end method

.method public static bridge synthetic m(Lcom/termux/app/TermuxActivity;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)I
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/file/attribute/FileTime;->compareTo(Ljava/nio/file/attribute/FileTime;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/app/usage/StorageStats;)J
    .registers 3

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Landroid/content/pm/PackageInfo;)J
    .registers 3

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;
    .registers 4

    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/app/usage/StorageStatsManager;Ljava/util/UUID;I)Landroid/app/usage/StorageStats;
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/util/UUID;I)Landroid/app/usage/StorageStats;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/app/usage/StorageStatsManager;
    .registers 1

    check-cast p0, Landroid/app/usage/StorageStatsManager;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/termux/app/TermuxActivity;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/String;I)Landroid/text/Spanned;
    .registers 2

    invoke-static {p0, p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/view/Window;)Landroid/view/WindowInsetsController;
    .registers 1

    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/s1243808733/aide/application/App;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/App;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 1

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/io/File;)Ljava/nio/file/Path;
    .registers 1

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/nio/file/Path;
    .registers 1

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .registers 2

    invoke-static {p0, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .registers 3

    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 2

    invoke-static {p0, p1}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/nio/file/StandardCopyOption;
    .registers 1

    sget-object v0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;
    .registers 2

    invoke-static {p0, p1}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;
    .registers 2

    invoke-static {p0, p1}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m()V
    .registers 1

    new-instance v0, Landroid/app/NotificationChannel;

    return-void
.end method

.method public static bridge synthetic m(Landroid/app/FragmentTransaction;)V
    .registers 1

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitNow()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/app/NotificationChannel;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/ActionMode;)V
    .registers 1

    invoke-virtual {p0}, Landroid/view/ActionMode;->invalidateContentRect()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/WindowInsetsController;I)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->hide(I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/webkit/WebSettings;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setForceDark(I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/widget/ProgressBar;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/s1243808733/view/ColorBackgroundTextView;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/s1243808733/view/ColorBackgroundTextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static bridge synthetic m(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/os/PowerManager;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 2

    invoke-static {p0, p1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1()I
    .registers 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic m$1(Landroid/app/usage/StorageStats;)J
    .registers 3

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m$1(Landroid/app/NotificationChannel;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    return-void
.end method

.method public static bridge synthetic m$1(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 2

    invoke-static {p0, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$2()I
    .registers 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic m$2(Landroid/app/usage/StorageStats;)J
    .registers 3

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m$2(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 2

    invoke-static {p0, p1}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method
