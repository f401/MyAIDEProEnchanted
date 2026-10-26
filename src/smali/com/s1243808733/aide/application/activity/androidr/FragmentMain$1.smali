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
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/s1243808733/aide/application/activity/androidr/AndroidRActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->-$$Nest$fgetfragmentAdapter(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    move-result-object v2

    .line 47
    const-string v3, "tag"

    invoke-virtual {v2, p3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->getTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$1;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->-$$Nest$fgetfragmentAdapter(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    move-result-object v2

    .line 48
    const-string v3, "title"

    invoke-virtual {v2, p3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
