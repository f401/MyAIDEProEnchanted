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
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/s1243808733/aide/application/App$2;->this$0:Lcom/s1243808733/aide/application/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrash(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 154
    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v0

    const-class v1, Lcom/s1243808733/util/CrashUtils$CrashActiviy;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    const-string v0, "crashInfo"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object p1, p0, Lcom/s1243808733/aide/application/App$2;->this$0:Lcom/s1243808733/aide/application/App;

    invoke-virtual {p1, p2}, Lcom/s1243808733/aide/application/App;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->exitApp()V

    return-void
.end method
