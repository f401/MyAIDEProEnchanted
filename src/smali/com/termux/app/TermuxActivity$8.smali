.class Lcom/termux/app/TermuxActivity$8;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Lcom/termux/terminal/TerminalSession$SessionChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .registers 2

    .line 507
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showInstallApkDialog(Lcom/termux/terminal/TerminalSession;)V
    .registers 5

    .line 584
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v1, "showInstallApkDialog"

    invoke-virtual {v0, p1, v1}, Lcom/termux/app/TermuxActivity;->isHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 586
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->-$$Nest$mtryGetApkFile(Lcom/termux/app/TermuxActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 590
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_61

    .line 591
    iget-object v2, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2, p1, v1}, Lcom/termux/app/TermuxActivity;->setHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    .line 593
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_35

    .line 594
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/s1243808733/aide/filebrowser/FileOptions;->showApkInfoDialog(Landroid/content/Context;Ljava/io/File;)Landroid/app/AlertDialog;

    goto :goto_61

    .line 597
    :cond_35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 598
    new-array v1, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    .line 599
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/termux/app/TermuxActivity$8$5;

    invoke-direct {v2, p0, v0}, Lcom/termux/app/TermuxActivity$8$5;-><init>(Lcom/termux/app/TermuxActivity$8;Ljava/util/List;)V

    .line 600
    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 608
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 609
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 611
    new-instance v0, Lcom/termux/app/TermuxActivity$8$6;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$8$6;-><init>(Lcom/termux/app/TermuxActivity$8;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_61
    :goto_61
    return-void
.end method


# virtual methods
.method public onBell(Lcom/termux/terminal/TerminalSession;)V
    .registers 4

    .line 662
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean p1, p1, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-nez p1, :cond_7

    return-void

    .line 664
    :cond_7
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget p1, p1, Lcom/termux/app/TermuxPreferences;->mBellBehaviour:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    goto :goto_20

    .line 669
    :cond_11
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_20
    return-void
.end method

.method public onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .registers 7

    .line 655
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean p1, p1, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-nez p1, :cond_7

    return-void

    .line 656
    :cond_7
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 657
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    new-instance p2, Landroid/content/ClipData;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "text/plain"

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-direct {p2, v2, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public onColorsChanged(Lcom/termux/terminal/TerminalSession;)V
    .registers 3

    .line 679
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-ne v0, p1, :cond_d

    iget-object p1, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->updateBackgroundColor()V

    :cond_d
    return-void
.end method

.method public onSessionFinished(Lcom/termux/terminal/TerminalSession;)V
    .registers 5

    .line 639
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    iget-boolean v0, v0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    if-eqz v0, :cond_e

    .line 641
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->finish()V

    return-void

    .line 644
    :cond_e
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean v0, v0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eq p1, v0, :cond_47

    .line 646
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_47

    .line 648
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2, p1}, Lcom/termux/app/TermuxActivity;->toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - exited"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    .line 650
    :cond_47
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onTextChanged(Lcom/termux/terminal/TerminalSession;)V
    .registers 8

    .line 511
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getTranscriptText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 513
    const-string v1, "gradle: inaccessible or not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x1040000

    if-eqz v1, :cond_74

    .line 514
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v1, "install_gradle"

    invoke-virtual {v0, p1, v1}, Lcom/termux/app/TermuxActivity;->isHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ec

    .line 515
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 516
    const-string v4, "没有安装Gradle"

    const-string v5, "Gradle is not installed"

    invoke-static {v4, v5}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 517
    const-string v4, "你要在线安装吗？"

    const-string v5, "Do you want to install it online?"

    invoke-static {v4, v5}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lcom/termux/app/TermuxActivity$8$1;

    invoke-direct {v4, p0}, Lcom/termux/app/TermuxActivity$8$1;-><init>(Lcom/termux/app/TermuxActivity$8;)V

    .line 518
    const v5, 0x1040013

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 525
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 528
    iget-object v2, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2, p1, v1}, Lcom/termux/app/TermuxActivity;->setHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    .line 530
    new-instance v1, Lcom/termux/app/TermuxActivity$8$2;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$8$2;-><init>(Lcom/termux/app/TermuxActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_ec

    .line 538
    :cond_74
    const-string v1, "BUILD SUCCESSFUL in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 540
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity$8;->showInstallApkDialog(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_ec

    .line 542
    :cond_80
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1, v0}, Lcom/termux/app/TermuxActivity;->aapt2error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 543
    const-string v1, "Unable to make field private final java.lang.String java.io.File.path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 544
    :cond_94
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v1, "aapt"

    invoke-virtual {v0, p1, v1}, Lcom/termux/app/TermuxActivity;->isHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ec

    .line 546
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 548
    const-string v4, "构建项目失败"

    const-string v5, "Failed to build the project"

    invoke-static {v4, v5}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 549
    const-string v4, "貌似是AAPT2版本过低导致的构建失败，请打开「 项目根目录/build.gradle 」后将「 4.1.2 」改成「 7.0.2 」或「 7.2.1 」重新编译。"

    const-string v5, "It seems that the construction failure caused by the low version of AAPT 2, please open the project root directory /build.gradle Change \"4.1.2\" to \"7.0.2\" or \"7.2.1\""

    invoke-static {v4, v5}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 551
    const-string v4, "跳到目录"

    const-string v5, "Go to the directory"

    invoke-static {v4, v5}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v5, Lcom/termux/app/TermuxActivity$8$3;

    invoke-direct {v5, p0}, Lcom/termux/app/TermuxActivity$8$3;-><init>(Lcom/termux/app/TermuxActivity$8;)V

    .line 550
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 565
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 568
    iget-object v2, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2, p1, v1}, Lcom/termux/app/TermuxActivity;->setHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    .line 569
    new-instance v1, Lcom/termux/app/TermuxActivity$8$4;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$8$4;-><init>(Lcom/termux/app/TermuxActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 579
    :cond_ec
    :goto_ec
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean v0, v0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-nez v0, :cond_f3

    return-void

    .line 580
    :cond_f3
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-ne v0, p1, :cond_102

    iget-object p1, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->onScreenUpdated()V

    :cond_102
    return-void
.end method

.method public onTitleChanged(Lcom/termux/terminal/TerminalSession;)V
    .registers 4

    .line 627
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean v0, v0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-nez v0, :cond_7

    return-void

    .line 628
    :cond_7
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eq p1, v0, :cond_19

    .line 632
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxActivity;->toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    .line 634
    :cond_19
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$8;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
