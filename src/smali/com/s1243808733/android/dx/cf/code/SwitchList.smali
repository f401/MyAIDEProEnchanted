.class public final Lcom/s1243808733/android/dx/cf/code/SwitchList;
.super Lcom/s1243808733/android/dx/util/MutabilityControl;
.source "SwitchList.java"


# instance fields
.field private size:I

.field private final targets:Lcom/s1243808733/android/dx/util/IntList;

.field private final values:Lcom/s1243808733/android/dx/util/IntList;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 48
    new-instance v0, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->values:Lcom/s1243808733/android/dx/util/IntList;

    .line 49
    new-instance v0, Lcom/s1243808733/android/dx/util/IntList;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    .line 50
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size:I

    return-void
.end method


# virtual methods
.method public add(II)V
    .registers 4

    .line 148
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->throwIfImmutable()V

    if-ltz p2, :cond_10

    .line 154
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->values:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 155
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    return-void

    .line 151
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultTarget()I
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    return v0
.end method

.method public getTarget(I)I
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getTargets()Lcom/s1243808733/android/dx/util/IntList;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    return-object v0
.end method

.method public getValue(I)I
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->values:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getValues()Lcom/s1243808733/android/dx/util/IntList;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->values:Lcom/s1243808733/android/dx/util/IntList;

    return-object v0
.end method

.method public removeSuperfluousDefaults()V
    .registers 7

    .line 164
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->throwIfImmutable()V

    .line 166
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size:I

    .line 168
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4c

    .line 172
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    if-ge v2, v0, :cond_36

    .line 176
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v4, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v4

    if-eq v4, v1, :cond_33

    if-eq v2, v3, :cond_31

    .line 179
    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v5, v3, v4}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    .line 180
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->values:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v4, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    :cond_31
    add-int/lit8 v3, v3, 0x1

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_36
    if-eq v3, v0, :cond_4b

    .line 187
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->values:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/IntList;->shrink(I)V

    .line 188
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, v3, v1}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    .line 189
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->shrink(I)V

    .line 190
    iput v3, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size:I

    :cond_4b
    return-void

    .line 169
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incomplete instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_55

    :goto_54
    throw v0

    :goto_55
    goto :goto_54
.end method

.method public setDefaultTarget(I)V
    .registers 4

    .line 128
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->throwIfImmutable()V

    if-ltz p1, :cond_1d

    .line 134
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size:I

    if-ne v0, v1, :cond_15

    .line 138
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    return-void

    .line 135
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "non-default elements not all set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "target < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setImmutable()V
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->values:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    .line 57
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    .line 58
    invoke-super {p0}, Lcom/s1243808733/android/dx/util/MutabilityControl;->setImmutable()V

    return-void
.end method

.method public size()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size:I

    return v0
.end method
