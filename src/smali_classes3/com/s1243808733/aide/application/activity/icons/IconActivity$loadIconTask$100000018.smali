.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$100000018;
.super Landroid/database/DataSetObserver;
.source "IconActivity.java"


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;)V
    .registers 2

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$100000018;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$100000018;)Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$100000018;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;

    return-object v0
.end method


# virtual methods
.method public onChanged()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$100000018;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000007(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onInvalidated()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$100000018;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000007(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
