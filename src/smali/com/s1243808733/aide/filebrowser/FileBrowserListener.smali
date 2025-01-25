.class public Lcom/s1243808733/aide/filebrowser/FileBrowserListener;
.super Ljava/lang/Object;
.source "FileBrowserListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;,
        Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileInfo;
    }
.end annotation


# static fields
.field private static sLastDir:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener;->sLastDir:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSpecialDir(Ljava/io/File;)Z
    .registers 7

    .line 126
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "bin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "AndroidManifest.xml"

    if-eqz v2, :cond_2e

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const-string v5, ".classpath"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_81

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_81

    .line 129
    :cond_2e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "build.gradle"

    if-eqz v1, :cond_53

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_53

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_81

    .line 131
    :cond_53
    const-string v1, "obj"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_81

    .line 133
    :cond_6a
    const-string v1, "build"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_83

    :cond_81
    const/4 p0, 0x1

    goto :goto_84

    :cond_83
    const/4 p0, 0x0

    :goto_84
    return p0
.end method

.method public static onFileBrowserItemClick(Ljava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 203
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 204
    const-string v1, "FH"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/CustomKeysListView;

    .line 206
    invoke-virtual {v0}, Lcom/aide/ui/views/CustomKeysListView;->getContext()Landroid/content/Context;

    .line 207
    invoke-virtual {v0, p3}, Lcom/aide/ui/views/CustomKeysListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/browsers/FileBrowser$b;

    .line 218
    move-object v2, p2

    check-cast v2, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    .line 219
    iget-object v3, v2, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    .line 221
    invoke-virtual {v2}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->getItemType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_c2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_ba

    const/4 v3, 0x4

    if-eq v2, v3, :cond_b1

    .line 234
    iget-boolean v2, v1, Lcom/aide/ui/browsers/FileBrowser$b;->Hw:Z

    if-eqz v2, :cond_64

    .line 236
    new-instance v0, Ljava/io/File;

    iget-object v1, v1, Lcom/aide/ui/browsers/FileBrowser$b;->v5:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-static {v0}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener;->porxyOpenableFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_40

    return-void

    .line 242
    :cond_40
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 243
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->closeSplit(Z)V

    .line 246
    :cond_4a
    new-instance v0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$1;-><init>(Ljava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 262
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object p0

    if-nez p0, :cond_5e

    const-wide/16 p0, 0x0

    goto :goto_60

    :cond_5e
    const-wide/16 p0, 0xc8

    .line 246
    :goto_60
    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_b0

    .line 266
    :cond_64
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_84

    .line 268
    sget-object v2, Lcom/s1243808733/aide/filebrowser/FileBrowserListener;->sLastDir:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileInfo;

    invoke-virtual {v0}, Lcom/aide/ui/views/CustomKeysListView;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileInfo;-><init>(IJ)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_84
    invoke-static/range {p0 .. p5}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener;->onFileBrowserItemClick2(Ljava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 272
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_b0

    .line 274
    sget-object p1, Lcom/s1243808733/aide/filebrowser/FileBrowserListener;->sLastDir:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileInfo;

    if-eqz p0, :cond_b0

    .line 277
    iget p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileInfo;->listPos:I

    invoke-virtual {v0}, Lcom/aide/ui/views/CustomKeysListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_b0

    .line 278
    iget p0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileInfo;->listPos:I

    invoke-virtual {v0, p0}, Lcom/aide/ui/views/CustomKeysListView;->setSelection(I)V

    :cond_b0
    :goto_b0
    return-void

    .line 230
    :cond_b1
    new-instance p0, Labcd/Pf;

    invoke-direct {p0}, Labcd/Pf;-><init>()V

    invoke-virtual {p0}, Labcd/Pf;->run()Z

    return-void

    .line 227
    :cond_ba
    invoke-static {}, Lcom/s1243808733/util/Utils;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/aide/project/ProjectDialog;->showCreateDialog(Landroid/app/Activity;)V

    return-void

    .line 224
    :cond_c2
    new-instance p0, Labcd/pf;

    invoke-direct {p0}, Labcd/pf;-><init>()V

    invoke-virtual {p0}, Labcd/pf;->run()Z

    return-void
.end method

.method public static onFileBrowserItemClick2(Ljava/lang/Object;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 290
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    .line 291
    const-string v1, "onItemClick_SOURCE"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v2, p2

    invoke-virtual {p0, v1, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception p0

    .line 293
    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/Throwable;Z)Landroid/widget/Toast;

    :goto_25
    return-void
.end method

.method public static porxyOpenableFile(Ljava/io/File;)Z
    .registers 4

    .line 298
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 299
    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_51

    .line 300
    const-string v1, ".apk.bak"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 301
    const-string v1, ".apk.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_51

    .line 306
    :cond_1e
    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 307
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 308
    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 309
    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 310
    const-string v1, ".webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_49

    :cond_47
    const/4 p0, 0x0

    return p0

    .line 311
    :cond_49
    :goto_49
    invoke-static {}, Lcom/s1243808733/util/Utils;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/s1243808733/aide/filebrowser/FileOptions;->openImage(Landroid/content/Context;Ljava/io/File;)V

    return v2

    .line 302
    :cond_51
    :goto_51
    invoke-static {}, Lcom/s1243808733/util/Utils;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/s1243808733/aide/filebrowser/FileOptions;->showApkInfoDialog(Landroid/content/Context;Ljava/io/File;)Landroid/app/AlertDialog;

    return v2
.end method

.method public static sortList(Lcom/aide/ui/browsers/FileBrowser;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/ui/browsers/FileBrowser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 60
    :cond_7
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_28

    .line 62
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "j6"

    invoke-virtual {p0, v1, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    return-object p1

    .line 68
    :cond_28
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 76
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_74

    .line 80
    invoke-virtual {v6}, Ljava/io/File;->isHidden()Z

    move-result v7

    if-eqz v7, :cond_66

    .line 81
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 83
    :cond_66
    invoke-static {v6}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener;->isSpecialDir(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 84
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 86
    :cond_70
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 90
    :cond_74
    invoke-virtual {v6}, Ljava/io/File;->isHidden()Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 91
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 93
    :cond_7e
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 98
    :cond_82
    new-instance p1, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;

    invoke-direct {p1, p0, v2}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;-><init>(Ljava/util/List;I)V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    new-instance p1, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;

    const/4 v2, 0x2

    invoke-direct {p1, v0, v2}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;-><init>(Ljava/util/List;I)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 100
    new-instance p1, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;

    const/4 v2, 0x3

    invoke-direct {p1, v1, v2}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;-><init>(Ljava/util/List;I)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    new-instance p1, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;

    const/4 v2, 0x4

    invoke-direct {p1, v3, v2}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;-><init>(Ljava/util/List;I)V

    invoke-static {v3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    new-instance p1, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;

    const/4 v2, 0x5

    invoke-direct {p1, v4, v2}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator;-><init>(Ljava/util/List;I)V

    invoke-static {v4, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 108
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
