.class public Lcom/s1243808733/android/dx/util/MutabilityControl;
.super Ljava/lang/Object;
.source "MutabilityControl.java"


# instance fields
.field private mutable:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/util/MutabilityControl;->mutable:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/s1243808733/android/dx/util/MutabilityControl;->mutable:Z

    return-void
.end method


# virtual methods
.method public final isImmutable()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/util/MutabilityControl;->mutable:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isMutable()Z
    .registers 2

    .line 68
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/util/MutabilityControl;->mutable:Z

    return v0
.end method

.method public setImmutable()V
    .registers 2

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/util/MutabilityControl;->mutable:Z

    return-void
.end method

.method public final throwIfImmutable()V
    .registers 3

    .line 76
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/util/MutabilityControl;->mutable:Z

    if-eqz v0, :cond_5

    return-void

    .line 77
    :cond_5
    new-instance v0, Lcom/s1243808733/android/dx/util/MutabilityException;

    const-string v1, "immutable instance"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final throwIfMutable()V
    .registers 3

    .line 85
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/util/MutabilityControl;->mutable:Z

    if-nez v0, :cond_5

    return-void

    .line 86
    :cond_5
    new-instance v0, Lcom/s1243808733/android/dx/util/MutabilityException;

    const-string v1, "mutable instance"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
