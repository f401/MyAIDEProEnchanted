.class Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000002;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000002;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000002;)Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000002;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    return-object v0
.end method


# virtual methods
.method public onDataSetChanged()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onSelection(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000002;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->access$1000007(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)V

    return-void
.end method
