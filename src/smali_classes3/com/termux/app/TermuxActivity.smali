.class public final Lcom/termux/app/TermuxActivity;
.super Lcom/s1243808733/app/base/BaseActivity;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final CONTEXTMENU_HELP_ID:I = 0x8

.field private static final CONTEXTMENU_KILL_PROCESS_ID:I = 0x4

.field private static final CONTEXTMENU_PASTE_ID:I = 0x3

.field private static final CONTEXTMENU_RESET_TERMINAL_ID:I = 0x5

.field private static final CONTEXTMENU_SELECT_URL_ID:I = 0x0

.field private static final CONTEXTMENU_SHARE_TRANSCRIPT_ID:I = 0x1

.field private static final CONTEXTMENU_STYLING_ID:I = 0x6

.field private static final CONTEXTMENU_TOGGLE_FULLSCREEN_ID:I = 0x7

.field private static final MAX_SESSIONS:I = 0x8

.field private static final RELOAD_STYLE_ACTION:Ljava/lang/String; = "com.termux.app.reload_style"

.field private static final REQUESTCODE_PERMISSION_STORAGE:I = 0x4d2


# instance fields
.field GradleBuildShell:Ljava/lang/String;

.field final mBellSoundPool:Landroid/media/SoundPool;

.field private final mBroadcastReceiever:Landroid/content/BroadcastReceiver;

.field private mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

.field mExtraKeysView:Lcom/termux/app/ExtraKeysView;

.field final mFullScreenHelper:Lcom/termux/app/FullScreenHelper;

.field mIsVisible:Z

.field mLastToast:Landroid/widget/Toast;

.field mListViewAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/termux/terminal/TerminalSession;",
            ">;"
        }
    .end annotation
.end field

.field mSettings:Lcom/termux/app/TermuxPreferences;

.field mStatus:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTermService:Lcom/termux/app/TermuxService;

.field mTerminalView:Lcom/termux/view/TerminalView;
    .annotation runtime Landroidj/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SuppressWarnings;
        value = "NullableProblems"
    .end annotation
.end field

