.class Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->bindData(Landroid/widget/Button;Landroid/view/View$OnClickListener;[Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

.field final val$btn:Landroid/widget/Button;

.field final val$dirs:[Ljava/io/File;

.field final val$l:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;Landroid/widget/Button;Landroid/view/View$OnClickListener;[Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->val$btn:Landroid/widget/Button;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->val$l:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->val$dirs:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->val$btn:Landroid/widget/Button;

    .line 101
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 102
    const-string v1, "确定要清除此数据吗?"

    const-string v2, "Do you want to clear this data?"

    invoke-static {v1, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;-><init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;Landroid/view/View;)V

    .line 103
    const p1, 0x1040013

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 130
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
