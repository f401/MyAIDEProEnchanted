.class Lcom/termux/filepicker/TermuxFileReceiverActivity$4;
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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$4;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    iput-object p2, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$4;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextSet(Ljava/lang/String;)V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$4;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    iget-object v1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$4;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0, v1, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->saveStreamWithName(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    .line 154
    :cond_b
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.termux.service_execute"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v0, "com.termux.execute.cwd"

    sget-object v1, Lcom/termux/filepicker/TermuxFileReceiverActivity;->TERMUX_RECEIVEDIR:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$4;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    const-class v1, Lcom/termux/app/TermuxService;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 157
    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$4;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-virtual {v0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    iget-object p1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$4;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-virtual {p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    return-void
.end method
