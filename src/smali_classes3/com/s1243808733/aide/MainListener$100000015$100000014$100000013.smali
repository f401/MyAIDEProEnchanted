.class Lcom/s1243808733/aide/MainListener$100000015$100000014$100000013;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/MainListener$100000015$100000014;

.field private final val$g:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/MainListener$100000015$100000014;Landroid/app/ProgressDialog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014$100000013;->this$0:Lcom/s1243808733/aide/MainListener$100000015$100000014;

    iput-object p2, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014$100000013;->val$g:Landroid/app/ProgressDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/MainListener$100000015$100000014$100000013;)Lcom/s1243808733/aide/MainListener$100000015$100000014;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014$100000013;->this$0:Lcom/s1243808733/aide/MainListener$100000015$100000014;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000015$100000014$100000013;->val$g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 637
    const-string v0, "\u5907\u4efd\u5931\u8d25"

    const-string v1, "Backup failed"

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/util/Toasty;->info(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
