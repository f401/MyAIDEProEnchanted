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
    .registers 4
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
    .registers 3

    .line 1163
    iget-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$17;->val$currentProject:Ljava/io/File;

    invoke-static {p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 1164
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$17;->val$activity:Landroid/app/Activity;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :goto_10
    invoke-static {v0, p1}, Lcom/s1243808733/util/BatchReplace;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
