.class Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000000;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

.field private final val$listener:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000000;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000000;->val$listener:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000000;)Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000000;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000000;->val$listener:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000000;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->access$L1000001(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;->onAdd(Ljava/util/List;)V

    return-void
.end method
