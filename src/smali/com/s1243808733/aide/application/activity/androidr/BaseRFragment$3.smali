.class Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$3;
.super Ljava/lang/Object;
.source "BaseRFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->onViewCreated(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$3;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 173
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$3;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;)Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    move-result-object p1

    .line 174
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$3;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    invoke-virtual {p2, p1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->showDialog(Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;)V

    return-void
.end method
