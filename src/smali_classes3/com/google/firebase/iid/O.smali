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
    .registers 3

    iget-object p1, p0, Lcom/google/firebase/iid/O;->j6:Lcom/google/firebase/iid/FirebaseInstanceId$a;

    monitor-enter p1

    :try_start_3
    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/google/firebase/iid/FirebaseInstanceId$a;->v5:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->DW(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    :cond_e
    monitor-exit p1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method
