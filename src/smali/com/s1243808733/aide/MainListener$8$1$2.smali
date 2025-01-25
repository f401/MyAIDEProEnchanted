.class Lcom/s1243808733/aide/MainListener$8$1$2;
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


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/MainListener$8$1;)V
    .registers 2

    .line 632
    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$8$1$2;->this$1:Lcom/s1243808733/aide/MainListener$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 636
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$8$1$2;->this$1:Lcom/s1243808733/aide/MainListener$8$1;

    iget-object v0, v0, Lcom/s1243808733/aide/MainListener$8$1;->val$g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 637
    const-string v0, "备份失败"

    const-string v1, "Backup failed"

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/util/Toasty;->info(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
