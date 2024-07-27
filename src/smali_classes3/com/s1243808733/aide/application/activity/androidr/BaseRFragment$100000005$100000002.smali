.class Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000002;
.super Ljava/lang/Object;
.source "BaseRFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;

.field private final val$id:I


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000002;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;

    iput p2, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000002;->val$id:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000002;)Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000002;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000002;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;->access$0(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;)Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000002;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->copyToClipboard(Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    return v0
.end method
