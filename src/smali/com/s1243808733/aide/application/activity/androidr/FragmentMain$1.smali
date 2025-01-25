.class Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$1;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

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

    .line 46
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    iget-object p4, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-virtual {p4}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->getActivity()Landroid/app/Activity;

    move-result-object p4

    const-class p5, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;

    invoke-direct {p2, p4, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p4, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-static {p4}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->-$$Nest$fgetfragmentAdapter(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    move-result-object p4

    .line 47
    const-string p5, "tag"

    invoke-virtual {p4, p3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->getTag(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iget-object p4, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-static {p4}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->-$$Nest$fgetfragmentAdapter(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    move-result-object p4

    .line 48
    const-string p5, "title"

    invoke-virtual {p4, p3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
