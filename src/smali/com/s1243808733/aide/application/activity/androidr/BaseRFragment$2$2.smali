.class Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$2;
.super Ljava/lang/Object;
.source "BaseRFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$2;->this$1:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$2;->this$1:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$2;->this$1:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;

    iget v2, v2, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->copyToClipboard(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
