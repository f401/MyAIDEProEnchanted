.class Lcom/s1243808733/aide/AppUpdater$100000001;
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

    iput-object p1, p0, Lcom/s1243808733/aide/AppUpdater$100000001;->this$0:Lcom/s1243808733/aide/AppUpdater;

    iput-object p2, p0, Lcom/s1243808733/aide/AppUpdater$100000001;->val$updateData:Lcom/s1243808733/data/AppUpdateData;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/AppUpdater$100000001;)Lcom/s1243808733/aide/AppUpdater;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AppUpdater$100000001;->this$0:Lcom/s1243808733/aide/AppUpdater;

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

    .line 105
    iget-object v0, p0, Lcom/s1243808733/aide/AppUpdater$100000001;->val$updateData:Lcom/s1243808733/data/AppUpdateData;

    invoke-virtual {v0}, Lcom/s1243808733/data/AppUpdateData;->getData()Lcom/s1243808733/data/AppUpdateData$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/data/AppUpdateData$Data;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->openUrl(Ljava/lang/String;)V

    return-void
.end method
