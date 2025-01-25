.class Lcom/s1243808733/aide/MainListener$8$1$1;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/MainListener$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/MainListener$8$1;

.field final val$out:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/MainListener$8$1;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 622
    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$8$1$1;->this$1:Lcom/s1243808733/aide/MainListener$8$1;

    iput-object p2, p0, Lcom/s1243808733/aide/MainListener$8$1$1;->val$out:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 626
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$8$1$1;->this$1:Lcom/s1243808733/aide/MainListener$8$1;

    iget-object v0, v0, Lcom/s1243808733/aide/MainListener$8$1;->val$g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "项目已备份到："

    const-string v2, "Project to backup to "

    invoke-static {v1, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$8$1$1;->val$out:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/util/Toasty;->info(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
