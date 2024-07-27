.class public abstract Lcom/google/android/gms/internal/ads/rt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Zu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/gms/internal/ads/Pu;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Zu",
        "<TMessageType;>;"
    }
.end annotation


# static fields
.field private static final j6:Lcom/google/android/gms/internal/ads/Ut;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ut;->DW()Lcom/google/android/gms/internal/ads/Ut;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/rt;->j6:Lcom/google/android/gms/internal/ads/Ut;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
