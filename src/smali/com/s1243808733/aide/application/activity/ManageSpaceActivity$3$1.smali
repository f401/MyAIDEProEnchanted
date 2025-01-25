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
    .registers 3
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
    .registers 8

    .line 163
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 164
    const/4 v1, 0x0

    const-string v2, "（%s）"

    const/4 v3, 0x1

    if-nez v0, :cond_4a

    .line 165
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$btn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    iget-object v4, v4, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$btn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$btn:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    iget-object v5, v5, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$btn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->val$size:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6f

    .line 169
    :cond_4a
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    iget-object v4, v4, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$btn:Landroid/widget/Button;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->val$size:Ljava/lang/String;

    aput-object v6, v0, v1

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_6f
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
