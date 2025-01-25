.class Lcom/termux/app/TermuxActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "TermuxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/TermuxActivity;
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

    .line 166
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 169
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean p1, p1, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-eqz p1, :cond_30

    .line 170
    const-string p1, "com.termux.app.reload_style"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 171
    const-string p2, "storage"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 172
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->ensureStoragePermissionGranted()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {p1}, Lcom/termux/app/TermuxInstaller;->setupStorageSymlinks(Landroid/content/Context;)V

    :cond_21
    return-void

    .line 175
    :cond_22
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->checkForFontAndColors()V

    .line 176
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget-object p2, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, p2}, Lcom/termux/app/TermuxPreferences;->reloadFromProperties(Landroid/content/Context;)V

    :cond_30
    return-void
.end method
