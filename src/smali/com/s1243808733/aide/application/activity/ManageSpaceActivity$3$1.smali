.class Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

.field final val$size:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->val$size:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 163
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 164
    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    iget-object v1, v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$btn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$btn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    iget-object v2, v2, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$btn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\uff08%s\uff09"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->val$size:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$btn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    iget-object v1, v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$btn:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff08%s\uff09"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->val$size:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
