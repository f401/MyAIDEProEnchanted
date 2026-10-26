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
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean v0, v0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "com.termux.app.reload_style"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, "storage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->ensureStoragePermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/TermuxInstaller;->setupStorageSymlinks(Landroid/content/Context;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->checkForFontAndColors()V

    .line 176
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity$1;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxPreferences;->reloadFromProperties(Landroid/content/Context;)V

    goto :goto_0
.end method
