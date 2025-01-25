.class final Lcom/google/android/gms/internal/measurement/Ec;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Lcom/google/android/gms/internal/measurement/Uc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/Uc<",
            "**>;"
        }
    .end annotation
.end field

.field private static final FH:Lcom/google/android/gms/internal/measurement/Uc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/Uc<",
            "**>;"
        }
    .end annotation
.end field

.field private static final Hw:Lcom/google/android/gms/internal/measurement/Uc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/Uc<",
            "**>;"
        }
    .end annotation
.end field

.field private static final j6:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Ec;->Hw()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/Ec;->j6:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Ec;->j6(Z)Lcom/google/android/gms/internal/measurement/Uc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/Ec;->DW:Lcom/google/android/gms/internal/measurement/Uc;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Ec;->j6(Z)Lcom/google/android/gms/internal/measurement/Uc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/Ec;->FH:Lcom/google/android/gms/internal/measurement/Uc;

    new-instance v0, Lcom/google/android/gms/internal/measurement/Wc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/Wc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/Ec;->Hw:Lcom/google/android/gms/internal/measurement/Uc;

    return-void
.end method

.method static DW(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/Wa;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    mul-int v0, v0, p0

    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_22

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/Wa;

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->j6(Lcom/google/android/gms/internal/measurement/Wa;)I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_22
    return v0
.end method

.method static DW(ILjava/util/List;Lcom/google/android/gms/internal/measurement/Cc;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/lc;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/Cc;",
            ")I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/lc;

    invoke-static {p0, v3, p2}, Lcom/google/android/gms/internal/measurement/lb;->FH(ILcom/google/android/gms/internal/measurement/lc;Lcom/google/android/gms/internal/measurement/Cc;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return v2
.end method

.method static DW(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/Ec;->tp(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static DW(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/Gb;

    if-eqz v2, :cond_1d

    check-cast p0, Lcom/google/android/gms/internal/measurement/Gb;

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_32

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/Gb;->v5(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/lb;->EQ(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_32

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/lb;->EQ(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_32
    return v1
.end method

.method public static DW()Lcom/google/android/gms/internal/measurement/Uc;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/Uc<",
            "**>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/Ec;->FH:Lcom/google/android/gms/internal/measurement/Uc;

    return-object v0
.end method

.method public static DW(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/Wa;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/od;->j6(ILjava/util/List;)V

    :cond_b
    return-void
.end method

.method public static DW(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Lcom/google/android/gms/internal/measurement/Cc;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Lcom/google/android/gms/internal/measurement/Cc;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->j6(ILjava/util/List;Lcom/google/android/gms/internal/measurement/Cc;)V

    :cond_b
    return-void
.end method

.method public static DW(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->J8(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static EQ(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->FH(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static FH(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/Ec;->j6(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static FH(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/Gb;

    if-eqz v2, :cond_1d

    check-cast p0, Lcom/google/android/gms/internal/measurement/Gb;

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_32

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/Gb;->v5(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/lb;->Zo(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_32

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/lb;->Zo(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_32
    return v1
.end method

.method public static FH()Lcom/google/android/gms/internal/measurement/Uc;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/Uc<",
            "**>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/Ec;->Hw:Lcom/google/android/gms/internal/measurement/Uc;

    return-object v0
.end method

.method public static FH(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->DW(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static Hw(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/Ec;->DW(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static Hw(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/Gb;

    if-eqz v2, :cond_1d

    check-cast p0, Lcom/google/android/gms/internal/measurement/Gb;

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_32

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/Gb;->v5(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_32

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_32
    return v1
.end method

.method private static Hw()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static Hw(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->we(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static J0(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->VH(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static J8(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->Zo(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static VH(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/Ec;->v5(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static VH(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static VH(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->gn(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static Zo(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/Ec;->Hw(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static Zo(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static Zo(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->EQ(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static gn(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    :cond_8
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/measurement/lb;->u7(II)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static gn(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static gn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->j6(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static j6(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/Cc;)I
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/Ub;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/google/android/gms/internal/measurement/Ub;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/lb;->j6(ILcom/google/android/gms/internal/measurement/Ub;)I

    move-result p0

    return p0

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/measurement/lc;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/lb;->DW(ILcom/google/android/gms/internal/measurement/lc;Lcom/google/android/gms/internal/measurement/Cc;)I

    move-result p0

    return p0
.end method

.method static j6(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    mul-int p0, p0, v0

    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/Wb;

    if-eqz v2, :cond_2f

    check-cast p1, Lcom/google/android/gms/internal/measurement/Wb;

    :goto_14
    if-ge v1, v0, :cond_4a

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/Wb;->FH(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/Wa;

    if-eqz v3, :cond_25

    check-cast v2, Lcom/google/android/gms/internal/measurement/Wa;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/lb;->j6(Lcom/google/android/gms/internal/measurement/Wa;)I

    move-result v2

    goto :goto_2b

    :cond_25
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/lb;->j6(Ljava/lang/String;)I

    move-result v2

    :goto_2b
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2f
    :goto_2f
    if-ge v1, v0, :cond_4a

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/Wa;

    if-eqz v3, :cond_40

    check-cast v2, Lcom/google/android/gms/internal/measurement/Wa;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/lb;->j6(Lcom/google/android/gms/internal/measurement/Wa;)I

    move-result v2

    goto :goto_46

    :cond_40
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/lb;->j6(Ljava/lang/String;)I

    move-result v2

    :goto_46
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_4a
    return p0
.end method

.method static j6(ILjava/util/List;Lcom/google/android/gms/internal/measurement/Cc;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/Cc;",
            ")I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    mul-int p0, p0, v0

    :goto_e
    if-ge v1, v0, :cond_29

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/Ub;

    if-eqz v3, :cond_1f

    check-cast v2, Lcom/google/android/gms/internal/measurement/Ub;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/lb;->j6(Lcom/google/android/gms/internal/measurement/Ub;)I

    move-result v2

    goto :goto_25

    :cond_1f
    check-cast v2, Lcom/google/android/gms/internal/measurement/lc;

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/measurement/lb;->j6(Lcom/google/android/gms/internal/measurement/lc;Lcom/google/android/gms/internal/measurement/Cc;)I

    move-result v2

    :goto_25
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_29
    return p0
.end method

.method static j6(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/Ec;->u7(Ljava/util/List;)I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    mul-int p1, p1, p0

    add-int/2addr p2, p1

    return p2
.end method

.method static j6(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/ac;

    if-eqz v2, :cond_1d

    check-cast p0, Lcom/google/android/gms/internal/measurement/ac;

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_32

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/ac;->v5(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/lb;->Zo(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_32

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/lb;->Zo(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_32
    return v1
.end method

.method public static j6()Lcom/google/android/gms/internal/measurement/Uc;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/Uc<",
            "**>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/Ec;->DW:Lcom/google/android/gms/internal/measurement/Uc;

    return-object v0
.end method

.method private static j6(Z)Lcom/google/android/gms/internal/measurement/Uc;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/measurement/Uc<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Ec;->v5()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/Uc;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    return-object p0

    :catchall_23
    move-exception p0

    return-object v0
.end method

.method static j6(IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/Uc;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(IITUB;",
            "Lcom/google/android/gms/internal/measurement/Uc<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/Uc;->j6()Ljava/lang/Object;

    move-result-object p2

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p3, p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/Uc;->j6(Ljava/lang/Object;IJ)V

    return-object p2
.end method

.method static j6(ILjava/util/List;Lcom/google/android/gms/internal/measurement/Kb;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Uc;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/Kb;",
            "TUB;",
            "Lcom/google/android/gms/internal/measurement/Uc<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_3

    return-object p3

    :cond_3
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    if-ge v1, v0, :cond_32

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/measurement/Kb;->j6(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    if-eq v1, v2, :cond_28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_2b
    invoke-static {p0, v3, p3, p4}, Lcom/google/android/gms/internal/measurement/Ec;->j6(IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/Uc;)Ljava/lang/Object;

    move-result-object p3

    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_32
    if-eq v2, v0, :cond_5e

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_5e

    :cond_3c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_40
    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/Kb;->j6(I)Z

    move-result v1

    if-nez v1, :cond_40

    invoke-static {p0, v0, p3, p4}, Lcom/google/android/gms/internal/measurement/Ec;->j6(IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/Uc;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_40

    :cond_5e
    :goto_5e
    return-object p3
.end method

.method public static j6(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/od;->DW(ILjava/util/List;)V

    :cond_b
    return-void
.end method

.method public static j6(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Lcom/google/android/gms/internal/measurement/Cc;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Lcom/google/android/gms/internal/measurement/Cc;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->DW(ILjava/util/List;Lcom/google/android/gms/internal/measurement/Cc;)V

    :cond_b
    return-void
.end method

.method public static j6(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->J0(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static j6(Lcom/google/android/gms/internal/measurement/Uc;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/Uc<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/Uc;->FH(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/Uc;->FH(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/Uc;->FH(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Uc;->j6(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static j6(Lcom/google/android/gms/internal/measurement/gc;Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/gc;",
            "TT;TT;J)V"
        }
    .end annotation

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/measurement/_c;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/measurement/_c;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/gc;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p3, p4, p0}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static j6(Lcom/google/android/gms/internal/measurement/tb;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/google/android/gms/internal/measurement/yb<",
            "TFT;>;>(",
            "Lcom/google/android/gms/internal/measurement/tb<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/tb;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/wb;->DW()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/tb;->DW(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/wb;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/wb;->j6(Lcom/google/android/gms/internal/measurement/wb;)V

    :cond_11
    return-void
.end method

.method public static j6(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/measurement/Fb;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/google/android/gms/internal/measurement/Ec;->j6:Ljava/lang/Class;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_1b

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_1b
    return-void
.end method

.method static j6(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method static tp(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/measurement/lb;->DW(IZ)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static tp(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/ac;

    if-eqz v2, :cond_1d

    check-cast p0, Lcom/google/android/gms/internal/measurement/ac;

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_32

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/ac;->v5(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/lb;->v5(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_32

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/lb;->v5(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_32
    return v1
.end method

.method public static tp(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->v5(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static u7(ILjava/util/List;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/lb;->VH(IJ)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static u7(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/ac;

    if-eqz v2, :cond_1d

    check-cast p0, Lcom/google/android/gms/internal/measurement/ac;

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_32

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/ac;->v5(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/lb;->Hw(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_32

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/lb;->Hw(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_32
    return v1
.end method

.method public static u7(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->u7(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static v5(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/Ec;->FH(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/lb;->v5(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static v5(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/Gb;

    if-eqz v2, :cond_1d

    check-cast p0, Lcom/google/android/gms/internal/measurement/Gb;

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_32

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/Gb;->v5(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/lb;->gn(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_32

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/lb;->gn(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_32
    return v1
.end method

.method private static v5()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.UnknownFieldSetSchema"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static v5(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->Hw(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static we(ILjava/util/List;Lcom/google/android/gms/internal/measurement/od;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/od;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/od;->tp(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method
