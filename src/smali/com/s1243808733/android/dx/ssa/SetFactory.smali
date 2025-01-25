.class public final Lcom/s1243808733/android/dx/ssa/SetFactory;
.super Ljava/lang/Object;
.source "SetFactory.java"


# static fields
.field private static final DOMFRONT_SET_THRESHOLD_SIZE:I = 0xc00

.field private static final INTERFERENCE_SET_THRESHOLD_SIZE:I = 0xc00

.field private static final LIVENESS_SET_THRESHOLD_SIZE:I = 0xc00


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeDomFrontSet(I)Lcom/s1243808733/android/dx/util/IntSet;
    .registers 2

    const/16 v0, 0xc00

    if-gt p0, v0, :cond_a

    .line 67
    new-instance v0, Lcom/s1243808733/android/dx/util/BitIntSet;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/util/BitIntSet;-><init>(I)V

    goto :goto_f

    .line 68
    :cond_a
    new-instance v0, Lcom/s1243808733/android/dx/util/ListIntSet;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/util/ListIntSet;-><init>()V

    :goto_f
    return-object v0
.end method

.method public static makeInterferenceSet(I)Lcom/s1243808733/android/dx/util/IntSet;
    .registers 2

    const/16 v0, 0xc00

    if-gt p0, v0, :cond_a

    .line 80
    new-instance v0, Lcom/s1243808733/android/dx/util/BitIntSet;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/util/BitIntSet;-><init>(I)V

    goto :goto_f

    .line 81
    :cond_a
    new-instance v0, Lcom/s1243808733/android/dx/util/ListIntSet;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/util/ListIntSet;-><init>()V

    :goto_f
    return-object v0
.end method

.method static makeLivenessSet(I)Lcom/s1243808733/android/dx/util/IntSet;
    .registers 2

    const/16 v0, 0xc00

    if-gt p0, v0, :cond_a

    .line 92
    new-instance v0, Lcom/s1243808733/android/dx/util/BitIntSet;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/util/BitIntSet;-><init>(I)V

    goto :goto_f

    .line 93
    :cond_a
    new-instance v0, Lcom/s1243808733/android/dx/util/ListIntSet;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/util/ListIntSet;-><init>()V

    :goto_f
    return-object v0
.end method
