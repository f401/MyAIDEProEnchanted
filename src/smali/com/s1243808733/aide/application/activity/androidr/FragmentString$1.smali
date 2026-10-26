.class Lcom/s1243808733/aide/application/activity/androidr/FragmentString$1;
.super Ljava/lang/Object;
.source "FragmentString.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->onViewCreated(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;)Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->showDialog(Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;)V

    return-void
.end method
