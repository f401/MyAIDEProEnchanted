.class Lcom/s1243808733/aide/AideMainActivity$19;
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
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;Landroid/app/Activity;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1183
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$19;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$19;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/s1243808733/aide/AideMainActivity$19;->val$currentProject:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1187
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$19;->val$activity:Landroid/app/Activity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lcom/s1243808733/aide/AideMainActivity$19;->val$currentProject:Ljava/io/File;

    invoke-static {v0, p1, v1}, Lcom/s1243808733/aide/util/ConverProject;->showDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/io/File;)V

    const/4 p1, 0x0

    return p1
.end method
