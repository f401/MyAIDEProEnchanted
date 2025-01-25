.class final synthetic Lcom/google/android/gms/internal/ads/Vg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Z

.field private final FH:Lorg/json/JSONObject;

.field private final Hw:Lcom/google/android/gms/internal/ads/Rm;

.field private final j6:Lcom/google/android/gms/internal/ads/Ug;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ug;ZLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Vg;->j6:Lcom/google/android/gms/internal/ads/Ug;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/Vg;->DW:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Vg;->FH:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Vg;->Hw:Lcom/google/android/gms/internal/ads/Rm;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vg;->j6:Lcom/google/android/gms/internal/ads/Ug;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Vg;->DW:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Vg;->FH:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Vg;->Hw:Lcom/google/android/gms/internal/ads/Rm;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Ug;->j6(ZLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Rm;)V

    return-void
.end method
