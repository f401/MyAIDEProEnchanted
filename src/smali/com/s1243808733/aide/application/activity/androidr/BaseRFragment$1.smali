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
    .registers 4
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
    .registers 5

    .line 97
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$1;->val$item:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    iget v0, v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->id:I

    const-string v1, "themeid"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "tag"

    const-string v1, "FragmentThemePreview"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "title"

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$1;->val$name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
