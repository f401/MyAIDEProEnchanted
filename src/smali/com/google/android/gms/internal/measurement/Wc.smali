.class final Lcom/google/android/gms/internal/measurement/Wc;
.super Lcom/google/android/gms/internal/measurement/Uc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/Uc",
        "<",
        "Lcom/google/android/gms/internal/measurement/Vc;",
        "Lcom/google/android/gms/internal/measurement/Vc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/Uc;-><init>()V

    return-void
.end method

.method private static j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Vc;)V
    .registers 2

    check-cast p0, Lcom/google/android/gms/internal/measurement/Fb;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Fb;->zzbyd:Lcom/google/android/gms/internal/measurement/Vc;

    return-void
.end method


# virtual methods
.method final synthetic DW(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/measurement/Vc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Vc;->DW()I

    move-result v0

    return v0
.end method

.method final synthetic DW(Ljava/lang/Object;IJ)V
    .registers 8

    check-cast p1, Lcom/google/android/gms/internal/measurement/Vc;

    shl-int/lit8 v0, p2, 0x3

    or-int/lit8 v0, v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/Vc;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic DW(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/od;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/measurement/Vc;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/Vc;->j6(Lcom/google/android/gms/internal/measurement/od;)V

    return-void
.end method

.method final synthetic DW(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/google/android/gms/internal/measurement/Vc;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/Wc;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Vc;)V

    return-void
.end method

.method final synthetic FH(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/measurement/Fb;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/Fb;->zzbyd:Lcom/google/android/gms/internal/measurement/Vc;

    return-object v0
.end method

.method final synthetic FH(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/measurement/Vc;

    check-cast p2, Lcom/google/android/gms/internal/measurement/Vc;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Vc;->FH()Lcom/google/android/gms/internal/measurement/Vc;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/Vc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/Vc;->j6(Lcom/google/android/gms/internal/measurement/Vc;Lcom/google/android/gms/internal/measurement/Vc;)Lcom/google/android/gms/internal/measurement/Vc;

    move-result-object p1

    goto :goto_0
.end method

.method final synthetic Hw(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/Fb;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/Fb;->zzbyd:Lcom/google/android/gms/internal/measurement/Vc;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Vc;->FH()Lcom/google/android/gms/internal/measurement/Vc;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Vc;->Hw()Lcom/google/android/gms/internal/measurement/Vc;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/Wc;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Vc;)V

    :cond_0
    return-object v0
.end method

.method final Zo(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/measurement/Fb;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/Fb;->zzbyd:Lcom/google/android/gms/internal/measurement/Vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Vc;->j6()V

    return-void
.end method

.method final synthetic j6()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Vc;->Hw()Lcom/google/android/gms/internal/measurement/Vc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic j6(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/measurement/Vc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Vc;->j6()V

    return-object p1
.end method

.method final synthetic j6(Ljava/lang/Object;II)V
    .registers 6

    check-cast p1, Lcom/google/android/gms/internal/measurement/Vc;

    shl-int/lit8 v0, p2, 0x3

    or-int/lit8 v0, v0, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/Vc;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic j6(Ljava/lang/Object;IJ)V
    .registers 8

    check-cast p1, Lcom/google/android/gms/internal/measurement/Vc;

    shl-int/lit8 v0, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/Vc;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic j6(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/Wa;)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/measurement/Vc;

    shl-int/lit8 v0, p2, 0x3

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/measurement/Vc;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic j6(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/measurement/Vc;

    shl-int/lit8 v0, p2, 0x3

    or-int/lit8 v0, v0, 0x3

    check-cast p3, Lcom/google/android/gms/internal/measurement/Vc;

    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/measurement/Vc;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/od;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/measurement/Vc;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/Vc;->DW(Lcom/google/android/gms/internal/measurement/od;)V

    return-void
.end method

.method final synthetic j6(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/google/android/gms/internal/measurement/Vc;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/Wc;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Vc;)V

    return-void
.end method

.method final j6(Lcom/google/android/gms/internal/measurement/Bc;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method final synthetic v5(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/measurement/Vc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Vc;->v5()I

    move-result v0

    return v0
.end method
