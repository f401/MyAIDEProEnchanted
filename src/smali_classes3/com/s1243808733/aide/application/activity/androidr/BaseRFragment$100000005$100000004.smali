.class Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000004;
.super Ljava/lang/Object;
.source "BaseRFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;

.field private final val$code_xml:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000004;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000004;->val$code_xml:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000004;)Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000004;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000004;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;->access$0(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005;)Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000005$100000004;->val$code_xml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->copyToClipboard(Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    return v0
.end method
