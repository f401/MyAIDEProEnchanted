.class public abstract Lcom/s1243808733/android/dx/ssa/RegisterMapper;
.super Ljava/lang/Object;
.source "RegisterMapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getNewRegisterCount()I
.end method

.method public abstract map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
.end method

.method public final map(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 6

    .line 49
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 50
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1a

    .line 53
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 56
    :cond_1a
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 59
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move-object p1, v1

    :goto_25
    return-object p1
.end method

.method public final map(Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 6

    .line 68
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->getMaxSize()I

    move-result v0

    .line 69
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->getNewRegisterCount()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_20

    .line 72
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 74
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 78
    :cond_20
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 81
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move-object p1, v1

    :goto_2b
    return-object p1
.end method
