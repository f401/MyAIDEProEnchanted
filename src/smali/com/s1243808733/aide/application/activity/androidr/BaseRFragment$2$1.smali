.class Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$1;
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

    .line 115
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$1;->this$1:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 119
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$1;->this$1:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2$1;->this$1:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;->val$name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->copyToClipboard(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
