.class Lcom/s1243808733/aide/AideMainActivity$100000001;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroidj/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/AideMainActivity;

.field private final val$mSwipeRefreshLayout:Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$100000001;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$100000001;->val$mSwipeRefreshLayout:Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/AideMainActivity$100000001;)Lcom/s1243808733/aide/AideMainActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000001;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    return-object v0
.end method


# virtual methods
.method public onRefresh()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x0

    .line 227
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->isGranted([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000001;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/AideMainActivity;->access$1000057(Lcom/s1243808733/aide/AideMainActivity;)V

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000001;->val$mSwipeRefreshLayout:Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/widget/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 230
    :cond_0
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->reLoadFileBrowser()V

    goto :goto_0
.end method
