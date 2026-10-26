.class public abstract Lcom/s1243808733/android/dx/ssa/RegisterMapper;
.super Ljava/lang/Object;
.source "RegisterMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

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
    .locals 4

    .line 49
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    .line 50
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 53
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 59
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-object p1

    :cond_1
    move-object p1, v0

    goto :goto_1
.end method

.method public final map(Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .locals 4

    .line 68
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->getMaxSize()I

    move-result v2

    .line 69
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->getNewRegisterCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 72
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 81
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    return-object p1

    :cond_2
    move-object p1, v0

    goto :goto_1
.end method
