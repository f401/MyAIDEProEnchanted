.class public final Lcom/google/android/gms/internal/ads/Sl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static j6:Lcom/google/android/gms/internal/ads/Sl;


# instance fields
.field DW:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6()Lcom/google/android/gms/internal/ads/Sl;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Sl;->j6:Lcom/google/android/gms/internal/ads/Sl;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/Sl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Sl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Sl;->j6:Lcom/google/android/gms/internal/ads/Sl;

    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/ads/Sl;->j6:Lcom/google/android/gms/internal/ads/Sl;

    return-object v0
.end method
