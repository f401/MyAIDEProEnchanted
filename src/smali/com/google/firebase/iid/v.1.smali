.class final Lcom/google/firebase/iid/v;
.super Labcd/Gx;


# instance fields
.field private final j6:Lcom/google/firebase/iid/u;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/u;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/firebase/iid/v;->j6:Lcom/google/firebase/iid/u;

    invoke-direct {p0, p2}, Labcd/Gx;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/v;->j6:Lcom/google/firebase/iid/u;

    invoke-static {v0, p1}, Lcom/google/firebase/iid/u;->j6(Lcom/google/firebase/iid/u;Landroid/os/Message;)V

    return-void
.end method