.field private sDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1244
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/termux/app/FullScreenHelper;

    invoke-direct {v0, p0}, Lcom/termux/app/FullScreenHelper;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mFullScreenHelper:Lcom/termux/app/FullScreenHelper;

    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mBellSoundPool:Landroid/media/SoundPool;

    new-instance v0, Lcom/termux/app/TermuxActivity$100000000;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$100000000;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mBroadcastReceiever:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mStatus:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$1000049(Lcom/termux/app/TermuxActivity;)Ljava/util/List;
    .registers 2

    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->tryGetApkFile()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$L1000010()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/termux/app/TermuxActivity;->RELOAD_STYLE_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000010(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/termux/app/TermuxActivity;->RELOAD_STYLE_ACTION:Ljava/lang/String;

    return-void
.end method

.method static extractUrls(Ljava/lang/String;)Ljava/util/LinkedHashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1029
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "(?:^|[\\W])((ht|f)tp(s?)://|www\\.)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "(([\\w\\-]+\\.)+?([\\w\\-.~]+/?)*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[\\p{Alnum}.,%_=?&#\\-+()\\[\\]\\*$~@!:/{};\']*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1030
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1031
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1032
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1038
    return-object v1

    .line 1033
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    .line 1034
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 1035
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1036
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initDrawerToggle()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const v4, 0x104000a

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 444
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 445
    const-string v1, "Terminal"

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 447
    new-instance v1, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    invoke-direct {v1, p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/termux/app/TermuxActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    .line 449
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v2

    .line 450
    if-nez v2, :cond_0

    .line 475
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 453
    new-instance v0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;II)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->sDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    .line 454
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->sDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    invoke-virtual {v0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->syncState()V

    .line 455
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->sDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    invoke-virtual {v2, v0}, Landroidj/support/v4/widget/DrawerLayout;->addDrawerListener(Landroidj/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 457
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 460
    :try_start_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 461
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010431

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 463
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x1010429

    aput v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 468
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 469
    if-eqz v1, :cond_1

    .line 470
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v2, v1}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 472
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 475
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v0, v1, v7

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static start(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 208
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->saveFiles()V

    .line 209
    :try_start_0
    const-string v0, "com.termux.app.TermuxActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/app/ActivityCollector;->finishOneActivity(Ljava/lang/String;)V

    .line 210
    :try_start_1
    const-string v0, "com.termux.app.TermuxActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    const-string v0, "gradle"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 209
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private tryGetApkFile()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->GradleBuildShell:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 842
    new-instance v0, Lcom/termux/app/TermuxActivity$100000022;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$100000022;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 849
    new-instance v1, Lcom/s1243808733/aide/GradleProject;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/s1243808733/aide/GradleProject;-><init>(Ljava/io/File;)V

    .line 850
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->GradleBuildShell:Ljava/lang/String;

    const-string v3, "assembleDebug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 851
    iget-object v1, v1, Lcom/s1243808733/aide/GradleProject;->outputsApkDebugDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v0

    .line 857
    :goto_0
    return-object v0

    .line 853
    :cond_0
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->GradleBuildShell:Ljava/lang/String;

    const-string v3, "assembleRelease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 854
    iget-object v1, v1, Lcom/s1243808733/aide/GradleProject;->outputsApkReleaseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 857
    :cond_1
    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method aapt2error(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroidj/support/annotation/Nullable;
    .end annotation

    .line 481
    const-string v0, "AAPT2 \\w+.*-linux Daemon #0: Daemon startup failed"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 483
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    const-string v0, "[aapt2_available]"

    :goto_0
    return-object v0

    .line 485
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method addNewSession(ZLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 954
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 955
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "max_terminals_reached_title"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "max_terminals_reached_message"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 966
    :goto_0
    return-void

    .line 959
    :cond_0
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    const-string v3, "/system/bin/sh"

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0, p1}, Lcom/termux/app/TermuxService;->createTermSession(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 962
    if-eqz p2, :cond_1

    .line 963
    iput-object p2, v0, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 965
    :cond_1
    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    .line 966
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0
.end method

.method changeFontSize(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1191
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v0, p0, p1}, Lcom/termux/app/TermuxPreferences;->changeFontSize(Landroid/content/Context;Z)V

    .line 1192
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v1}, Lcom/termux/app/TermuxPreferences;->getFontSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setTextSize(I)V

    return-void
.end method

.method checkForFontAndColors()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 231
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_HOME_DIR:Ljava/io/File;

    const-string v2, ".termux/font.ttf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 233
    new-instance v2, Ljava/io/File;

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_HOME_DIR:Ljava/io/File;

    const-string v3, ".termux/colors.properties"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 237
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 238
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    :try_start_2
    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    :cond_0
    :try_start_3
    sget-object v1, Lcom/termux/terminal/TerminalColors;->COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;

    invoke-virtual {v1, v3}, Lcom/termux/terminal/TerminalColorScheme;->updateWith(Ljava/util/Properties;)V

    .line 244
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 246
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->updateBackgroundColor()V

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const/4 v1, 0x0

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v1, v0}, Lcom/termux/view/TerminalView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 253
    :goto_1
    return-void

    .line 239
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_2

    :try_start_4
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    :cond_2
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    if-nez v1, :cond_3

    :goto_2
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 251
    :catch_0
    move-exception v0

    .line 253
    const-string v1, "termux"

    const-string v2, "Error in checkForFontAndColors()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 239
    :cond_3
    if-eq v1, v0, :cond_4

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object v0, v1

    goto :goto_2

    .line 250
    :cond_5
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0
.end method

.method doPaste()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1196
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1197
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 1198
    if-nez v0, :cond_1

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1199
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ensureStoragePermissionGranted()Z
    .registers 5
    .annotation runtime Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 268
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Lcom/termux/app/TermuxActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v2, 0x4d2

    invoke-virtual {p0, v0, v2}, Lcom/termux/app/TermuxActivity;->requestPermissions([Ljava/lang/String;I)V

    move v0, v1

    .line 272
    goto :goto_0
.end method

.method public finish()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method getCurrentTermSession()Lcom/termux/terminal/TerminalSession;
    .registers 2
    .annotation runtime Landroidj/support/annotation/Nullable;
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    return-object v0
.end method

.method getDrawer()Landroidj/support/v4/widget/DrawerLayout;
    .registers 2

    .line 950
    const-string v0, "drawer_layout"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method public getStoredCurrentSessionOrLast()Lcom/termux/terminal/TerminalSession;
    .registers 3

    .line 1205
    invoke-static {p0}, Lcom/termux/app/TermuxPreferences;->getCurrentSession(Lcom/termux/app/TermuxActivity;)Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 1206
    if-eqz v0, :cond_0

    .line 1209
    :goto_0
    return-object v0

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1208
    if-nez v0, :cond_1

    const/4 v0, 0x0

    check-cast v0, Lcom/termux/terminal/TerminalSession;

    goto :goto_0

    .line 1209
    :cond_1
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/terminal/TerminalSession;

    goto :goto_0
.end method

.method protected isDisableDrag()Z
    .registers 2

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method isHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)Z
    .registers 7

    .line 200
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mStatus:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p1, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method noteSessionInfo()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 994
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-nez v0, :cond_0

    .line 1001
    :goto_0
    return-void

    .line 995
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 996
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 997
    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    .line 998
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 999
    const-string v0, "left_drawer_list"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1000
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1001
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1100
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    .line 1102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1173
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1104
    :pswitch_1
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->showUrlSelection()V

    move v0, v1

    .line 1105
    goto :goto_0

    .line 1107
    :pswitch_2
    if-eqz v2, :cond_0

    .line 1108
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1109
    const-string v3, "text/plain"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalBuffer;->getTranscriptText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "share_transcript_title"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    const-string v2, "share_transcript_chooser_title"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    move v0, v1

    .line 1114
    goto :goto_0

    .line 1116
    :pswitch_3
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->doPaste()V

    move v0, v1

    .line 1117
    goto :goto_0

    .line 1119
    :pswitch_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1120
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1121
    const-string v3, "confirm_kill_process"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1122
    const v3, 0x1040013

    new-instance v4, Lcom/termux/app/TermuxActivity$100000026;

    invoke-direct {v4, p0}, Lcom/termux/app/TermuxActivity$100000026;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1131
    const v3, 0x1040009

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1132
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    .line 1133
    goto :goto_0

    .line 1136
    :pswitch_5
    if-eqz v2, :cond_1

    .line 1137
    invoke-virtual {v2}, Lcom/termux/terminal/TerminalSession;->reset()V

    .line 1138
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "reset_toast_notification"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    :cond_1
    move v0, v1

    .line 1140
    goto/16 :goto_0

    .line 1144
    :pswitch_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1145
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.termux.styling.TermuxStyleActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    move v0, v1

    .line 1165
    goto/16 :goto_0

    .line 1147
    :catch_0
    move-exception v2

    .line 1151
    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "styling_not_installed"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "styling_install"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/termux/app/TermuxActivity$100000027;

    invoke-direct {v4, p0}, Lcom/termux/app/TermuxActivity$100000027;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 1167
    :pswitch_7
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->toggleImmersive()V

    move v0, v1

    .line 1168
    goto/16 :goto_0

    .line 1170
    :pswitch_8
    :try_start_1
    const-string v0, "com.termux.app.TermuxHelpActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 1171
    goto/16 :goto_0

    .line 1170
    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1147
    :catch_2
    move-exception v2

    goto :goto_2

    .line 1102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x0

    .line 282
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 284
    new-instance v0, Lcom/termux/app/TermuxPreferences;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    .line 286
    const-string v0, "drawer_layout"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getLayoutIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->setContentView(I)V

    .line 287
    const-string v0, "terminal_view"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/termux/view/TerminalView;

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    .line 288
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    new-instance v1, Lcom/termux/app/TermuxViewClient;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxViewClient;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setOnKeyListener(Lcom/termux/view/TerminalViewClient;)V

    .line 290
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v1}, Lcom/termux/app/TermuxPreferences;->getFontSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setTextSize(I)V

    .line 291
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mFullScreenHelper:Lcom/termux/app/FullScreenHelper;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v1}, Lcom/termux/app/TermuxPreferences;->isFullScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/app/FullScreenHelper;->setImmersive(Z)V

    .line 292
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->requestFocus()Z

    .line 294
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->initDrawerToggle()V

    .line 296
    const-string v0, "viewpager"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager;

    .line 297
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v1}, Lcom/termux/app/TermuxPreferences;->isShowExtraKeys()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroidj/support/v4/view/ViewPager;->setVisibility(I)V

    .line 299
    :cond_0
    new-instance v1, Lcom/termux/app/TermuxActivity$100000002;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$100000002;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/view/ViewPager;->setAdapter(Landroidj/support/v4/view/PagerAdapter;)V

    .line 349
    new-instance v1, Lcom/termux/app/TermuxActivity$100000003;

    invoke-direct {v1, p0, v0}, Lcom/termux/app/TermuxActivity$100000003;-><init>(Lcom/termux/app/TermuxActivity;Landroidj/support/v4/view/ViewPager;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/view/ViewPager;->addOnPageChangeListener(Landroidj/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 362
    const-string v0, "new_session_button"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 363
    new-instance v1, Lcom/termux/app/TermuxActivity$100000004;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$100000004;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    new-instance v1, Lcom/termux/app/TermuxActivity$100000007;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$100000007;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 399
    const-string v0, "toggle_keyboard_button"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/termux/app/TermuxActivity$100000008;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$100000008;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    const-string v0, "toggle_keyboard_button"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/termux/app/TermuxActivity$100000009;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$100000009;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 420
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 422
    :try_start_0
    const-string v0, "com.termux.app.TermuxService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 426
    invoke-virtual {p0, v1}, Lcom/termux/app/TermuxActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 427
    invoke-virtual {p0, v1, p0, v3}, Lcom/termux/app/TermuxActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bindService() failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :cond_1
    invoke-virtual {p0, v1}, Lcom/termux/app/TermuxActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 431
    invoke-virtual {p0, v1, p0, v3}, Lcom/termux/app/TermuxActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bindService() failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_2
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->checkForFontAndColors()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ContextMenu;",
            "Landroid/view/View;",
            "Landroid/view/ContextMenu$ContextMenuInfo;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1007
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 1008
    if-nez v0, :cond_0

    .line 1016
    :goto_0
    return-void

    .line 1010
    :cond_0
    const-string v1, "select_url"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v7, v7, v7, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1011
    const-string v1, "select_all_and_share"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v7, v8, v7, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1012
    const/4 v1, 0x5

    const-string v2, "reset_terminal"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v7, v1, v7, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1013
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "kill_process"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v3

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/termux/terminal/TerminalSession;->getPid()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v7, v1, v7, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1014
    const/4 v0, 0x7

    const-string v1, "toggle_fullscreen"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v7, v0, v7, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v1}, Lcom/termux/app/TermuxPreferences;->isFullScreen()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1015
    const/4 v0, 0x6

    const-string v1, "style_terminal"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v7, v0, v7, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1016
    const/16 v0, 0x8

    const-string v1, "help"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v7, v0, v7, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1023
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 939
    invoke-super {p0}, Lcom/s1243808733/app/base/BaseActivity;->onDestroy()V

    .line 941
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    if-eqz v0, :cond_0

    .line 943
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    move-object v0, v1

    check-cast v0, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    iput-object v0, v2, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    .line 944
    check-cast v1, Lcom/termux/app/TermuxService;

    iput-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    .line 946
    :cond_0
    invoke-virtual {p0, p0}, Lcom/termux/app/TermuxActivity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 891
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 894
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 931
    :goto_0
    const/4 v0, 0x1

    .line 934
    :goto_1
    return v0

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->stop()V

    .line 900
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    goto :goto_0

    .line 901
    :cond_1
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    goto :goto_0

    .line 934
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 790
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 218
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 219
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->sDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->sDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 222
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1179
    const/16 v0, 0x4d2

    if-ne p1, v0, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 1180
    invoke-static {p0}, Lcom/termux/app/TermuxInstaller;->setupStorageSymlinks(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 504
    check-cast p2, Lcom/termux/app/TermuxService$LocalBinder;

    iget-object v0, p2, Lcom/termux/app/TermuxService$LocalBinder;->service:Lcom/termux/app/TermuxService;

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    .line 506
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    new-instance v1, Lcom/termux/app/TermuxActivity$100000016;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$100000016;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object v1, v0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    .line 683
    const-string v0, "left_drawer_list"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 684
    invoke-static {v0}, Lcom/s1243808733/aide/application/AppTheme;->customList(Landroid/widget/ListView;)V

    .line 685
    new-instance v1, Lcom/termux/app/TermuxActivity$100000017;

    const-string v2, "line_in_drawer"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getLayoutIdByName(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v3}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/termux/app/TermuxActivity$100000017;-><init>(Lcom/termux/app/TermuxActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    .line 727
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 728
    new-instance v1, Lcom/termux/app/TermuxActivity$100000018;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$100000018;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 737
    new-instance v1, Lcom/termux/app/TermuxActivity$100000019;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$100000019;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 747
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    .line 763
    :goto_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    new-instance v1, Lcom/termux/app/TermuxActivity$100000020;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$100000020;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 750
    :cond_0
    const/4 v1, 0x1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 829
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 862
    invoke-super {p0}, Lcom/s1243808733/app/base/BaseActivity;->onStart()V

    .line 863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    .line 865
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getStoredCurrentSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    .line 868
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mBroadcastReceiever:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.termux.app.reload_style"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/TermuxActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 875
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->onScreenUpdated()V

    return-void
.end method

.method protected onStop()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 880
    invoke-super {p0}, Lcom/s1243808733/app/base/BaseActivity;->onStop()V

    .line 881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    .line 882
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 883
    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/termux/app/TermuxPreferences;->storeCurrentSession(Landroid/content/Context;Lcom/termux/terminal/TerminalSession;)V

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mBroadcastReceiever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 885
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method

.method public removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation

    .line 1231
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    .line 1233
    invoke-virtual {v1, p1}, Lcom/termux/app/TermuxService;->removeTermSession(Lcom/termux/terminal/TerminalSession;)I

    move-result v0

    .line 1234
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1235
    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v2}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1237
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    .line 1242
    :goto_0
    return-void

    .line 1239
    :cond_0
    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1240
    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1242
    :cond_1
    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_0
.end method

.method renameSession(Lcom/termux/terminal/TerminalSession;)V
    .registers 12
    .annotation runtime Landroid/annotation/SuppressLint;
        value = "InflateParams"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v0, 0x0

    .line 808
    const-string v1, "session_rename_title"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    const-string v3, "session_rename_positive_button"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/termux/app/TermuxActivity$100000021;

    invoke-direct {v4, p0, p1}, Lcom/termux/app/TermuxActivity$100000021;-><init>(Lcom/termux/app/TermuxActivity;Lcom/termux/terminal/TerminalSession;)V

    move-object v6, v0

    check-cast v6, Lcom/termux/app/DialogUtils$TextSetListener;

    move-object v8, v0

    check-cast v8, Lcom/termux/app/DialogUtils$TextSetListener;

    move-object v9, v0

    check-cast v9, Landroid/content/DialogInterface$OnDismissListener;

    move-object v0, p0

    move v7, v5

    invoke-static/range {v0 .. v9}, Lcom/termux/app/DialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method setHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mStatus:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p1, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method showToast(Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1220
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1222
    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method showUrlSelection()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1042
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getTranscriptText()Ljava/lang/String;

    move-result-object v0

    .line 1043
    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->extractUrls(Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 1044
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "select_url_no_found"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1095
    :goto_0
    return-void

    .line 1049
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 1050
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1053
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/termux/app/TermuxActivity$100000023;

    invoke-direct {v2, p0, v0}, Lcom/termux/app/TermuxActivity$100000023;-><init>(Lcom/termux/app/TermuxActivity;[Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "select_url_dialog_title"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1071
    new-instance v2, Lcom/termux/app/TermuxActivity$100000025;

    invoke-direct {v2, p0, v1, v0}, Lcom/termux/app/TermuxActivity$100000025;-><init>(Lcom/termux/app/TermuxActivity;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1095
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method switchToSession(Lcom/termux/terminal/TerminalSession;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation

    .line 972
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->attachSession(Lcom/termux/terminal/TerminalSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->noteSessionInfo()V

    .line 974
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->updateBackgroundColor()V

    :cond_0
    return-void
.end method

.method public switchToSession(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 796
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 797
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 798
    if-eqz p1, :cond_1

    .line 799
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 803
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    return-void

    .line 801
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;
    .registers 7

    .line 979
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 980
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 981
    iget-object v0, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 982
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    :cond_0
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 985
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 987
    iget-object v0, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, " "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 987
    :cond_2
    const-string v0, "\n"

    goto :goto_0
.end method

.method toggleImmersive()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1185
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v0}, Lcom/termux/app/TermuxPreferences;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1186
    :goto_0
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v1, p0, v0}, Lcom/termux/app/TermuxPreferences;->setFullScreen(Landroid/content/Context;Z)V

    .line 1187
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mFullScreenHelper:Lcom/termux/app/FullScreenHelper;

    invoke-virtual {v1, v0}, Lcom/termux/app/FullScreenHelper;->setImmersive(Z)V

    return-void

    .line 1185
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method toggleShowExtraKeys()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 492
    const-string v0, "viewpager"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/ViewPager;

    .line 493
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v1, p0}, Lcom/termux/app/TermuxPreferences;->toggleShowExtraKeys(Landroid/content/Context;)Z

    move-result v2

    .line 494
    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidj/support/v4/view/ViewPager;->setVisibility(I)V

    .line 495
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidj/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 497
    const-string v0, "text_input"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void

    .line 494
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method updateBackgroundColor()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v0, v0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    const/16 v2, 0x101

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
