.class Lio/github/zeroaicy/util/crash/CrashApphandler$1;
.super Ljava/lang/Object;
.source "CrashApphandler.java"

# interfaces
.implements Lio/github/zeroaicy/util/crash/CrashAppLog$OnCrashListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/zeroaicy/util/crash/CrashApphandler;->onCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lio/github/zeroaicy/util/crash/CrashApphandler;


# direct methods
.method constructor <init>(Lio/github/zeroaicy/util/crash/CrashApphandler;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashApphandler$1;->this$0:Lio/github/zeroaicy/util/crash/CrashApphandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrash(Ljava/lang/String;)V
    .registers 5

    .line 39
    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashApphandler$1;->this$0:Lio/github/zeroaicy/util/crash/CrashApphandler;

    iget-object v0, v0, Lio/github/zeroaicy/util/crash/CrashApphandler;->mContext:Landroid/content/Context;

    .line 40
    instance-of v1, v0, Landroid/app/Application;

    if-nez v1, :cond_a

    .line 41
    sget-object v0, Lio/github/zeroaicy/util/crash/CrashApplication;->mCrashApplication:Landroid/app/Application;

    :cond_a
    if-nez v0, :cond_10

    .line 44
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    :cond_10
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/github/zeroaicy/util/crash/CrashActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    const-string v2, "crash_log"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
