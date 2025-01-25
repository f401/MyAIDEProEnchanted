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
            "Landroid/widget/ArrayAdapter<",
            "Lcom/termux/terminal/TerminalSession;",
            ">;"
        }
    .end annotation
.end field

.field mSettings:Lcom/termux/app/TermuxPreferences;

.field mStatus:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTermService:Lcom/termux/app/TermuxService;

.field mTerminalView:Lcom/termux/view/TerminalView;

.field private sDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;


# direct methods
.method static bridge synthetic -$$Nest$mtryGetApkFile(Lcom/termux/app/TermuxActivity;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->tryGetApkFile()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 4

    .line 115
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    .line 139
    new-instance v0, Lcom/termux/app/FullScreenHelper;

    invoke-direct {v0, p0}, Lcom/termux/app/FullScreenHelper;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mFullScreenHelper:Lcom/termux/app/FullScreenHelper;

    .line 162
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

    .line 165
    new-instance v0, Lcom/termux/app/TermuxActivity$1;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$1;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mBroadcastReceiever:Landroid/content/BroadcastReceiver;

    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mStatus:Ljava/util/Set;

    return-void
.end method

.method static extractUrls(Ljava/lang/String;)Ljava/util/LinkedHashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1029
    const-string v0, "(?:^|[\\W])((ht|f)tp(s?)://|www\\.)(([\\w\\-]+\\.)+?([\\w\\-.~]+/?)*[\\p{Alnum}.,%_=?&#\\-+()\\[\\]\\*$~@!:/{};\']*)"

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
    :goto_11
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1033
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

    goto :goto_11

    :cond_28
    return-object v1
.end method

.method private initDrawerToggle()V
    .registers 10

    .line 444
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 445
    const-string v1, "Terminal"

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 446
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 447
    new-instance v2, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    invoke-direct {v2, p0}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/termux/app/TermuxActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    .line 449
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v2

    if-nez v2, :cond_1b

    return-void

    .line 452
    :cond_1b
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 453
    new-instance v0, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    iget-object v6, p0, Lcom/termux/app/TermuxActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    const v7, 0x104000a

    const v8, 0x104000a

    move-object v3, v0

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidj/support/v4/widget/DrawerLayout;Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;II)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->sDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    .line 454
    invoke-virtual {v0}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->syncState()V

    .line 455
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->sDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    invoke-virtual {v2, v0}, Landroidj/support/v4/widget/DrawerLayout;->addDrawerListener(Landroidj/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 457
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 460
    const/4 v0, 0x0

    :try_start_3f
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 461
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010431

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 463
    nop

    .line 467
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    const v4, 0x1010429

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 468
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    if-eqz v3, :cond_6b

    .line 470
    iget-object v4, p0, Lcom/termux/app/TermuxActivity;->mDrawerArrow:Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v4, v3}, Lcom/s1243808733/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 472
    :cond_6b
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_6e
    .catchall {:try_start_3f .. :try_end_6e} :catchall_6f

    goto :goto_77

    :catchall_6f
    move-exception v2

    .line 475
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    :goto_77
    return-void
.end method

