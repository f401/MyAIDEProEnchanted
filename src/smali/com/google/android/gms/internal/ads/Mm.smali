.class public final Lcom/google/android/gms/internal/ads/Mm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field public static final DW:Ljava/util/concurrent/Executor;

.field private static final FH:Lcom/google/android/gms/internal/ads/Lm;

.field private static final Hw:Lcom/google/android/gms/internal/ads/Lm;

.field public static final j6:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Nm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Nm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/internal/ads/Om;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Om;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Mm;->j6(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Lm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Mm;->FH:Lcom/google/android/gms/internal/ads/Lm;

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Mm;->j6(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Lm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Mm;->Hw:Lcom/google/android/gms/internal/ads/Lm;

    return-void
.end method

.method public static j6(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Lm;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/Pm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/Pm;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/Nm;)V

    return-object v0
.end method
