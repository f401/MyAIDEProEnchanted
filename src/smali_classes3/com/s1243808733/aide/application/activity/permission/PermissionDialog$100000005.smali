.class Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

.field private final val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;->val$activity:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;)Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->access$L1000004(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v0

    .line 222
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getDescribe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->access$L1000004(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->isSelected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u53d6\u6d88\u9009\u62e9"

    :goto_0
    new-instance v2, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005$100000004;

    invoke-direct {v2, p0, p3, p2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005$100000004;-><init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;ILandroid/view/View;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 246
    const/4 v0, 0x1

    return v0

    .line 222
    :cond_0
    const-string v0, "cancel select"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u9009\u62e9"

    goto :goto_0

    :cond_2
    const-string v0, "select"

    goto :goto_0
.end method
