.class Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000006;
.super Ljava/lang/Object;
.source "BaseRFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000006;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000006;)Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000006;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000006;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->access$L1000000(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;)Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000006;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->showDialog(Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;)V

    return-void
.end method
