.class final synthetic Lcom/google/firebase/iid/O;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/xy;


# instance fields
.field private final j6:Lcom/google/firebase/iid/FirebaseInstanceId$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/O;->j6:Lcom/google/firebase/iid/FirebaseInstanceId$a;

    return-void
.end method


# virtual methods
.method public final j6(Labcd/wy;)V
    .registers 4

    iget-object v1, p0, Lcom/google/firebase/iid/O;->j6:Lcom/google/firebase/iid/FirebaseInstanceId$a;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/firebase/iid/FirebaseInstanceId$a;->v5:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->DW(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
