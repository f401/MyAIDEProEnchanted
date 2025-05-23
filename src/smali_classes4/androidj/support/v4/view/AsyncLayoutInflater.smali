.class public final Landroidj/support/v4/view/AsyncLayoutInflater;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/AsyncLayoutInflater$BasicInflater;,
        Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;,
        Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;,
        Landroidj/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncLayoutInflater"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field mInflateThread:Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidj/support/v4/view/AsyncLayoutInflater$1;

    invoke-direct {v0, p0}, Landroidj/support/v4/view/AsyncLayoutInflater$1;-><init>(Landroidj/support/v4/view/AsyncLayoutInflater;)V

    iput-object v0, p0, Landroidj/support/v4/view/AsyncLayoutInflater;->mHandlerCallback:Landroid/os/Handler$Callback;

    new-instance v0, Landroidj/support/v4/view/AsyncLayoutInflater$BasicInflater;

    invoke-direct {v0, p1}, Landroidj/support/v4/view/AsyncLayoutInflater$BasicInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidj/support/v4/view/AsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroidj/support/v4/view/AsyncLayoutInflater;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroidj/support/v4/view/AsyncLayoutInflater;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;->getInstance()Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/view/AsyncLayoutInflater;->mInflateThread:Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;

    return-void
.end method


# virtual methods
.method public inflate(ILandroid/view/ViewGroup;Landroidj/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V
    .registers 6
    .param p1  # I
        .annotation build Landroidj/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2  # Landroid/view/ViewGroup;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroidj/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/UiThread;
    .end annotation

    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback argument may not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/view/AsyncLayoutInflater;->mInflateThread:Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v0}, Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;->obtainRequest()Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;

    move-result-object v0

    iput-object p0, v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroidj/support/v4/view/AsyncLayoutInflater;

    iput p1, v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iput-object p2, v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    iput-object p3, v0, Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;->callback:Landroidj/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;

    iget-object v1, p0, Landroidj/support/v4/view/AsyncLayoutInflater;->mInflateThread:Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v1, v0}, Landroidj/support/v4/view/AsyncLayoutInflater$InflateThread;->enqueue(Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;)V

    return-void
.end method
