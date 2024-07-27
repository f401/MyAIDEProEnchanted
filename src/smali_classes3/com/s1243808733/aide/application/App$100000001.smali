.class Lcom/s1243808733/aide/application/App$100000001;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lcom/s1243808733/util/CrashUtils$OnCrashListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/App;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/App;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/App$100000001;->this$0:Lcom/s1243808733/aide/application/App;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/App$100000001;)Lcom/s1243808733/aide/application/App;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/App$100000001;->this$0:Lcom/s1243808733/aide/application/App;

    return-object v0
.end method


# virtual methods
.method public onCrash(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 142
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v0

    :try_start_0
    const-string v1, "com.s1243808733.util.CrashUtils$CrashActiviy"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    const-string v0, "crashInfo"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/s1243808733/aide/application/App$100000001;->this$0:Lcom/s1243808733/aide/application/App;

    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/application/App;->startActivity(Landroid/content/Intent;)V

    .line 146
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->exitApp()V

    return-void

    .line 142
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
