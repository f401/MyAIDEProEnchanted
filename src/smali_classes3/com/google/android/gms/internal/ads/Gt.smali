.class final Lcom/google/android/gms/internal/ads/Gt;
.super Ljava/lang/Object;


# instance fields
.field private final DW:[B

.field private final j6:Lcom/google/android/gms/internal/ads/Ot;


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Gt;->DW:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->j6([B)Lcom/google/android/gms/internal/ads/Ot;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Gt;->j6:Lcom/google/android/gms/internal/ads/Ot;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zt;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Gt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/internal/ads/Ot;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gt;->j6:Lcom/google/android/gms/internal/ads/Ot;

    return-object v0
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/yt;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gt;->j6:Lcom/google/android/gms/internal/ads/Ot;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ot;->FH()V

    new-instance v0, Lcom/google/android/gms/internal/ads/It;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Gt;->DW:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/It;-><init>([B)V

    return-object v0
.end method
