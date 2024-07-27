.class Lcom/s1243808733/aide/util/ConverProject$100000001$100000000;
.super Ljava/lang/Object;
.source "ConverProject.java"

# interfaces
.implements Lcom/s1243808733/aide/util/ConverProject$Listener;


# instance fields
.field private pg:Landroid/app/ProgressDialog;

.field private final this$0:Lcom/s1243808733/aide/util/ConverProject$100000001;

.field private final val$act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/util/ConverProject$100000001;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/ConverProject$100000001$100000000;->this$0:Lcom/s1243808733/aide/util/ConverProject$100000001;

    iput-object p2, p0, Lcom/s1243808733/aide/util/ConverProject$100000001$100000000;->val$act:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/util/ConverProject$100000001$100000000;)Lcom/s1243808733/aide/util/ConverProject$100000001;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$100000001$100000000;->this$0:Lcom/s1243808733/aide/util/ConverProject$100000001;

    return-object v0
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)V
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

    .line 53
    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$100000001$100000000;->pg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$100000001$100000000;->pg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$100000001$100000000;->pg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 54
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$100000001$100000000;->val$act:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u8f6c\u6362\u5b8c\u6210"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const-string v0, "accomplish"

    goto :goto_0
.end method

.method public onStart()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 47
    iget-object v2, p0, Lcom/s1243808733/aide/util/ConverProject$100000001$100000000;->val$act:Landroid/app/Activity;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u6b63\u5728\u8f6c\u6362..."

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v0, v1, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$100000001$100000000;->pg:Landroid/app/ProgressDialog;

    return-void

    :cond_0
    const-string v1, "Converting..."

    goto :goto_0
.end method
