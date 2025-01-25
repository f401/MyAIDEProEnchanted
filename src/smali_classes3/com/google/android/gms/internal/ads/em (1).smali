.class final synthetic Lcom/google/android/gms/internal/ads/em;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/im;


# instance fields
.field private final DW:Ljava/util/Map;

.field private final j6:I


# direct methods
.method constructor <init>(ILjava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/em;->j6:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/em;->DW:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final j6(Landroid/util/JsonWriter;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/em;->j6:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/em;->DW:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cm;->j6(ILjava/util/Map;Landroid/util/JsonWriter;)V

    return-void
.end method
