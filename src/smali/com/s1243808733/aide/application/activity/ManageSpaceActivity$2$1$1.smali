.class Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$2:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;->this$2:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;->this$2:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;

    iget-object v1, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->val$dirs:[Ljava/io/File;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 117
    invoke-static {v3}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;->this$2:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    new-instance v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1$1;-><init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
