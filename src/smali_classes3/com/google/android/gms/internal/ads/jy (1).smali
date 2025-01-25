.class public abstract Lcom/google/android/gms/internal/ads/jy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field protected final DW:Lcom/google/android/gms/internal/ads/Ax;

.field private final FH:Ljava/lang/String;

.field private final Hw:Ljava/lang/String;

.field private final VH:I

.field protected Zo:Ljava/lang/reflect/Method;

.field private final gn:I

.field private final j6:Ljava/lang/String;

.field protected final v5:Lcom/google/android/gms/internal/ads/br;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->j6:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jy;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jy;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iput p5, p0, Lcom/google/android/gms/internal/ads/jy;->VH:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/jy;->gn:I

    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/Void;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jy;->FH:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/jy;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/Ax;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/jy;->Zo:Ljava/lang/reflect/Method;

    if-nez v3, :cond_14

    return-object v0

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jy;->j6()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Ax;->gn()Lcom/google/android/gms/internal/ads/cx;

    move-result-object v3

    if-eqz v3, :cond_36

    iget v4, p0, Lcom/google/android/gms/internal/ads/jy;->VH:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_36

    iget v5, p0, Lcom/google/android/gms/internal/ads/jy;->gn:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v6, v1

    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/google/android/gms/internal/ads/cx;->j6(IIJ)V
    :try_end_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_32} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_32} :catch_33

    goto :goto_36

    :catch_33
    move-exception v1

    goto :goto_36

    :catch_35
    move-exception v1

    :cond_36
    :goto_36
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jy;->DW()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected abstract j6()V
.end method
