.class public Lcom/s1243808733/aide/widget/ShortcutSymbolBar;
.super Landroid/widget/FrameLayout;
.source "ShortcutSymbolBar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private FILE:Ljava/io/File;

.field mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field private mShortSymbolList:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 41
    invoke-virtual {p0}, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "short_symbol_bar"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getLayoutIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    const-string v0, "shortSymbolList"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->mShortSymbolList:Landroid/view/ViewGroup;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 47
    const-string p1, "shortcut_symbol.json"

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->getSdDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->FILE:Ljava/io/File;

    .line 49
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->setVisibility(I)V

    return-void
.end method

.method private loadSymbol([Lcom/s1243808733/aide/widget/ShortcutSymbol;)V
    .registers 7

    .line 79
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    .line 80
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "currentFile"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    if-nez v0, :cond_1b

    .line 82
    new-instance v0, Ljava/io/File;

    const-string v1, "test.java"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1b
    const/4 v1, 0x0

    .line 87
    :goto_1c
    array-length v2, p1

    if-ge v1, v2, :cond_3e

    .line 88
    aget-object v2, p1, v1

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/s1243808733/aide/widget/ShortcutSymbol;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 90
    invoke-virtual {v2}, Lcom/s1243808733/aide/widget/ShortcutSymbol;->getSymbol()Ljava/util/List;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->loadSymbol([Ljava/lang/String;)V

    return-void

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_3e
    return-void
.end method

.method private loadSymbol([Ljava/lang/String;)V
    .registers 8

    .line 97
    const/high16 v0, 0x42200000  # 40.0f

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    const/4 v1, 0x0

    .line 99
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_33

    .line 100
    aget-object v2, p1, v1

    .line 101
    invoke-static {v2}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_30

    .line 104
    :cond_13
    iget-object v3, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0a003c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 105
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v4, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->mShortSymbolList:Landroid/view/ViewGroup;

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 108
    new-instance v4, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$1;

    invoke-direct {v4, p0, v2}, Lcom/s1243808733/aide/widget/ShortcutSymbolBar$1;-><init>(Lcom/s1243808733/aide/widget/ShortcutSymbolBar;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_33
    return-void
.end method


# virtual methods
.method loadDefaultSymbol()V
    .registers 4

    .line 73
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string v1, "shortcut_symbol.json"

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->readAssets2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, [Lcom/s1243808733/aide/widget/ShortcutSymbol;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/aide/widget/ShortcutSymbol;

    .line 74
    invoke-direct {p0, v0}, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->loadSymbol([Lcom/s1243808733/aide/widget/ShortcutSymbol;)V

    return-void
.end method

.method loadSymbol()V
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 58
    :try_start_8
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->FILE:Ljava/io/File;

    invoke-static {v1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-class v2, [Lcom/s1243808733/aide/widget/ShortcutSymbol;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/aide/widget/ShortcutSymbol;

    .line 59
    invoke-direct {p0, v0}, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->loadSymbol([Lcom/s1243808733/aide/widget/ShortcutSymbol;)V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1f

    goto :goto_3f

    :catchall_1f
    move-exception v0

    .line 61
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p0}, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->loadDefaultSymbol()V

    goto :goto_3f

    .line 65
    :cond_2d
    const-string v0, "shortcut_symbol.json"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    invoke-virtual {p0}, Lcom/s1243808733/aide/widget/ShortcutSymbolBar;->loadDefaultSymbol()V

    :goto_3f
    return-void
.end method
