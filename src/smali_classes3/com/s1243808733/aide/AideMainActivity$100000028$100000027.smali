.class Lcom/s1243808733/aide/AideMainActivity$100000028$100000027;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/AideMainActivity$100000028;

.field private final val$permissionsDeniedForever:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity$100000028;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$100000028$100000027;->this$0:Lcom/s1243808733/aide/AideMainActivity$100000028;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$100000028$100000027;->val$permissionsDeniedForever:Ljava/util/List;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/AideMainActivity$100000028$100000027;)Lcom/s1243808733/aide/AideMainActivity$100000028;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000028$100000027;->this$0:Lcom/s1243808733/aide/AideMainActivity$100000028;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1430
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000028$100000027;->val$permissionsDeniedForever:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000028$100000027;->this$0:Lcom/s1243808733/aide/AideMainActivity$100000028;

    invoke-static {v0}, Lcom/s1243808733/aide/AideMainActivity$100000028;->access$0(Lcom/s1243808733/aide/AideMainActivity$100000028;)Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/AideMainActivity;->access$1000057(Lcom/s1243808733/aide/AideMainActivity;)V

    .line 1433
    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->launchAppDetailsSettings()V

    goto :goto_0
.end method
