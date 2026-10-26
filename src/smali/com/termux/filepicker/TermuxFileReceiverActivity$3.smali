.class Lcom/termux/filepicker/TermuxFileReceiverActivity$3;
.super Ljava/lang/Object;
.source "TermuxFileReceiverActivity.java"

# interfaces
.implements Lcom/termux/app/DialogUtils$TextSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/filepicker/TermuxFileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

.field final val$in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$3;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    iput-object p2, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$3;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextSet(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    .line 126
    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$3;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    iget-object v1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$3;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0, v1, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->saveStreamWithName(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/termux/filepicker/TermuxFileReceiverActivity;->EDITOR_PROGRAM:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$3;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    const-string v1, "The following file does not exist:\n$HOME/bin/termux-file-editor\n\nCreate this file as a script or a symlink - it will be called with the received file as only argument."

    invoke-virtual {v0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v1, v4}, Ljava/io/File;->setExecutable(Z)Z

    .line 140
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Lcom/termux/filepicker/TermuxFileReceiverActivity;->EDITOR_PROGRAM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 142
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.termux.service_execute"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    iget-object v1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$3;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    const-class v3, Lcom/termux/app/TermuxService;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    const-string v1, "com.termux.execute.arguments"

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$3;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-virtual {v0, v2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 146
    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$3;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-virtual {v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    goto :goto_0
.end method
