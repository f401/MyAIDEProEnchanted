.class final synthetic Lcom/google/android/gms/internal/ads/dm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/im;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Ljava/util/Map;

.field private final Hw:[B

.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dm;->j6:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dm;->DW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dm;->FH:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dm;->Hw:[B

    return-void
.end method


# virtual methods
.method public final j6(Landroid/util/JsonWriter;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dm;->j6:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dm;->DW:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dm;->FH:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dm;->Hw:[B

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLandroid/util/JsonWriter;)V

    return-void
.end method
