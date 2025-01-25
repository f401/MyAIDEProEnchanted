.class public final Lcom/google/android/gms/common/api/internal/D;
.super Lcom/google/android/gms/common/api/internal/C;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/C<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final FH:Lcom/google/android/gms/common/api/internal/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/f<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/f;Labcd/Zx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/f<",
            "*>;",
            "LZx<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/C;-><init>(ILabcd/Zx;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/D;->FH:Lcom/google/android/gms/common/api/internal/f;

    return-void
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/common/api/internal/b$a;)[Lcom/google/android/gms/common/Feature;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b$a<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/b$a;->u7()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/D;->FH:Lcom/google/android/gms/common/api/internal/f;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/u;

    if-nez p1, :cond_10

    const/4 p1, 0x0

    return-object p1

    :cond_10
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/u;->j6:Lcom/google/android/gms/common/api/internal/g;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/g;->DW()[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    return-object p1
.end method

.method public final FH(Lcom/google/android/gms/common/api/internal/b$a;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b$a<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/b$a;->u7()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/D;->FH:Lcom/google/android/gms/common/api/internal/f;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/u;

    if-eqz p1, :cond_18

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/u;->j6:Lcom/google/android/gms/common/api/internal/g;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/g;->FH()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public final Hw(Lcom/google/android/gms/common/api/internal/b$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b$a<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/b$a;->u7()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/D;->FH:Lcom/google/android/gms/common/api/internal/f;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/u;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/u;->DW:Lcom/google/android/gms/common/api/internal/h;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/b$a;->Zo()Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/C;->DW:Labcd/Zx;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/api/internal/h;->j6(Lcom/google/android/gms/common/api/a$b;Labcd/Zx;)V

    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/u;->j6:Lcom/google/android/gms/common/api/internal/g;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/g;->j6()V

    return-void

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/C;->DW:Labcd/Zx;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/Zx;->DW(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic j6(Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/C;->j6(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic j6(Lcom/google/android/gms/common/api/internal/i;Z)V
    .registers 3

    return-void
.end method

.method public final bridge synthetic j6(Ljava/lang/RuntimeException;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/C;->j6(Ljava/lang/RuntimeException;)V

    return-void
.end method
