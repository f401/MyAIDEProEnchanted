.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$1;
.super Landroid/database/DataSetObserver;
.source "IconActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->onPostExecute(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;)V
    .registers 2

    .line 708
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 710
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetmTipsView(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onInvalidated()V
    .registers 3

    .line 714
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetmTipsView(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
