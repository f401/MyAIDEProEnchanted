.class Lcom/s1243808733/aide/AideMainActivity$27$1;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity$27;->onDenied(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/AideMainActivity$27;

.field final val$permissionsDeniedForever:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity$27;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1428
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$27$1;->this$1:Lcom/s1243808733/aide/AideMainActivity$27;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$27$1;->val$permissionsDeniedForever:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1432
    iget-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$27$1;->val$permissionsDeniedForever:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1433
    iget-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$27$1;->this$1:Lcom/s1243808733/aide/AideMainActivity$27;

    iget-object p1, p1, Lcom/s1243808733/aide/AideMainActivity$27;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/AideMainActivity;->-$$Nest$mrequestPermission(Lcom/s1243808733/aide/AideMainActivity;)V

    goto :goto_13

    .line 1435
    :cond_10
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->launchAppDetailsSettings()V

    :goto_13
    return-void
.end method
