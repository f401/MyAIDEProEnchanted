.class Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->show(Landroid/app/Activity;Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

.field final val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 221
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object p1

    .line 222
    new-instance p4, Landroid/app/AlertDialog$Builder;

    iget-object p5, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p4, p5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    .line 224
    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getDescribe()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    .line 225
    iget-object p5, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {p5}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object p5

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->isSelected(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_3a

    const-string p1, "取消选择"

    goto :goto_48

    :cond_3a
    const-string p1, "cancel select"

    goto :goto_48

    :cond_3d
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_46

    const-string p1, "选择"

    goto :goto_48

    :cond_46
    const-string p1, "select"

    :goto_48
    new-instance p5, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;

    invoke-direct {p5, p0, p3, p2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;-><init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;ILandroid/view/View;)V

    invoke-virtual {p4, p1, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 243
    const/high16 p2, 0x1040000

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
