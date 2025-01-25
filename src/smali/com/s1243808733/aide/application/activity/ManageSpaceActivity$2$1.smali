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
    .registers 3
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
    .registers 3

    .line 107
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->val$l:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_10

    .line 108
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->val$l:Landroid/view/View$OnClickListener;

    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->val$view:Landroid/view/View;

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    .line 111
    :cond_10
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->val$btn:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;

    invoke-direct {p2, p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;-><init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
