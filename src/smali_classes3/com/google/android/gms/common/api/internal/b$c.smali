.class final Lcom/google/android/gms/common/api/internal/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/z;
.implements Lcom/google/android/gms/common/internal/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/common/api/internal/E;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/E<",
            "*>;"
        }
    .end annotation
.end field

.field private FH:Lcom/google/android/gms/common/internal/k;

.field private Hw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field final Zo:Lcom/google/android/gms/common/api/internal/b;

.field private final j6:Lcom/google/android/gms/common/api/a$f;

.field private v5:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/common/api/internal/E;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$f;",
            "Lcom/google/android/gms/common/api/internal/E<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b$c;->Zo:Lcom/google/android/gms/common/api/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b$c;->FH:Lcom/google/android/gms/common/internal/k;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b$c;->Hw:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/b$c;->v5:Z

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/b$c;->j6:Lcom/google/android/gms/common/api/a$f;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/b$c;->DW:Lcom/google/android/gms/common/api/internal/E;

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/common/api/internal/b$c;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/b$c;->j6()V

    return-void
.end method

.method static synthetic FH(Lcom/google/android/gms/common/api/internal/b$c;)Lcom/google/android/gms/common/api/internal/E;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b$c;->DW:Lcom/google/android/gms/common/api/internal/E;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/common/api/internal/b$c;)Lcom/google/android/gms/common/api/a$f;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b$c;->j6:Lcom/google/android/gms/common/api/a$f;

    return-object p0
.end method

.method private final j6()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/b$c;->v5:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$c;->FH:Lcom/google/android/gms/common/internal/k;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$c;->j6:Lcom/google/android/gms/common/api/a$f;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$c;->Hw:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/a$f;->getRemoteService(Lcom/google/android/gms/common/internal/k;Ljava/util/Set;)V

    :cond_f
    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/common/api/internal/b$c;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/b$c;->v5:Z

    return p1
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$c;->Zo:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->tp(Lcom/google/android/gms/common/api/internal/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$c;->DW:Lcom/google/android/gms/common/api/internal/E;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$c;->Zo:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/r;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/r;-><init>(Lcom/google/android/gms/common/api/internal/b$c;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j6(Lcom/google/android/gms/common/internal/k;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/k;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_d

    if-nez p2, :cond_5

    goto :goto_d

    :cond_5
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b$c;->FH:Lcom/google/android/gms/common/internal/k;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/b$c;->Hw:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/b$c;->j6()V

    return-void

    :cond_d
    :goto_d
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GoogleApiManager"

    const-string v0, "Received null response from onSignInSuccess"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/b$c;->DW(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