.method public static start(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 208
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->saveFiles()V

    .line 209
    const-class v0, Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/termux/app/ActivityCollector;->finishOneActivity(Ljava/lang/String;)V

    .line 210
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    const-string v0, "gradle"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private tryGetApkFile()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->GradleBuildShell:Ljava/lang/String;

    if-eqz v0, :cond_56

    .line 842
    new-instance v0, Lcom/termux/app/TermuxActivity$14;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$14;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/s1243808733/aide/GradleProject;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/s1243808733/aide/GradleProject;-><init>(Ljava/io/File;)V

    .line 850
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->GradleBuildShell:Ljava/lang/String;

    const-string v3, "assembleDebug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 851
    iget-object v1, v2, Lcom/s1243808733/aide/GradleProject;->outputsApkDebugDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 853
    :cond_41
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->GradleBuildShell:Ljava/lang/String;

    const-string v3, "assembleRelease"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 854
    iget-object v1, v2, Lcom/s1243808733/aide/GradleProject;->outputsApkReleaseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_56
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method aapt2error(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 481
    nop

    .line 482
    const-string v0, "AAPT2 \\w+.*-linux Daemon #0: Daemon startup failed"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 483
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 484
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 485
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 488
    :cond_16
    const-string p1, "[aapt2_available]"

    return-object p1
.end method

.method addNewSession(ZLjava/lang/String;)V
    .registers 6

    .line 954
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lt v0, v1, :cond_33

    .line 955
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "max_terminals_reached_title"

    invoke-static {p2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 956
    const-string p2, "max_terminals_reached_message"

    invoke-static {p2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 957
    const p2, 0x104000a

    invoke-virtual {p1, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_4a

    .line 959
    :cond_33
    nop

    .line 960
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    const-string v1, "/system/bin/sh"

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/termux/app/TermuxService;->createTermSession(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/terminal/TerminalSession;

    move-result-object p1

    if-eqz p2, :cond_40

    .line 963
    iput-object p2, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 965
    :cond_40
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    .line 966
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers()V

    :goto_4a
    return-void
.end method

.method changeFontSize(Z)V
    .registers 3

    .line 1191
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v0, p0, p1}, Lcom/termux/app/TermuxPreferences;->changeFontSize(Landroid/content/Context;Z)V

    .line 1192
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v0}, Lcom/termux/app/TermuxPreferences;->getFontSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/termux/view/TerminalView;->setTextSize(I)V

    return-void
.end method

.method checkForFontAndColors()V
    .registers 7

    .line 232
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_HOME_DIR:Ljava/io/File;

    const-string v2, ".termux/font.ttf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/termux/app/TermuxConstants;->TERMUX_HOME_DIR:Ljava/io/File;

    const-string v3, ".termux/colors.properties"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 237
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 238
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_6d

    .line 239
    :try_start_22
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_29

    .line 240
    :try_start_25
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_6d

    goto :goto_33

    :catchall_29
    move-exception v0

    .line 238
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v1

    :try_start_2f
    invoke-static {v0, v1}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_32
    throw v0

    .line 243
    :cond_33
    :goto_33
    sget-object v1, Lcom/termux/terminal/TerminalColors;->COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalColorScheme;->updateWith(Ljava/util/Properties;)V

    .line 244
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 245
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 246
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 248
    :cond_4d
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->updateBackgroundColor()V

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_65

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_67

    :cond_65
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 251
    :goto_67
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v1, v0}, Lcom/termux/view/TerminalView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_6c} :catch_6d

    goto :goto_75

    :catch_6d
    move-exception v0

    .line 253
    const-string v1, "termux"

    const-string v2, "Error in checkForFontAndColors()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_75
    return-void
.end method

.method doPaste()V
    .registers 3

    .line 1196
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1197
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 1199
    :cond_f
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public ensureStoragePermissionGranted()Z
    .registers 4

    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1a

    .line 268
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Lcom/termux/app/TermuxActivity;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 271
    :cond_10
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x4d2

    invoke-virtual {p0, v1, v0}, Lcom/termux/app/TermuxActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_1a
    return v2
.end method

.method public finish()V
    .registers 2

    .line 189
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 190
    invoke-super {p0}, Lcom/s1243808733/app/base/BaseActivity;->finish()V

    :cond_9
    return-void
.end method

.method getCurrentTermSession()Lcom/termux/terminal/TerminalSession;
    .registers 2

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

    if-eqz v0, :cond_7

    return-object v0

    .line 1207
    :cond_7
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    return-object v0

    .line 1209
    :cond_15
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/terminal/TerminalSession;

    return-object v0
.end method

.method protected isDisableDrag()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method isHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)Z
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mStatus:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method noteSessionInfo()V
    .registers 4

    .line 994
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-nez v0, :cond_5

    return-void

    .line 995
    :cond_5
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

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    .line 1100
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 1102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_ea

    .line 1173
    :pswitch_d  #0x2
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1170
    :pswitch_12  #0x8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/termux/app/TermuxHelpActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 1167
    :pswitch_1d  #0x7
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->toggleImmersive()V

    return v3

    .line 1144
    :pswitch_21  #0x6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1145
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.termux.styling.TermuxStyleActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    :try_start_2f
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_32
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_32} :catch_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_5d

    .line 1151
    :catch_33
    move-exception p1

    goto :goto_36

    :catch_35
    move-exception p1

    :goto_36
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1152
    const-string v0, "styling_not_installed"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1154
    const-string v0, "styling_install"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/termux/app/TermuxActivity$18;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$18;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 1153
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1161
    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1162
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_5d
    return v3

    :pswitch_5e  #0x5
    if-eqz v0, :cond_74

    .line 1137
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->reset()V

    .line 1138
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "reset_toast_notification"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    :cond_74
    return v3

    .line 1119
    :pswitch_75  #0x4
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1120
    const v0, 0x1080027

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1121
    const-string v0, "confirm_kill_process"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1122
    new-instance v0, Lcom/termux/app/TermuxActivity$17;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$17;-><init>(Lcom/termux/app/TermuxActivity;)V

    const v1, 0x1040013

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1131
    const v0, 0x1040009

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1132
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v3

    .line 1116
    :pswitch_9e  #0x3
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->doPaste()V

    return v3

    :pswitch_a2  #0x1
    if-eqz v0, :cond_e5

    .line 1108
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1109
    const-string v1, "text/plain"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getTranscriptText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    const-string v0, "share_transcript_title"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    const-string v0, "share_transcript_chooser_title"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    :cond_e5
    return v3

    .line 1104
    :pswitch_e6  #0x0
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->showUrlSelection()V

    return v3

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_e6  #00000000
        :pswitch_a2  #00000001
        :pswitch_d  #00000002
        :pswitch_9e  #00000003
        :pswitch_75  #00000004
        :pswitch_5e  #00000005
        :pswitch_21  #00000006
        :pswitch_1d  #00000007
        :pswitch_12  #00000008
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 282
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 284
    new-instance p1, Lcom/termux/app/TermuxPreferences;

    invoke-direct {p1, p0}, Lcom/termux/app/TermuxPreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    .line 286
    const-string p1, "drawer_layout"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getLayoutIdByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->setContentView(I)V

    .line 287
    const-string p1, "terminal_view"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/termux/view/TerminalView;

    iput-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    .line 288
    new-instance v0, Lcom/termux/app/TermuxViewClient;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxViewClient;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p1, v0}, Lcom/termux/view/TerminalView;->setOnKeyListener(Lcom/termux/view/TerminalViewClient;)V

    .line 290
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v0}, Lcom/termux/app/TermuxPreferences;->getFontSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/termux/view/TerminalView;->setTextSize(I)V

    .line 291
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mFullScreenHelper:Lcom/termux/app/FullScreenHelper;

    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v0}, Lcom/termux/app/TermuxPreferences;->isFullScreen()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/termux/app/FullScreenHelper;->setImmersive(Z)V

    .line 292
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->requestFocus()Z

    .line 294
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->initDrawerToggle()V

    .line 296
    const-string p1, "viewpager"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidj/support/v4/view/ViewPager;

    .line 297
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v0}, Lcom/termux/app/TermuxPreferences;->isShowExtraKeys()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    invoke-virtual {p1, v1}, Landroidj/support/v4/view/ViewPager;->setVisibility(I)V

    .line 299
    :cond_5f
    new-instance v0, Lcom/termux/app/TermuxActivity$2;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$2;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/ViewPager;->setAdapter(Landroidj/support/v4/view/PagerAdapter;)V

    .line 349
    new-instance v0, Lcom/termux/app/TermuxActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/termux/app/TermuxActivity$3;-><init>(Lcom/termux/app/TermuxActivity;Landroidj/support/v4/view/ViewPager;)V

    invoke-virtual {p1, v0}, Landroidj/support/v4/view/ViewPager;->addOnPageChangeListener(Landroidj/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 362
    const-string p1, "new_session_button"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 363
    new-instance v0, Lcom/termux/app/TermuxActivity$4;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$4;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    new-instance v0, Lcom/termux/app/TermuxActivity$5;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$5;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 399
    const-string p1, "toggle_keyboard_button"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/termux/app/TermuxActivity$6;

    invoke-direct {v2, p0}, Lcom/termux/app/TermuxActivity$6;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 400
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/termux/app/TermuxActivity$7;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$7;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 411
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 420
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 422
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/termux/app/TermuxService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const-string v3, "bindService() failed"

    if-lt v0, v2, :cond_cf

    .line 426
    invoke-static {p0, p1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Lcom/termux/app/TermuxActivity;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 427
    invoke-virtual {p0, p1, p0, v1}, Lcom/termux/app/TermuxActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_c9

    goto :goto_d8

    :cond_c9
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 430
    :cond_cf
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 431
    invoke-virtual {p0, p1, p0, v1}, Lcom/termux/app/TermuxActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 435
    :goto_d8
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->checkForFontAndColors()V

    return-void

    .line 431
    :cond_dc
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9

    .line 1007
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    .line 1010
    :cond_7
    const-string p3, "select_url"

    invoke-static {p3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1011
    const-string p3, "select_all_and_share"

    invoke-static {p3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result p3

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1, v0, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1012
    const-string p3, "reset_terminal"

    invoke-static {p3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result p3

    const/4 v2, 0x5

    invoke-interface {p1, v0, v2, v0, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1013
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string v2, "kill_process"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalSession;->getPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p3, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x4

    invoke-interface {p1, v0, v2, v0, p3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p3

    invoke-virtual {p2}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result p2

    invoke-interface {p3, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1014
    const-string p2, "toggle_fullscreen"

    invoke-static {p2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x7

    invoke-interface {p1, v0, p3, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object p2

    iget-object p3, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {p3}, Lcom/termux/app/TermuxPreferences;->isFullScreen()Z

    move-result p3

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1015
    const-string p2, "style_terminal"

    invoke-static {p2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x6

    invoke-interface {p1, v0, p3, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1016
    const-string p2, "help"

    invoke-static {p2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x8

    invoke-interface {p1, v0, p3, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .registers 3

    .line 939
    invoke-super {p0}, Lcom/s1243808733/app/base/BaseActivity;->onDestroy()V

    .line 941
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    if-eqz v0, :cond_c

    .line 943
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    .line 944
    iput-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    .line 946
    :cond_c
    invoke-virtual {p0, p0}, Lcom/termux/app/TermuxActivity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2c

    .line 892
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2c

    .line 894
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroidj/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 895
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_2a

    .line 898
    :cond_1c
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    if-eqz p1, :cond_27

    .line 899
    invoke-virtual {p1}, Lcom/termux/app/TermuxService;->stop()V

    .line 900
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    goto :goto_2a

    .line 901
    :cond_27
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    :goto_2a
    const/4 p1, 0x1

    return p1

    .line 934
    :cond_2c
    invoke-super {p0, p1, p2}, Lcom/s1243808733/app/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 790
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 218
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_12

    .line 220
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->sDrawerToggle:Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;

    if-eqz v0, :cond_12

    .line 221
    invoke-virtual {v0, p1}, Lcom/s1243808733/graphics/drawable/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 p1, 0x1

    return p1

    .line 225
    :cond_12
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    const/16 p2, 0x4d2

    if-ne p1, p2, :cond_f

    .line 1179
    array-length p1, p3

    if-lez p1, :cond_f

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_f

    .line 1180
    invoke-static {p0}, Lcom/termux/app/TermuxInstaller;->setupStorageSymlinks(Landroid/content/Context;)V

    :cond_f
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 504
    check-cast p2, Lcom/termux/app/TermuxService$LocalBinder;

    iget-object p1, p2, Lcom/termux/app/TermuxService$LocalBinder;->service:Lcom/termux/app/TermuxService;

    iput-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    .line 506
    new-instance p2, Lcom/termux/app/TermuxActivity$8;

    invoke-direct {p2, p0}, Lcom/termux/app/TermuxActivity$8;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object p2, p1, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    .line 683
    const-string p1, "left_drawer_list"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 684
    invoke-static {p1}, Lcom/s1243808733/aide/application/AppTheme;->customList(Landroid/widget/ListView;)V

    .line 685
    nop

    .line 686
    new-instance p2, Lcom/termux/app/TermuxActivity$9;

    const-string v0, "line_in_drawer"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getLayoutIdByName(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, p0, p0, v0, v1}, Lcom/termux/app/TermuxActivity$9;-><init>(Lcom/termux/app/TermuxActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    .line 727
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 728
    new-instance p2, Lcom/termux/app/TermuxActivity$10;

    invoke-direct {p2, p0}, Lcom/termux/app/TermuxActivity$10;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 737
    new-instance p2, Lcom/termux/app/TermuxActivity$11;

    invoke-direct {p2, p0}, Lcom/termux/app/TermuxActivity$11;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 747
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    if-eqz p1, :cond_62

    invoke-virtual {p1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_62

    .line 748
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {p1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_67

    .line 750
    :cond_62
    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    .line 763
    :goto_67
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    new-instance p2, Lcom/termux/app/TermuxActivity$12;

    invoke-direct {p2, p0}, Lcom/termux/app/TermuxActivity$12;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p1, p2}, Lcom/termux/view/TerminalView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 829
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    if-eqz p1, :cond_7

    .line 831
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 862
    invoke-super {p0}, Lcom/s1243808733/app/base/BaseActivity;->onStart()V

    .line 863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    .line 865
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    if-eqz v0, :cond_16

    .line 867
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getStoredCurrentSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    .line 868
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 871
    :cond_16
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

    .line 880
    invoke-super {p0}, Lcom/s1243808733/app/base/BaseActivity;->onStop()V

    .line 881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    .line 882
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 883
    invoke-static {p0, v0}, Lcom/termux/app/TermuxPreferences;->storeCurrentSession(Landroid/content/Context;Lcom/termux/terminal/TerminalSession;)V

    .line 884
    :cond_f
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mBroadcastReceiever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 885
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method

.method public removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V
    .registers 4

    .line 1231
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    .line 1233
    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxService;->removeTermSession(Lcom/termux/terminal/TerminalSession;)I

    move-result p1

    .line 1234
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1235
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1237
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    goto :goto_3c

    .line 1239
    :cond_1b
    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_2f

    .line 1240
    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 1242
    :cond_2f
    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    :goto_3c
    return-void
.end method

.method renameSession(Lcom/termux/terminal/TerminalSession;)V
    .registers 13

    .line 808
    nop

    .line 810
    const-string v0, "session_rename_title"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 812
    const-string v0, "session_rename_positive_button"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/termux/app/TermuxActivity$13;

    invoke-direct {v5, p0, p1}, Lcom/termux/app/TermuxActivity$13;-><init>(Lcom/termux/app/TermuxActivity;Lcom/termux/terminal/TerminalSession;)V

    .line 808
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v10}, Lcom/termux/app/DialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method setHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .registers 5

    .line 204
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mStatus:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method showToast(Ljava/lang/String;Z)V
    .registers 3

    .line 1220
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_f

    .line 1221
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 1223
    invoke-virtual {p2, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_f
    return-void
.end method

.method showUrlSelection()V
    .registers 4

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

    if-eqz v1, :cond_2d

    .line 1045
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "select_url_no_found"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 1049
    :cond_2d
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

    new-instance v2, Lcom/termux/app/TermuxActivity$15;

    invoke-direct {v2, p0, v0}, Lcom/termux/app/TermuxActivity$15;-><init>(Lcom/termux/app/TermuxActivity;[Ljava/lang/CharSequence;)V

    .line 1055
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1067
    const-string v2, "select_url_dialog_title"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1068
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1071
    new-instance v2, Lcom/termux/app/TermuxActivity$16;

    invoke-direct {v2, p0, v1, v0}, Lcom/termux/app/TermuxActivity$16;-><init>(Lcom/termux/app/TermuxActivity;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1095
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method switchToSession(Lcom/termux/terminal/TerminalSession;)V
    .registers 3

    .line 972
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->attachSession(Lcom/termux/terminal/TerminalSession;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 973
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->noteSessionInfo()V

    .line 974
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->updateBackgroundColor()V

    :cond_e
    return-void
.end method

.method public switchToSession(Z)V
    .registers 4

    .line 796
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 797
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz p1, :cond_20

    add-int/lit8 v0, v0, 0x1

    .line 799
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {p1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v0, p1, :cond_30

    const/4 v0, 0x0

    goto :goto_30

    :cond_20
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_30

    .line 801
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {p1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    .line 803
    :cond_30
    :goto_30
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {p1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;
    .registers 6

    .line 979
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 980
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 981
    iget-object v1, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, " "

    if-nez v1, :cond_36

    .line 982
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    :cond_36
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 985
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 987
    iget-object p1, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    if-nez p1, :cond_45

    goto :goto_47

    :cond_45
    const-string v2, "\n"

    :goto_47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method toggleImmersive()V
    .registers 3

    .line 1185
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v0}, Lcom/termux/app/TermuxPreferences;->isFullScreen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1186
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v1, p0, v0}, Lcom/termux/app/TermuxPreferences;->setFullScreen(Landroid/content/Context;Z)V

    .line 1187
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mFullScreenHelper:Lcom/termux/app/FullScreenHelper;

    invoke-virtual {v1, v0}, Lcom/termux/app/FullScreenHelper;->setImmersive(Z)V

    return-void
.end method

.method toggleShowExtraKeys()V
    .registers 4

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

    move-result v1

    if-eqz v1, :cond_16

    const/4 v2, 0x0

    goto :goto_18

    :cond_16
    const/16 v2, 0x8

    .line 494
    :goto_18
    invoke-virtual {v0, v2}, Landroidj/support/v4/view/ViewPager;->setVisibility(I)V

    if-eqz v1, :cond_31

    .line 495
    invoke-virtual {v0}, Landroidj/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 497
    const-string v0, "text_input"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_31
    return-void
.end method

.method updateBackgroundColor()V
    .registers 4

    .line 258
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 259
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v1

    if-eqz v1, :cond_23

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

    :cond_23
    return-void
.end method
