.class final Lcom/google/android/gms/internal/measurement/ub;
.super Lcom/google/android/gms/internal/measurement/tb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/tb<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/tb;-><init>()V

    return-void
.end method


# virtual methods
.method final DW(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/measurement/wb<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/measurement/Fb$c;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/Fb$c;->zzbyj:Lcom/google/android/gms/internal/measurement/wb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/wb;->FH()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/Fb$c;->zzbyj:Lcom/google/android/gms/internal/measurement/wb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/wb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/wb;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/Fb$c;->zzbyj:Lcom/google/android/gms/internal/measurement/wb;

    :cond_14
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/Fb$c;->zzbyj:Lcom/google/android/gms/internal/measurement/wb;

    return-object p1
.end method

.method final FH(Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ub;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/wb;->Zo()V

    return-void
.end method

.method final j6(Ljava/util/Map$Entry;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/measurement/wb<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/measurement/Fb$c;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/Fb$c;->zzbyj:Lcom/google/android/gms/internal/measurement/wb;

    return-object p1
.end method

.method final j6(Lcom/google/android/gms/internal/measurement/Bc;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/sb;Lcom/google/android/gms/internal/measurement/wb;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Uc;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/Bc;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/sb;",
            "Lcom/google/android/gms/internal/measurement/wb<",
            "Ljava/lang/Object;",
            ">;TUB;",
            "Lcom/google/android/gms/internal/measurement/Uc<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final j6(Lcom/google/android/gms/internal/measurement/sb;Lcom/google/android/gms/internal/measurement/lc;I)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/sb;->j6(Lcom/google/android/gms/internal/measurement/lc;I)Lcom/google/android/gms/internal/measurement/Fb$d;

    move-result-object p1

    return-object p1
.end method

.method final j6(Lcom/google/android/gms/internal/measurement/Bc;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/sb;Lcom/google/android/gms/internal/measurement/wb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/Bc;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/sb;",
            "Lcom/google/android/gms/internal/measurement/wb<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final j6(Lcom/google/android/gms/internal/measurement/Wa;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/sb;Lcom/google/android/gms/internal/measurement/wb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/Wa;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/sb;",
            "Lcom/google/android/gms/internal/measurement/wb<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final j6(Lcom/google/android/gms/internal/measurement/od;Ljava/util/Map$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final j6(Lcom/google/android/gms/internal/measurement/lc;)Z
    .registers 2

    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/Fb$c;

    return p1
.end method
