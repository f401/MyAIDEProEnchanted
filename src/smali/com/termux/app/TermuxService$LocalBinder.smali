.class Lcom/termux/app/TermuxService$LocalBinder;
.super Landroid/os/Binder;
.source "TermuxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/TermuxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalBinder"
.end annotation


# instance fields
.field public final service:Lcom/termux/app/TermuxService;

.field final this$0:Lcom/termux/app/TermuxService;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxService;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/termux/app/TermuxService$LocalBinder;->this$0:Lcom/termux/app/TermuxService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/termux/app/TermuxService$LocalBinder;->service:Lcom/termux/app/TermuxService;

    return-void
.end method
