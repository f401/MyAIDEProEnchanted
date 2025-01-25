.class public final Lcom/google/android/gms/internal/ads/qE;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lorg/json/JSONObject;

.field private final FH:Ljava/lang/String;

.field private final Hw:Ljava/lang/String;

.field private final Zo:Z

.field private final j6:Ljava/lang/String;

.field private final v5:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qE;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/qE;->DW:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qE;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qE;->j6:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/qE;->v5:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/qE;->Zo:Z

    return-void
.end method


# virtual methods
.method public final DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qE;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method public final FH()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qE;->DW:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qE;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public final Zo()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/qE;->Zo:Z

    return v0
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qE;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public final v5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/qE;->v5:Z

    return v0
.end method
