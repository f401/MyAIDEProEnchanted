.class Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$1;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final val$listener:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$1;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$1;->val$listener:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 146
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$1;->val$listener:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;

    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$1;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetselectedList(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;->onAdd(Ljava/util/List;)V

    return-void
.end method
