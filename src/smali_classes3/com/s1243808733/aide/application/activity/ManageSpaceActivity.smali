.class public Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;
.super Lcom/s1243808733/app/base/BaseActivity;
.source "ManageSpaceActivity.java"


# static fields
.field public static final UUID_DEFAULT:Ljava/util/UUID;

.field static sClearApplUserDataing:Z


# instance fields
.field private clearAll:Landroid/widget/Button;

.field private clearCache:Landroid/widget/Button;

.field private clearGradle:Landroid/widget/Button;

.field private clearMaven:Landroid/widget/Button;

.field private clearPreference:Landroid/widget/Button;

.field private clearTerminal:Landroid/widget/Button;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const-string v0, "41217664-9172-527a-b3d5-edabb50a7d69"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->UUID_DEFAULT:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 205
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$1000015(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;Landroid/widget/Button;[Ljava/io/File;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->refresh(Landroid/widget/Button;[Ljava/io/File;)V

    return-void
.end method

.method private varargs bindData(Landroid/widget/Button;Landroid/view/View$OnClickListener;[Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Button;",
            "Landroid/view/View$OnClickListener;",
            "[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p3}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->refresh(Landroid/widget/Button;[Ljava/io/File;)V

    .line 92
    sget-boolean v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->sClearApplUserDataing:Z

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    :cond_0
    new-instance v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;-><init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;Landroid/widget/Button;Landroid/view/View$OnClickListener;[Ljava/io/File;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private varargs bindData(Landroid/widget/Button;[Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Button;",
            "[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v0, p2}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->bindData(Landroid/widget/Button;Landroid/view/View$OnClickListener;[Ljava/io/File;)V

    return-void
.end method

.method private static getAppDataSize(Landroid/content/Context;)J
    .registers 7

    .line 199
    const-string v0, "storagestats"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    .line 201
    :try_start_0
    sget-object v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/util/UUID;I)Landroid/app/usage/StorageStats;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 204
    :goto_0
    return-wide v0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    const/4 v0, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method private varargs refresh(Landroid/widget/Button;[Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Button;",
            "[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 142
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000006;

    invoke-direct {v1, p0, p2, p1}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000006;-><init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;[Ljava/io/File;Landroid/widget/Button;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public varargs getFolderSize([Ljava/io/File;)J
    .registers 10

    const/4 v4, 0x0

    .line 183
    int-to-long v0, v4

    move-wide v2, v0

    .line 188
    :goto_0
    array-length v0, p1

    if-lt v4, v0, :cond_0

    .line 192
    return-wide v2

    .line 184
    :cond_0
    aget-object v0, p1, v4

    .line 185
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;Z)Ljava/util/List;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_2

    .line 187
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 188
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-wide v0, v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto :goto_0

    .line 187
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const-string v0, "manage_space"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getLayoutIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->setContentView(I)V

    .line 46
    const-string/jumbo v0, "\u7ba1\u7406\u7a7a\u95f4"

    const-string v1, "Management space"

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    const-string v0, "clearAll"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->clearAll:Landroid/widget/Button;

    .line 49
    const-string v0, "clearCache"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->clearCache:Landroid/widget/Button;

    .line 51
    const-string v0, "clearGradle"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->clearGradle:Landroid/widget/Button;

    .line 52
    const-string v0, "clearTerminal"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->clearTerminal:Landroid/widget/Button;

    .line 53
    const-string v0, "clearMaven"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->clearMaven:Landroid/widget/Button;

    .line 54
    const-string v0, "clearPreference"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->clearPreference:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->clearAll:Landroid/widget/Button;

    new-instance v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000000;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000000;-><init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;)V

    new-array v2, v7, [Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-direct {p0, v0, v1, v2}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->bindData(Landroid/widget/Button;Landroid/view/View$OnClickListener;[Ljava/io/File;)V

    .line 74
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->clearCache:Landroid/widget/Button;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/io/File;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework/tmp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v1, v7

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->bindData(Landroid/widget/Button;[Ljava/io/File;)V

    .line 75
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->clearGradle:Landroid/widget/Button;

    new-array v1, v6, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->bindData(Landroid/widget/Button;[Ljava/io/File;)V

    .line 76
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->clearTerminal:Landroid/widget/Button;

    new-array v1, v6, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "usr"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->bindData(Landroid/widget/Button;[Ljava/io/File;)V

    .line 77
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->clearMaven:Landroid/widget/Button;

    new-array v1, v6, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v4, "no_backup/.aide/maven"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->bindData(Landroid/widget/Button;[Ljava/io/File;)V

    .line 78
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->clearPreference:Landroid/widget/Button;

    new-array v1, v6, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v4, "shared_prefs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->bindData(Landroid/widget/Button;[Ljava/io/File;)V

    return-void
.end method
