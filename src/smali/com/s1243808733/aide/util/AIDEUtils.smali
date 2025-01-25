.class public Lcom/s1243808733/aide/util/AIDEUtils;
.super Ljava/lang/Object;
.source "AIDEUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToEditor(Ljava/lang/String;)V
    .registers 11

    .line 51
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getOEditorView()Lcom/aide/ui/views/editor/OEditor;

    move-result-object v7

    if-nez v7, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 55
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_19

    add-int/lit8 v8, v8, 0x1

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 61
    :cond_1c
    invoke-virtual {v7}, Lcom/aide/ui/views/editor/OEditor;->getCaretLine()I

    move-result v9

    .line 64
    invoke-virtual {v7}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    invoke-virtual {v7}, Lcom/aide/ui/views/editor/OEditor;->getCaretColumn()I

    move-result v1

    invoke-virtual {v7}, Lcom/aide/ui/views/editor/OEditor;->getCaretLine()I

    move-result v2

    invoke-virtual {v7}, Lcom/aide/ui/views/editor/OEditor;->tp()Z

    move-result v3

    invoke-virtual {v7}, Lcom/aide/ui/views/editor/OEditor;->getTabSize()I

    move-result v4

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/aide/ui/views/editor/g;->j6(IIZILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;

    .line 66
    add-int/2addr v8, v9

    invoke-virtual {v7, v9, v8}, Lcom/aide/ui/views/editor/OEditor;->gn(II)V

    return-void
.end method

.method public static appendOpenFile(Ljava/io/File;I)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    .line 310
    :cond_3
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentFiles()Ljava/util/List;

    move-result-object v0

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 313
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 314
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 315
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 319
    :cond_33
    invoke-interface {v1, p1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 320
    invoke-static {v1}, Lcom/s1243808733/aide/util/AIDEUtils;->setCurrentFiles(Ljava/util/List;)V

    return-void
.end method

.method public static checkEditorFileName(Ljava/lang/String;)Z
    .registers 2

    .line 252
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return p0

    :catchall_d
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method public static checkEditorFileNameSuffix(Ljava/lang/String;)Z
    .registers 2

    .line 258
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static checkEditorFileParentName(Ljava/lang/String;)Z
    .registers 2

    .line 245
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return p0

    :catchall_11
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method public static closeProjects()V
    .registers 1

    .line 96
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->v5()V

    .line 97
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mk;->Hw()V

    return-void
.end method

.method public static closeSplit(Z)V
    .registers 4

    .line 128
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableDrawer()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 131
    :cond_19
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getSplitView()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "closeSplit"

    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    return-void
.end method

.method public static getAIDEEditorPager()Lcom/aide/ui/AIDEEditorPager;
    .registers 2

    .line 212
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    const v1, 0x7f0800f1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditorPager;

    return-object v0
.end method

.method public static getBrowserPager()Lcom/aide/ui/browsers/BrowserPager;
    .registers 2

    .line 139
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    const v1, 0x7f0800ef

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/BrowserPager;

    return-object v0
.end method

.method public static getCodeEditText()Lcom/aide/ui/views/CodeEditText;
    .registers 1

    .line 224
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    return-object v0
.end method

.method public static getCodeEditText_c()Ljava/lang/Object;
    .registers 2

    .line 229
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 230
    const-string v1, "getOEditorView"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentAppHome()Ljava/lang/String;
    .registers 3

    .line 291
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getProjectService()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CurrentAppHome"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentEditor()Lcom/aide/ui/AIDEEditor;
    .registers 2

    .line 217
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getAIDEEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 218
    const-string v1, "getCurrentEditor"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditor;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentEditorFile()Ljava/io/File;
    .registers 2

    .line 263
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditor()Lcom/aide/ui/AIDEEditor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 278
    :cond_8
    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_14

    .line 279
    :cond_f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_14
    return-object v1
.end method

.method public static getCurrentFiles()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getOpenFileService()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "CurrentFiles"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 352
    :goto_18
    array-length v3, v1

    if-ge v2, v3, :cond_3a

    .line 353
    aget-object v3, v1, v2

    .line 354
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_37

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 355
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_3a
    return-object v0
.end method

.method public static getFileBrowser()Lcom/aide/ui/browsers/FileBrowser;
    .registers 1

    .line 208
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getBrowserPager()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/BrowserPager;->getFileBrowser()Lcom/aide/ui/browsers/FileBrowser;

    move-result-object v0

    return-object v0
.end method

.method public static getFileBrowserCurrentDir()Ljava/lang/String;
    .registers 3

    .line 108
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowser()Lcom/aide/ui/browsers/FileBrowser;

    move-result-object v0

    .line 109
    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/aide/ui/browsers/FileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object v0

    .line 113
    :catchall_16
    move-exception v0

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserService()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CurrentDir"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileBrowserService()Landroid/content/SharedPreferences;
    .registers 1

    .line 301
    const-string v0, "FileBrowserService"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getSp(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getMainActivity()Lcom/s1243808733/aide/AideMainActivity;
    .registers 1

    .line 198
    invoke-static {}, Lcom/s1243808733/util/Utils;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/AideMainActivity;

    return-object v0
.end method

.method public static getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;
    .registers 2

    .line 135
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    const v1, 0x7f0801bb

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method public static getOConsole()Lcom/aide/ui/views/editor/OConsole;
    .registers 1

    .line 240
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getOEditorView()Lcom/aide/ui/views/editor/OEditor;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/OConsole;

    return-object v0
.end method

.method public static getOEditorView()Lcom/aide/ui/views/editor/OEditor;
    .registers 1

    .line 236
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCodeEditText_c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/OEditor;

    return-object v0
.end method

.method public static getOpenFileService()Landroid/content/SharedPreferences;
    .registers 1

    .line 305
    const-string v0, "OpenFileService"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getSp(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getProjectService()Landroid/content/SharedPreferences;
    .registers 1

    .line 287
    const-string v0, "ProjectService"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getSp(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSplitView()Lcom/aide/ui/views/SplitView;
    .registers 2

    .line 117
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    const v1, 0x7f080124

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/SplitView;

    return-object v0
.end method

.method public static initQuickKey()V
    .registers 2

    .line 193
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "FN"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    return-void
.end method

.method public static isAddedOpenFile(Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 326
    :cond_4
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 327
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_28
    return v0
.end method

.method public static isCurrentEditorIsNull()Z
    .registers 1

    .line 70
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isCurrentProjectIsNull()Z
    .registers 1

    .line 74
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isDrawerOpen()Z
    .registers 4

    .line 143
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 144
    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x800003

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "isDrawerOpen"

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_28
    return v1
.end method

.method public static isLightTheme()Z
    .registers 3

    .line 374
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isTrainerMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 375
    :cond_8
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "light_theme"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTrainerMode()Z
    .registers 3

    .line 379
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "TrainerMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUseProguard()Z
    .registers 3

    .line 383
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_proguard"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static killPackagingServiceProcess()V
    .registers 4

    .line 37
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 39
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 41
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, ":PackagingService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 42
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_14

    :cond_30
    return-void
.end method

.method public static launcherPermissionEditor(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->startActivityTransition(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public static notifyThemeChanged()V
    .registers 3

    .line 368
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "light_theme"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->setIsLightTheme(Z)V

    .line 369
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->setIsLightTheme(Z)V

    return-void
.end method

.method public static openFile(Ljava/io/File;)V
    .registers 4

    .line 175
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Hw"

    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    return-void
.end method

.method public static openFile(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    invoke-static {p0}, Lcom/s1243808733/aide/util/AIDEUtils;->openFile([Ljava/io/File;)V

    return-void
.end method

.method public static varargs openFile([Ljava/io/File;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 183
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_d

    .line 184
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/s1243808733/aide/util/AIDEUtils;->openFile(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 186
    :cond_d
    array-length v1, p0

    if-lez v1, :cond_15

    .line 187
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/s1243808733/aide/util/AIDEUtils;->openFile(Ljava/io/File;)V

    :cond_15
    return-void
.end method

.method public static openProject(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->closeProjects()V

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 84
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0, p0}, Labcd/Zk;->Ws(Ljava/lang/String;)V

    .line 87
    :cond_1b
    invoke-static {p0}, Lcom/s1243808733/aide/util/AIDEUtils;->setFileBrowserCurrentDir(Ljava/lang/String;)V

    if-eqz p1, :cond_2c

    .line 89
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2c

    .line 90
    invoke-static {p1}, Lcom/s1243808733/aide/util/AIDEUtils;->openFile(Ljava/util/List;)V

    .line 91
    invoke-static {p1}, Lcom/s1243808733/aide/util/AIDEUtils;->setCurrentFiles(Ljava/util/List;)V

    :cond_2c
    return-void
.end method

.method public static openSplit(Z)V
    .registers 4

    .line 121
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableDrawer()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 124
    :cond_19
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getSplitView()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "openSplit"

    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    return-void
.end method

.method public static reLoadFileBrowser()V
    .registers 2

    .line 202
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowser()Lcom/aide/ui/browsers/FileBrowser;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 204
    :cond_7
    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "Zo"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    return-void
.end method

.method public static saveFiles()V
    .registers 2

    .line 47
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Labcd/Nk;->j6(ZZ)V

    return-void
.end method

.method public static setCurrentAppHome(Ljava/lang/String;)V
    .registers 3

    .line 295
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getProjectService()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurrentAppHome"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setCurrentFiles(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 336
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 337
    :goto_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 338
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 339
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2f

    if-lez v1, :cond_28

    .line 341
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    :cond_28
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 346
    :cond_32
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getOpenFileService()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "CurrentFiles"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setFileBrowserCurrentDir(Ljava/lang/String;)V
    .registers 3

    .line 101
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    invoke-virtual {v0, p0}, Labcd/mk;->j6(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserService()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurrentDir"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setIsLightTheme(Z)V
    .registers 3

    .line 364
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "light_theme"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleSplit()V
    .registers 4

    .line 149
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 151
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 152
    invoke-static {v1}, Lcom/s1243808733/aide/util/AIDEUtils;->closeSplit(Z)V

    goto :goto_2b

    .line 154
    :cond_11
    invoke-static {v1}, Lcom/s1243808733/aide/util/AIDEUtils;->openSplit(Z)V

    goto :goto_2b

    .line 157
    :cond_15
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getSplitView()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/Runnable;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "toggleSplit"

    invoke-virtual {v0, v2, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    :goto_2b
    return-void
.end method

.method public static updateBuild(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 162
    new-instance v0, Lcom/s1243808733/aide/util/AIDEUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/aide/util/AIDEUtils$1;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
