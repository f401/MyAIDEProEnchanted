.class Lio/github/zeroaicy/util/crash/CrashActivity$1;
.super Ljava/lang/Object;
.source "CrashActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/zeroaicy/util/crash/CrashActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lio/github/zeroaicy/util/crash/CrashActivity;


# direct methods
.method constructor <init>(Lio/github/zeroaicy/util/crash/CrashActivity;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashActivity$1;->this$0:Lio/github/zeroaicy/util/crash/CrashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 54
    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashActivity$1;->this$0:Lio/github/zeroaicy/util/crash/CrashActivity;

    invoke-static {v0}, Lio/github/zeroaicy/util/crash/CrashActivity;->-$$Nest$fgetlog(Lio/github/zeroaicy/util/crash/CrashActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/crash/CrashActivity;->-$$Nest$mcopyText(Lio/github/zeroaicy/util/crash/CrashActivity;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
