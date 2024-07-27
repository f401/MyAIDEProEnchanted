.class public final Lcom/google/android/gms/internal/ads/P;
.super Lcom/google/android/gms/internal/ads/Ca;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final DW:I

.field private static final FH:I

.field private static final Hw:I

.field private static final j6:I


# instance fields
.field private final EQ:I

.field private final J0:Z

.field private final VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/Ga;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:I

.field private final tp:I

.field private final u7:I

.field private final v5:Ljava/lang/String;

.field private final we:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0xcc

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/P;->j6:I

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/P;->DW:I

    sput v0, Lcom/google/android/gms/internal/ads/P;->FH:I

    sget v0, Lcom/google/android/gms/internal/ads/P;->j6:I

    sput v0, Lcom/google/android/gms/internal/ads/P;->Hw:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ca;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/P;->Zo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/P;->VH:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/P;->v5:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/V;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/P;->Zo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/P;->VH:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/P;->gn:I

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/P;->u7:I

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/google/android/gms/internal/ads/P;->tp:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/P;->EQ:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/P;->we:I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/P;->J0:Z

    return-void

    :cond_1
    sget v0, Lcom/google/android/gms/internal/ads/P;->FH:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/google/android/gms/internal/ads/P;->Hw:I

    goto :goto_2

    :cond_3
    const/16 v0, 0xc

    goto :goto_3
.end method


# virtual methods
.method public final K3()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/P;->gn:I

    return v0
.end method

.method public final Lx()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/P;->we:I

    return v0
.end method

.method public final OM()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/P;->u7:I

    return v0
.end method

.method public final Qs()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/P;->tp:I

    return v0
.end method

.method public final cc()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/Ga;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/P;->VH:Ljava/util/List;

    return-object v0
.end method

.method public final fd()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/P;->EQ:I

    return v0
.end method

.method public final g0()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/V;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/P;->Zo:Ljava/util/List;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/P;->v5:Ljava/lang/String;

    return-object v0
.end method

.method public final wC()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/P;->J0:Z

    return v0
.end method
