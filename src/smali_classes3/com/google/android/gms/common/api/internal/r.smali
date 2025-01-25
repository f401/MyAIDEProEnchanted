.class final Lcom/google/android/gms/common/api/internal/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/common/api/internal/b$c;

.field private final j6:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/b$c;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/r;->DW:Lcom/google/android/gms/common/api/internal/b$c;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/r;->j6:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r;->j6:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->Zo()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r;->DW:Lcom/google/android/gms/common/api/internal/b$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/b$c;->j6(Lcom/google/android/gms/common/api/internal/b$c;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r;->DW:Lcom/google/android/gms/common/api/internal/b$c;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b$c;->j6(Lcom/google/android/gms/common/api/internal/b$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r;->DW:Lcom/google/android/gms/common/api/internal/b$c;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b$c;->DW(Lcom/google/android/gms/common/api/internal/b$c;)V

    return-void

    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r;->DW:Lcom/google/android/gms/common/api/internal/b$c;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b$c;->j6(Lcom/google/android/gms/common/api/internal/b$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/common/api/a$f;->getRemoteService(Lcom/google/android/gms/common/internal/k;Ljava/util/Set;)V
    :try_end_2e
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r;->DW:Lcom/google/android/gms/common/api/internal/b$c;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/b$c;->Zo:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->tp(Lcom/google/android/gms/common/api/internal/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/r;->DW:Lcom/google/android/gms/common/api/internal/b$c;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b$c;->FH(Lcom/google/android/gms/common/api/internal/b$c;)Lcom/google/android/gms/common/api/internal/E;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/b$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r;->DW:Lcom/google/android/gms/common/api/internal/b$c;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/b$c;->Zo:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->tp(Lcom/google/android/gms/common/api/internal/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/r;->DW:Lcom/google/android/gms/common/api/internal/b$c;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b$c;->FH(Lcom/google/android/gms/common/api/internal/b$c;)Lcom/google/android/gms/common/api/internal/E;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/r;->j6:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/b$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
