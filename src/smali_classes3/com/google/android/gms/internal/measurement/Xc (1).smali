.class public final Lcom/google/android/gms/internal/measurement/Xc;
.super Ljava/util/AbstractList;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/Wb;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/Wb;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/measurement/Wb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/Wb;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Xc;->j6:Lcom/google/android/gms/internal/measurement/Wb;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/Xc;)Lcom/google/android/gms/internal/measurement/Wb;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/Xc;->j6:Lcom/google/android/gms/internal/measurement/Wb;

    return-object p0
.end method


# virtual methods
.method public final FH(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Xc;->j6:Lcom/google/android/gms/internal/measurement/Wb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/Wb;->FH(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final er()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Xc;->j6:Lcom/google/android/gms/internal/measurement/Wb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/Wb;->er()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Xc;->j6:Lcom/google/android/gms/internal/measurement/Wb;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/Zc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/Zc;-><init>(Lcom/google/android/gms/internal/measurement/Xc;)V

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/measurement/Wa;)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/Yc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/Yc;-><init>(Lcom/google/android/gms/internal/measurement/Xc;I)V

    return-object v0
.end method

.method public final rN()Lcom/google/android/gms/internal/measurement/Wb;
    .registers 1

    return-object p0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Xc;->j6:Lcom/google/android/gms/internal/measurement/Wb;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
