.class public final Lcom/google/android/gms/common/api/internal/w;
.super Lcom/google/android/gms/signin/internal/c;

# interfaces
.implements Lcom/google/android/gms/common/api/f;
.implements Lcom/google/android/gms/common/api/g;


# static fields
.field private static j6:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Labcd/Rx;",
            "Labcd/Nx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Landroid/content/Context;

.field private final FH:Landroid/os/Handler;

.field private final Hw:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Labcd/Rx;",
            "Labcd/Nx;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Labcd/Rx;

.field private Zo:Lcom/google/android/gms/common/internal/d;

.field private gn:Lcom/google/android/gms/common/api/internal/z;

.field private v5:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Labcd/Ox;->FH:Lcom/google/android/gms/common/api/a$a;

    sput-object v0, Lcom/google/android/gms/common/api/internal/w;->j6:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/d;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/common/api/internal/w;->j6:Lcom/google/android/gms/common/api/a$a;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/internal/w;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/a$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/d;",
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Labcd/Rx;",
            "Labcd/Nx;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->DW:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/w;->FH:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/common/internal/d;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/w;->Zo:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/d;->VH()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->v5:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/w;->Hw:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method private final DW(Lcom/google/android/gms/signin/internal/zaj;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zaj;->DW()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->Zo()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zaj;->FH()Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->FH()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->Zo()Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SignInCoordinator"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_41
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->gn:Lcom/google/android/gms/common/api/internal/z;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/z;->DW(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_46
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->VH:Labcd/Rx;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    return-void

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->gn:Lcom/google/android/gms/common/api/internal/z;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->DW()Lcom/google/android/gms/common/internal/k;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/w;->v5:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/z;->j6(Lcom/google/android/gms/common/internal/k;Ljava/util/Set;)V

    goto :goto_46
.end method

.method static synthetic j6(Lcom/google/android/gms/common/api/internal/w;)Lcom/google/android/gms/common/api/internal/z;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/w;->gn:Lcom/google/android/gms/common/api/internal/z;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/common/api/internal/w;Lcom/google/android/gms/signin/internal/zaj;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/w;->DW(Lcom/google/android/gms/signin/internal/zaj;)V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/common/api/internal/z;)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->VH:Labcd/Rx;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->Zo:Lcom/google/android/gms/common/internal/d;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/d;->j6(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/w;->Hw:Lcom/google/android/gms/common/api/a$a;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/w;->DW:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->FH:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/w;->Zo:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/d;->gn()Labcd/Nx;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/a$a;->j6(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;Ljava/lang/Object;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    check-cast v0, Labcd/Rx;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->VH:Labcd/Rx;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->gn:Lcom/google/android/gms/common/api/internal/z;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->v5:Ljava/util/Set;

    if-eqz p1, :cond_41

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3b

    goto :goto_41

    :cond_3b
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->VH:Labcd/Rx;

    invoke-interface {p1}, Labcd/Rx;->connect()V

    return-void

    :cond_41
    :goto_41
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->FH:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/x;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/x;-><init>(Lcom/google/android/gms/common/api/internal/w;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j6(Lcom/google/android/gms/signin/internal/zaj;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->FH:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/y;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/y;-><init>(Lcom/google/android/gms/common/api/internal/w;Lcom/google/android/gms/signin/internal/zaj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->VH:Labcd/Rx;

    invoke-interface {p1, p0}, Labcd/Rx;->j6(Lcom/google/android/gms/signin/internal/d;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->gn:Lcom/google/android/gms/common/api/internal/z;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/z;->DW(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->VH:Labcd/Rx;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    return-void
.end method

.method public final v5()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->VH:Labcd/Rx;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    :cond_7
    return-void
.end method
