.class Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$1;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$1;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 60
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->saveFiles()V

    .line 62
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$1;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->finish()V

    .line 65
    const/4 p1, 0x1

    sput-boolean p1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->sClearApplUserDataing:Z

    .line 66
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-class v1, Lcom/s1243808733/aide/application/service/ClearApplUserDataService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
