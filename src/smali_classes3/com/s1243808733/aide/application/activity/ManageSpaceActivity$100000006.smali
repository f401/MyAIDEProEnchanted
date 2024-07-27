.class Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000006;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

.field private final val$btn:Landroid/widget/Button;

.field private final val$dirs:[Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;[Ljava/io/File;Landroid/widget/Button;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000006;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000006;->val$dirs:[Ljava/io/File;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000006;->val$btn:Landroid/widget/Button;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000006;)Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000006;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

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

    .line 146
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000006;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000006;->val$dirs:[Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->getFolderSize([Ljava/io/File;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->sizeFormat(J)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000006;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    new-instance v2, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000006$100000005;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000006;->val$btn:Landroid/widget/Button;

    invoke-direct {v2, p0, v3, v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000006$100000005;-><init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000006;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
