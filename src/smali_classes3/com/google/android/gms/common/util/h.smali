.class public Lcom/google/android/gms/common/util/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/util/e;


# static fields
.field private static final j6:Lcom/google/android/gms/common/util/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/util/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/util/h;->j6:Lcom/google/android/gms/common/util/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Hw()Lcom/google/android/gms/common/util/e;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/util/h;->j6:Lcom/google/android/gms/common/util/h;

    return-object v0
.end method


# virtual methods
.method public DW()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public FH()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public j6()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
