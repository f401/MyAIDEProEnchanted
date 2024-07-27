.class Lcom/s1243808733/aide/AppUpdater$100000003;
.super Ljava/lang/Object;
.source "AppUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/AppUpdater;

.field private final val$updateData:Lcom/s1243808733/data/AppUpdateData;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AppUpdater;Lcom/s1243808733/data/AppUpdateData;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AppUpdater$100000003;->this$0:Lcom/s1243808733/aide/AppUpdater;

    iput-object p2, p0, Lcom/s1243808733/aide/AppUpdater$100000003;->val$updateData:Lcom/s1243808733/data/AppUpdateData;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/AppUpdater$100000003;)Lcom/s1243808733/aide/AppUpdater;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AppUpdater$100000003;->this$0:Lcom/s1243808733/aide/AppUpdater;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aidero_update_ignored_version"

    iget-object v2, p0, Lcom/s1243808733/aide/AppUpdater$100000003;->val$updateData:Lcom/s1243808733/data/AppUpdateData;

    invoke-virtual {v2}, Lcom/s1243808733/data/AppUpdateData;->getData()Lcom/s1243808733/data/AppUpdateData$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/data/AppUpdateData$Data;->getVersionCode()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
