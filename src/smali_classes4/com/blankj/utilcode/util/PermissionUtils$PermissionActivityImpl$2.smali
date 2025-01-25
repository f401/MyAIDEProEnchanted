.class Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener$ShouldRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->onCreated(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

.field final val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$2;->this$0:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    iput-object p2, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$2;->val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Z)V
    .registers 4

    if-nez p1, :cond_8

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$2;->val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsTransActivity;->finish()V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$2;->this$0:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    iget-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$2;->val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->access$700(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    goto :goto_7
.end method
