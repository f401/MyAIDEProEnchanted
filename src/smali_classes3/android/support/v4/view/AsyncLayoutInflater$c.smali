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
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Landroid/support/v4/view/AsyncLayoutInflater$b;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Labcd/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv<",
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

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

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

    const-string v0, "AsyncLayoutInflater"

    :try_start_2
    iget-object v1, p0, Landroid/support/v4/view/AsyncLayoutInflater$c;->DW:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/AsyncLayoutInflater$b;
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_a} :catch_2c

    const/4 v2, 0x0

    :try_start_b
    iget-object v3, v1, Landroid/support/v4/view/AsyncLayoutInflater$b;->j6:Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v3, v3, Landroid/support/v4/view/AsyncLayoutInflater;->j6:Landroid/view/LayoutInflater;

    iget v4, v1, Landroid/support/v4/view/AsyncLayoutInflater$b;->FH:I

    iget-object v5, v1, Landroid/support/v4/view/AsyncLayoutInflater$b;->DW:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v4/view/AsyncLayoutInflater$b;->Hw:Landroid/view/View;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    move-exception v3

    const-string v4, "Failed to inflate resource in the background! Retrying on the UI thread"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    iget-object v0, v1, Landroid/support/v4/view/AsyncLayoutInflater$b;->j6:Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v0, v0, Landroid/support/v4/view/AsyncLayoutInflater;->DW:Landroid/os/Handler;

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_2c
    move-exception v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public j6(Landroid/support/v4/view/AsyncLayoutInflater$b;)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$b;->v5:Landroid/support/v4/view/AsyncLayoutInflater$d;

    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$b;->j6:Landroid/support/v4/view/AsyncLayoutInflater;

    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$b;->DW:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iput v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$b;->FH:I

    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$b;->Hw:Landroid/view/View;

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
