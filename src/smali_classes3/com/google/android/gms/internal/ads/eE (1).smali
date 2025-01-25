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

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/eE;->FH:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

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
    .registers 5

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eE;->DW:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eE;->v5:Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    if-eq p1, v0, :cond_1d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    iget p1, p0, Lcom/google/android/gms/internal/ads/eE;->Zo:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/eE;->Zo:I

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eE;->v5:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/eE;->DW:J

    :cond_1c
    return v0

    :cond_1d
    iget p1, p0, Lcom/google/android/gms/internal/ads/eE;->Zo:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/eE;->Zo:I

    if-ne p1, v0, :cond_29

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eE;->v5:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_29
    return v0

    :cond_2a
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eE;->v5:Landroid/view/Choreographer;

    return v0
.end method
