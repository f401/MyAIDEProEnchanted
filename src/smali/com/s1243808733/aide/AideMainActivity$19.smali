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
    .locals 0
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
    .locals 3

    .line 1187
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$19;->val$activity:Landroid/app/Activity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/AideMainActivity$19;->val$currentProject:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/util/ConverProject;->showDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/io/File;)V

    const/4 v0, 0x0

    return v0
.end method
