.class Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1$1;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$3:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1$1;->this$3:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1$1;->this$3:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;->this$2:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1$1;->this$3:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;

    iget-object v1, v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;->this$2:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;

    iget-object v1, v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;

    iget-object v1, v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->val$btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1$1;->this$3:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;

    iget-object v2, v2, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1$1;->this$2:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;

    iget-object v2, v2, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2$1;->this$1:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;

    iget-object v2, v2, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$2;->val$dirs:[Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;->-$$Nest$mrefresh(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity;Landroid/widget/Button;[Ljava/io/File;)V

    return-void
.end method
