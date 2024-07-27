.class Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000000;
.super Ljava/lang/Object;
.source "BaseRFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

.field private final val$item:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

.field private final val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000000;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000000;->val$item:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000000;->val$name:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000000;)Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000000;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

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

    .line 97
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000000;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000000;->this$0:Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    :try_start_0
    const-string v2, "com.s1243808733.aide.application.activity.androidr.AndroidRActivity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "themeid"

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000000;->val$item:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    iget v2, v2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->id:I

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tag"

    const-string v3, "FragmentThemePreview"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$100000000;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
