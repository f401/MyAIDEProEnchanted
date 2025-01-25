.class Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->refresh(Landroid/widget/Button;[Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

.field final val$btn:Landroid/widget/Button;

.field final val$dirs:[Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;[Ljava/io/File;Landroid/widget/Button;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$dirs:[Ljava/io/File;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$btn:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->val$dirs:[Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->getFolderSize([Ljava/io/File;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->sizeFormat(J)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    new-instance v2, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3$1;-><init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
