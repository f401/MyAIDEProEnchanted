.class Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;

.field private final val$btn:Landroid/widget/Button;

.field private final val$dirs:[Ljava/io/File;

.field private final val$l:Landroid/view/View$OnClickListener;

.field private final val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/widget/Button;[Ljava/io/File;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;->val$l:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;->val$btn:Landroid/widget/Button;

    iput-object p5, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;->val$dirs:[Ljava/io/File;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;)Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;->this$0:Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;->val$l:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;->val$l:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;->val$btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;->val$dirs:[Ljava/io/File;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;->val$btn:Landroid/widget/Button;

    invoke-direct {v1, p0, v2, v3}, Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003$100000002;-><init>(Lcom/s1243808733/aide/application/activity/ManageSpaceActivity$100000004$100000003;[Ljava/io/File;Landroid/widget/Button;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
