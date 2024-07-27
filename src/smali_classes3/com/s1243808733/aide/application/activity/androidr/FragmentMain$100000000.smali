.class Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$100000000;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$100000000;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$100000000;)Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$100000000;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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

    .line 46
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$100000000;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$100000000;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    :try_start_0
    const-string v2, "com.s1243808733.aide.application.activity.androidr.AndroidRActivity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "tag"

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$100000000;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->access$L1000000(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->getTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$100000000;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;->access$L1000000(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
