.class Lcom/s1243808733/aide/AideMainActivity$2;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroidj/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/AideMainActivity;

.field final val$mSwipeRefreshLayout:Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$2;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$2;->val$mSwipeRefreshLayout:Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 4

    .line 228
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->isGranted([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 229
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$2;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/AideMainActivity;->-$$Nest$mrequestPermission(Lcom/s1243808733/aide/AideMainActivity;)V

    goto :goto_17

    .line 231
    :cond_14
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->reLoadFileBrowser()V

    .line 233
    :goto_17
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$2;->val$mSwipeRefreshLayout:Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
