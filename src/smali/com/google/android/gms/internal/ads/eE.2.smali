.class final Lcom/google/android/gms/internal/ads/eE;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static final j6:Lcom/google/android/gms/internal/ads/eE;


# instance fields
.field public volatile DW:J

.field private final FH:Landroid/os/Handler;

.field private final Hw:Landroid/os/HandlerThread;

.field private Zo:I

.field private v5:Landroid/view/Choreographer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/eE;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eE;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/eE;->j6:Lcom/google/android/gms/internal/ads/eE;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ChoreographerOwner:Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eE;->Hw:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eE;->Hw:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eE;->Hw:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eE;->FH:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eE;->FH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static j6()Lcom/google/android/gms/internal/ads/eE;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/eE;->j6:Lcom/google/android/gms/internal/ads/eE;

    return-object v0
.end method


# virtual methods
.method public final DW()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eE;->FH:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final FH()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eE;->FH:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final doFrame(J)V
    .registers 8

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eE;->DW:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eE;->v5:Landroid/view/Choreographer;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/eE;->Zo:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/eE;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/eE;->Zo:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eE;->v5:Landroid/view/Choreographer;

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/eE;->DW:J

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/eE;->Zo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/eE;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/eE;->Zo:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eE;->v5:Landroid/view/Choreographer;

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/eE;->v5:Landroid/view/Choreographer;

    goto :goto_0
.end method
