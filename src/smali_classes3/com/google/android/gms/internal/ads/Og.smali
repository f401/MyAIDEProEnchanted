.class public final Lcom/google/android/gms/internal/ads/Og;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/lB;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:I

.field private final Hw:Ljava/io/InputStream;

.field private final j6:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/lB;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/Og;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/lB;",
            ">;I",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/Og;->j6:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Og;->DW:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/internal/ads/Og;->FH:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Og;->Hw:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Og;->FH:I

    return v0
.end method

.method public final FH()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Og;->j6:I

    return v0
.end method

.method public final Hw()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/lB;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Og;->DW:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j6()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Og;->Hw:Ljava/io/InputStream;

    return-object v0
.end method
