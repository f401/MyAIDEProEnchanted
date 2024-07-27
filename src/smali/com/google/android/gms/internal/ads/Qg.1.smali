.class final Lcom/google/android/gms/internal/ads/Qg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/rm",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/internal/ads/V;",
        ">;",
        "Lcom/google/android/gms/internal/ads/P;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Ljava/lang/Integer;

.field private final FH:Ljava/lang/Integer;

.field private final Hw:I

.field private final VH:I

.field private final Zo:I

.field private final gn:Z

.field private final j6:Ljava/lang/String;

.field private final v5:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Kg;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIIIZ)V
    .registers 10

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Qg;->j6:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Qg;->DW:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Qg;->FH:Ljava/lang/Integer;

    iput p5, p0, Lcom/google/android/gms/internal/ads/Qg;->Hw:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/Qg;->v5:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/Qg;->Zo:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/Qg;->VH:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/Qg;->gn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const/4 v5, 0x0

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v5

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qg;->j6:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Qg;->DW:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Qg;->FH:Ljava/lang/Integer;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Qg;->Hw:I

    if-lez v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/P;

    iget v6, p0, Lcom/google/android/gms/internal/ads/Qg;->v5:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/Qg;->Zo:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/google/android/gms/internal/ads/Qg;->VH:I

    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/Qg;->gn:Z

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/P;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V

    goto :goto_0
.end method
