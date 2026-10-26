.class Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$3;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;


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


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$3;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 0

    return-void
.end method

.method public onSelection(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$3;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$mupdateDialogTitle(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)V

    return-void
.end method
