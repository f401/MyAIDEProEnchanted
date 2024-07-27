.class final Lcom/google/android/gms/internal/measurement/_b;
.super Lcom/google/android/gms/internal/measurement/Xb;


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/Xb;-><init>(Lcom/google/android/gms/internal/measurement/Yb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/Yb;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/_b;-><init>()V

    return-void
.end method

.method private static FH(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/Lb;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lcom/google/android/gms/internal/measurement/Lb",
            "<TE;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/_c;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Lb;

    return-object v0
.end method


# virtual methods
.method final DW(Ljava/lang/Object;J)V
    .registers 6

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_b;->FH(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/Lb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/Lb;->aM()V

    return-void
.end method

.method final j6(Ljava/lang/Object;J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_b;->FH(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/Lb;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/Lb;->U2()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/Lb;->DW(I)Lcom/google/android/gms/internal/measurement/Lb;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method final j6(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/measurement/_b;->FH(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/Lb;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/measurement/_b;->FH(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/Lb;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v2, :cond_1

    if-lez v3, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/Lb;->U2()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/2addr v3, v2

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/measurement/Lb;->DW(I)Lcom/google/android/gms/internal/measurement/Lb;

    move-result-object v0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v2, :cond_2

    :goto_0
    invoke-static {p1, p3, p4, v0}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
