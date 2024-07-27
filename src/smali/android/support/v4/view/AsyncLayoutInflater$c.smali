.class Landroid/support/v4/view/AsyncLayoutInflater$c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final j6:Landroid/support/v4/view/AsyncLayoutInflater$c;


# instance fields
.field private DW:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroid/support/v4/view/AsyncLayoutInflater$b;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Labcd/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv",
            "<",
            "Landroid/support/v4/view/AsyncLayoutInflater$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$c;

    invoke-direct {v0}, Landroid/support/v4/view/AsyncLayoutInflater$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/AsyncLayoutInflater$c;->j6:Landroid/support/v4/view/AsyncLayoutInflater$c;

    sget-object v0, Landroid/support/v4/view/AsyncLayoutInflater$c;->j6:Landroid/support/v4/view/AsyncLayoutInflater$c;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/16 v1, 0xa

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$c;->DW:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Labcd/v;

    invoke-direct {v0, v1}, Labcd/v;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$c;->FH:Labcd/v;

    return-void
.end method

.method public static j6()Landroid/support/v4/view/AsyncLayoutInflater$c;
    .registers 1

    sget-object v0, Landroid/support/v4/view/AsyncLayoutInflater$c;->j6:Landroid/support/v4/view/AsyncLayoutInflater$c;

    return-object v0
.end method


# virtual methods
.method public DW()V
    .registers 7

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$c;->DW:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/AsyncLayoutInflater$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->j6:Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, v1, Landroid/support/v4/view/AsyncLayoutInflater;->j6:Landroid/view/LayoutInflater;

    iget v2, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->FH:I

    iget-object v3, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->DW:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->Hw:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget-object v1, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->j6:Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, v1, Landroid/support/v4/view/AsyncLayoutInflater;->DW:Landroid/os/Handler;

    invoke-static {v1, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v2, "AsyncLayoutInflater"

    const-string v3, "Failed to inflate resource in the background! Retrying on the UI thread"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AsyncLayoutInflater"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public j6(Landroid/support/v4/view/AsyncLayoutInflater$b;)V
    .registers 4

    const/4 v1, 0x0

    iput-object v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$b;->v5:Landroid/support/v4/view/AsyncLayoutInflater$d;

    iput-object v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$b;->j6:Landroid/support/v4/view/AsyncLayoutInflater;

    iput-object v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$b;->DW:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$b;->FH:I

    iput-object v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$b;->Hw:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$c;->FH:Labcd/v;

    invoke-virtual {v0, p1}, Labcd/v;->j6(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .registers 1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/AsyncLayoutInflater$c;->DW()V

    goto :goto_0
.end method
