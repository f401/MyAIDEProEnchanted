.class public Lio/github/zeroaicy/util/crash/CrashActivity;
.super Landroid/app/Activity;
.source "CrashActivity.java"


# instance fields
.field private log:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetlog(Lio/github/zeroaicy/util/crash/CrashActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/github/zeroaicy/util/crash/CrashActivity;->log:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcopyText(Lio/github/zeroaicy/util/crash/CrashActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/github/zeroaicy/util/crash/CrashActivity;->copyText(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreset(Lio/github/zeroaicy/util/crash/CrashActivity;)V
    .registers 1

    invoke-direct {p0}, Lio/github/zeroaicy/util/crash/CrashActivity;->reset()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private copyText(Ljava/lang/String;)V
    .registers 4

    .line 83
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/util/crash/CrashActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 85
    invoke-virtual {p0}, Lio/github/zeroaicy/util/crash/CrashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 86
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method private reset()V
    .registers 3

    .line 73
    invoke-virtual {p0}, Lio/github/zeroaicy/util/crash/CrashActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lio/github/zeroaicy/util/crash/CrashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 74
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Lio/github/zeroaicy/util/crash/CrashActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lio/github/zeroaicy/util/crash/CrashActivity;->finish()V

    .line 77
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 78
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lio/github/zeroaicy/util/crash/CrashActivity;->reset()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 20
    const v0, 0x1030237

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/util/crash/CrashActivity;->setTheme(I)V

    .line 21
    const-string v0, "CrashActivity"

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/util/crash/CrashActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 29
    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 31
    invoke-virtual {p0, p1}, Lio/github/zeroaicy/util/crash/CrashActivity;->setContentView(Landroid/view/View;)V

    .line 33
    invoke-virtual {p0}, Lio/github/zeroaicy/util/crash/CrashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "crash_log"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/util/crash/CrashActivity;->log:Ljava/lang/String;

    .line 34
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 38
    const/16 v2, 0x18

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    .line 50
    const v0, 0x1040001

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lio/github/zeroaicy/util/crash/CrashActivity$1;

    invoke-direct {v1, p0}, Lio/github/zeroaicy/util/crash/CrashActivity$1;-><init>(Lio/github/zeroaicy/util/crash/CrashActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 57
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 59
    const-string v0, "重启"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Lio/github/zeroaicy/util/crash/CrashActivity$2;

    invoke-direct {v2, p0}, Lio/github/zeroaicy/util/crash/CrashActivity$2;-><init>(Lio/github/zeroaicy/util/crash/CrashActivity;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 67
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
