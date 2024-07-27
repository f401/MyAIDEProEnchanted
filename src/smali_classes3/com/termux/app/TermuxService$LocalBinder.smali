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

.field private final this$0:Lcom/termux/app/TermuxService;


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxService;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxService$LocalBinder;->this$0:Lcom/termux/app/TermuxService;

    iget-object v0, p0, Lcom/termux/app/TermuxService$LocalBinder;->this$0:Lcom/termux/app/TermuxService;

    iput-object v0, p0, Lcom/termux/app/TermuxService$LocalBinder;->service:Lcom/termux/app/TermuxService;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxService$LocalBinder;)Lcom/termux/app/TermuxService;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxService$LocalBinder;->this$0:Lcom/termux/app/TermuxService;

    return-object v0
.end method
