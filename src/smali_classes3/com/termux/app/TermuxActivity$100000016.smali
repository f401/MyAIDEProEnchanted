.class Lcom/termux/app/TermuxActivity$100000016;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Lcom/termux/terminal/TerminalSession$SessionChangedCallback;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxActivity$100000016;)Lcom/termux/app/TermuxActivity;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    return-object v0
.end method

.method private showInstallApkDialog(Lcom/termux/terminal/TerminalSession;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 584
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v1, "showInstallApkDialog"

    invoke-virtual {v0, p1, v1}, Lcom/termux/app/TermuxActivity;->isHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->access$1000049(Lcom/termux/app/TermuxActivity;)Ljava/util/List;

    move-result-object v1

    .line 588
    if-eqz v1, :cond_0

    .line 590
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v2, "showInstallApkDialog"

    invoke-virtual {v0, p1, v2}, Lcom/termux/app/TermuxActivity;->setHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    .line 593
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 594
    iget-object v2, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/s1243808733/aide/filebrowser/FileOptions;->showApkInfoDialog(Landroid/content/Context;Ljava/io/File;)Landroid/app/AlertDialog;

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 598
    new-array v2, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 599
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/termux/app/TermuxActivity$100000016$100000014;

    invoke-direct {v3, p0, v1}, Lcom/termux/app/TermuxActivity$100000016$100000014;-><init>(Lcom/termux/app/TermuxActivity$100000016;Ljava/util/List;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 611
    new-instance v1, Lcom/termux/app/TermuxActivity$100000016$100000015;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$100000016$100000015;-><init>(Lcom/termux/app/TermuxActivity$100000016;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onBell(Lcom/termux/terminal/TerminalSession;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 662
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean v0, v0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-nez v0, :cond_0

    .line 673
    :goto_0
    :pswitch_0
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget v0, v0, Lcom/termux/app/TermuxPreferences;->mBellBehaviour:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 669
    :pswitch_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/16 v1, 0x32

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 664
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean v0, v0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-nez v0, :cond_0

    .line 657
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 657
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Landroid/content/ClipData$Item;

    invoke-direct {v2, p2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/content/ClipData;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "text/plain"

    aput-object v6, v4, v5

    invoke-direct {v3, v1, v4, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0
.end method

.method public onColorsChanged(Lcom/termux/terminal/TerminalSession;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 679
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->updateBackgroundColor()V

    :cond_0
    return-void
.end method

.method public onSessionFinished(Lcom/termux/terminal/TerminalSession;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    iget-boolean v0, v0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->finish()V

    .line 650
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean v0, v0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 648
    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2, p1}, Lcom/termux/app/TermuxActivity;->toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " - exited"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onTextChanged(Lcom/termux/terminal/TerminalSession;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    const/high16 v4, 0x1040000

    .line 511
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

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
    const-string v2, "gradle: inaccessible or not found"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v2, "install_gradle"

    invoke-virtual {v0, p1, v2}, Lcom/termux/app/TermuxActivity;->isHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "\u6ca1\u6709\u5b89\u88c5Gradle"

    const-string v3, "Gradle is not installed"

    invoke-static {v0, v3}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v0, "\u4f60\u8981\u5728\u7ebf\u5b89\u88c5\u5417\uff1f"

    const-string v3, "Do you want to install it online?"

    invoke-static {v0, v3}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040013

    new-instance v3, Lcom/termux/app/TermuxActivity$100000016$100000010;

    invoke-direct {v3, p0}, Lcom/termux/app/TermuxActivity$100000016$100000010;-><init>(Lcom/termux/app/TermuxActivity$100000016;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 528
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v2, "install_gradle"

    invoke-virtual {v1, p1, v2}, Lcom/termux/app/TermuxActivity;->setHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    .line 530
    new-instance v1, Lcom/termux/app/TermuxActivity$100000016$100000011;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$100000016$100000011;-><init>(Lcom/termux/app/TermuxActivity$100000016;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 579
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean v0, v0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-nez v0, :cond_5

    .line 580
    :cond_1
    :goto_1
    return-void

    .line 538
    :cond_2
    const-string v2, "BUILD SUCCESSFUL in"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 540
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity$100000016;->showInstallApkDialog(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_0

    .line 542
    :cond_3
    iget-object v2, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2, v0}, Lcom/termux/app/TermuxActivity;->aapt2error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Unable to make field private final java.lang.String java.io.File.path"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    :cond_4
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v2, "aapt"

    invoke-virtual {v0, p1, v2}, Lcom/termux/app/TermuxActivity;->isHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "\u6784\u5efa\u9879\u76ee\u5931\u8d25"

    const-string v3, "Failed to build the project"

    invoke-static {v0, v3}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v0, "\u8c8c\u4f3c\u662fAAPT2\u7248\u672c\u8fc7\u4f4e\u5bfc\u81f4\u7684\u6784\u5efa\u5931\u8d25\uff0c\u8bf7\u6253\u5f00\u300c \u9879\u76ee\u6839\u76ee\u5f55/build.gradle \u300d\u540e\u5c06\u300c 4.1.2 \u300d\u6539\u6210\u300c 7.0.2 \u300d\u6216\u300c 7.2.1 \u300d\u91cd\u65b0\u7f16\u8bd1\u3002"

    const-string v3, "It seems that the construction failure caused by the low version of AAPT 2, please open the project root directory /build.gradle Change \"4.1.2\" to \"7.0.2\" or \"7.2.1\""

    invoke-static {v0, v3}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v0, "\u8df3\u5230\u76ee\u5f55"

    const-string v3, "Go to the directory"

    invoke-static {v0, v3}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/termux/app/TermuxActivity$100000016$100000012;

    invoke-direct {v3, p0}, Lcom/termux/app/TermuxActivity$100000016$100000012;-><init>(Lcom/termux/app/TermuxActivity$100000016;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 568
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v2, "aapt"

    invoke-virtual {v1, p1, v2}, Lcom/termux/app/TermuxActivity;->setHandled(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    .line 569
    new-instance v1, Lcom/termux/app/TermuxActivity$100000016$100000013;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$100000016$100000013;-><init>(Lcom/termux/app/TermuxActivity$100000016;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 580
    :cond_5
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->onScreenUpdated()V

    goto/16 :goto_1
.end method

.method public onTitleChanged(Lcom/termux/terminal/TerminalSession;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 627
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean v0, v0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-nez v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1, p1}, Lcom/termux/app/TermuxActivity;->toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
