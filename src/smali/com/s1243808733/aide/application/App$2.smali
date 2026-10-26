.class Lcom/s1243808733/aide/application/App$2;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lcom/s1243808733/util/CrashUtils$OnCrashListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/App;->initUtils()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/App;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/App;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/s1243808733/aide/application/App$2;->this$0:Lcom/s1243808733/aide/application/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrash(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v1

    const-class v2, Lcom/s1243808733/util/CrashUtils$CrashActiviy;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    const-string v1, "crashInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/s1243808733/aide/application/App$2;->this$0:Lcom/s1243808733/aide/application/App;

    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/application/App;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->exitApp()V

    return-void
.end method
