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
    .registers 2

    .line 50
    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashActivity$1;->this$0:Lio/github/zeroaicy/util/crash/CrashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 54
    iget-object p1, p0, Lio/github/zeroaicy/util/crash/CrashActivity$1;->this$0:Lio/github/zeroaicy/util/crash/CrashActivity;

    invoke-static {p1}, Lio/github/zeroaicy/util/crash/CrashActivity;->-$$Nest$fgetlog(Lio/github/zeroaicy/util/crash/CrashActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/zeroaicy/util/crash/CrashActivity;->-$$Nest$mcopyText(Lio/github/zeroaicy/util/crash/CrashActivity;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
