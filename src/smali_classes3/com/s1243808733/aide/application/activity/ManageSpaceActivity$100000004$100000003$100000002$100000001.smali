.class Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002$100000001;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;

.field private final val$btn:Landroid/widget/Button;

.field private final val$dirs:[Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;Landroid/widget/Button;[Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002$100000001;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002$100000001;->val$btn:Landroid/widget/Button;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002$100000001;->val$dirs:[Ljava/io/File;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002$100000001;)Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002$100000001;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002$100000001;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;->access$0(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;)Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;->access$0(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;)Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;->access$0(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;)Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002$100000001;->val$btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002$100000001;->val$dirs:[Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->access$1000015(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;Landroid/widget/Button;[Ljava/io/File;)V

    return-void
.end method
