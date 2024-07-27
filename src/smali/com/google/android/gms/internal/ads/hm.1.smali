.class final synthetic Lcom/google/android/gms/internal/ads/hm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/im;


# instance fields
.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hm;->j6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final j6(Landroid/util/JsonWriter;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hm;->j6:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/lang/String;Landroid/util/JsonWriter;)V

    return-void
.end method
