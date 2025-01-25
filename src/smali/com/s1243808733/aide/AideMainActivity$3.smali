.class Lcom/s1243808733/aide/AideMainActivity$3;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/AideMainActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$3;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 261
    invoke-static {}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->preload()V

    .line 262
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$3;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/AideMainActivity;->-$$Nest$minitUserFiles(Lcom/s1243808733/aide/AideMainActivity;)V

    return-void
.end method
