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
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$2;->this$1:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 129
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$2;->this$1:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$2;->this$1:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;

    iget v1, v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->val$id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->copyToClipboard(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
