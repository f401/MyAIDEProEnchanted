.class Lcom/s1243808733/aide/AideMainActivity$17;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity;->addOthorToolMenu(Landroid/app/Activity;Landroid/view/SubMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/AideMainActivity;

.field final val$activity:Landroid/app/Activity;

.field final val$currentProject:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;Ljava/io/File;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1159
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$17;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$17;->val$currentProject:Ljava/io/File;

    iput-object p3, p0, Lcom/s1243808733/aide/AideMainActivity$17;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1163
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$17;->val$currentProject:Ljava/io/File;

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1164
    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity$17;->val$activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/s1243808733/util/BatchReplace;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
