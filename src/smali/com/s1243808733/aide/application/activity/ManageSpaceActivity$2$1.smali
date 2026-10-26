.class Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;

.field final val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->val$l:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->val$l:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 127
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->val$btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;-><init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
