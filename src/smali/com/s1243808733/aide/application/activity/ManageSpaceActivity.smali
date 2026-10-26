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
.method static bridge synthetic -$$Nest$mrefresh(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;Landroid/widget/Button;[Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->refresh(Landroid/widget/Button;[Ljava/io/File;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 195
    const-string v0, "41217664-9172-527a-b3d5-edabb50a7d69"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->UUID_DEFAULT:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    return-void
.end method

.method private varargs bindData(Landroid/widget/Button;Landroid/view/View$OnClickListener;[Ljava/io/File;)V
    .locals 1

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
    new-instance v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;-><init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;Landroid/widget/Button;Landroid/view/View$OnClickListener;[Ljava/io/File;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private varargs bindData(Landroid/widget/Button;[Ljava/io/File;)V
    .locals 1

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->bindData(Landroid/widget/Button;Landroid/view/View$OnClickListener;[Ljava/io/File;)V

    return-void
.end method

.method private static getAppDataSize(Landroid/content/Context;)J
    .locals 6

    .line 199
    const-string v0, "storagestats"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/usage/StorageStatsManager;

    move-result-object v0

    .line 201
    :try_start_0
    sget-object v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1, v2}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/usage/StorageStatsManager;Ljava/util/UUID;I)Landroid/app/usage/StorageStats;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/usage/StorageStats;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/usage/StorageStats;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/app/usage/StorageStats;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private varargs refresh(Landroid/widget/Button;[Ljava/io/File;)V
    .locals 2

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 142
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;-><init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;[Ljava/io/File;Landroid/widget/Button;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 178
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public varargs getFolderSize([Ljava/io/File;)J
    .locals 7

    .line 184
    array-length v5, p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, p1, v4

    .line 185
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 187
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_1

    :cond_0
    move-wide v2, v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-wide v0, v2

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

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
    const-string v0, "\u7ba1\u7406\u7a7a\u95f4"

    const-string v1, "Management space"

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

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

    new-instance v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$1;-><init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;)V

    .line 72
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 56
    new-array v4, v7, [Ljava/io/File;

    aput-object v2, v4, v5

    aput-object v3, v4, v6

    invoke-direct {p0, v0, v1, v4}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->bindData(Landroid/widget/Button;Landroid/view/View$OnClickListener;[Ljava/io/File;)V

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
