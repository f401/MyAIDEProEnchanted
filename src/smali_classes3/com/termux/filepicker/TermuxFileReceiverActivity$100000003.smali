.class Lcom/termux/filepicker/TermuxFileReceiverActivity$100000003;
.super Ljava/lang/Object;
.source "TermuxFileReceiverActivity.java"

# interfaces
.implements Lcom/termux/app/DialogUtils$TextSetListener;


# instance fields
.field private final this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

.field private final val$in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$100000003;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    iput-object p2, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$100000003;->val$in:Ljava/io/InputStream;

    return-void
.end method

.method static access$0(Lcom/termux/filepicker/TermuxFileReceiverActivity$100000003;)Lcom/termux/filepicker/TermuxFileReceiverActivity;
    .registers 2

    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$100000003;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    return-object v0
.end method


# virtual methods
.method public onTextSet(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$100000003;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    iget-object v1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$100000003;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0, v1, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->saveStreamWithName(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.termux.service_execute"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v1, "com.termux.execute.cwd"

    sget-object v2, Lcom/termux/filepicker/TermuxFileReceiverActivity;->TERMUX_RECEIVEDIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$100000003;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    :try_start_0
    const-string v2, "com.termux.app.TermuxService"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$100000003;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-virtual {v1, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$100000003;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-virtual {v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
