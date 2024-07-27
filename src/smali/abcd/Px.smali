.class final Labcd/Px;
.super Lcom/google/android/gms/common/api/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$a",
        "<",
        "Lcom/google/android/gms/signin/internal/a;",
        "Labcd/Nx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;Ljava/lang/Object;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/a$f;
    .registers 15

    check-cast p4, Labcd/Nx;

    if-nez p4, :cond_0

    sget-object v5, Labcd/Nx;->j6:Labcd/Nx;

    :goto_0
    new-instance v0, Lcom/google/android/gms/signin/internal/a;

    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/signin/internal/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/d;Labcd/Nx;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/g;)V

    return-object v0

    :cond_0
    move-object v5, p4

    goto :goto_0
.end method
