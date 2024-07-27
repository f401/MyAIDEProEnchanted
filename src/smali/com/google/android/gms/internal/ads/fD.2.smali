.class public final Lcom/google/android/gms/internal/ads/fD;
.super Ljava/lang/Object;


# instance fields
.field private final DW:I

.field public final j6:[B


# direct methods
.method public constructor <init>([BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fD;->j6:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/fD;->DW:I

    return-void
.end method


# virtual methods
.method public final j6(I)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/fD;->DW:I

    add-int/2addr v0, p1

    return v0
.end method
