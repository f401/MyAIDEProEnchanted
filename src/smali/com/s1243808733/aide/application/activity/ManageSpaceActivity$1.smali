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
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$1;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 60
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->saveFiles()V

    .line 62
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$1;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->finish()V

    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->sClearApplUserDataing:Z

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/s1243808733/aide/application/service/ClearApplUserDataService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
