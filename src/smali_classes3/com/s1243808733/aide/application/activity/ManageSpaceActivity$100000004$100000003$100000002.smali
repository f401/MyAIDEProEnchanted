.class Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;

.field private final val$btn:Landroid/widget/Button;

.field private final val$dirs:[Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;[Ljava/io/File;Landroid/widget/Button;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;->val$dirs:[Ljava/io/File;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;->val$btn:Landroid/widget/Button;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;)Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 116
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;->val$dirs:[Ljava/io/File;

    const/4 v0, 0x0

    .line 117
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;->access$0(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;)Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;->access$0(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;)Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002$100000001;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;->val$btn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;->val$dirs:[Ljava/io/File;

    invoke-direct {v1, p0, v2, v3}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002$100000001;-><init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;Landroid/widget/Button;[Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 116
    :cond_0
    aget-object v2, v1, v0

    .line 117
    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
