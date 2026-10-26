.class Lcom/s1243808733/aide/AideMainActivity$20;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity;->addOthorToolMenu(Landroid/app/Activity;Landroid/view/SubMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/AideMainActivity;

.field final val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1195
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$20;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$20;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1199
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$20;->val$activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/s1243808733/aide/AideMainActivity$20;->val$activity:Landroid/app/Activity;

    const-class v3, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->startActivityTransition(Landroid/app/Activity;Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method
