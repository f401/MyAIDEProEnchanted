.class Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$1;
.super Ljava/lang/Object;
.source "BaseRFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->showDialog(Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

.field final val$item:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

.field final val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$1;->val$item:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "themeid"

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$1;->val$item:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    iget v3, v3, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tag"

    const-string v3, "FragmentThemePreview"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$1;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
