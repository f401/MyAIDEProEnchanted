.class Lcom/s1243808733/aide/application/activity/androidr/FragmentString$100000000;
.super Ljava/lang/Object;
.source "FragmentString.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$100000000;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/FragmentString$100000000;)Lcom/s1243808733/aide/application/activity/androidr/FragmentString;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$100000000;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;

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

    .line 50
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$100000000;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$100000000;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->access$L1000000(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;)Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->showDialog(Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;)V

    return-void
.end method
