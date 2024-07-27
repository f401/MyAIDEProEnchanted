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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->throwIfImmutable()V

    .line 150
    if-gez p2, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->values:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 155
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    return-void
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

    move-result v0

    return v0
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

    move-result v0

    return v0
.end method

.method public getValues()Lcom/s1243808733/android/dx/util/IntList;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->values:Lcom/s1243808733/android/dx/util/IntList;

    return-object v0
.end method

.method public removeSuperfluousDefaults()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->throwIfImmutable()V

    .line 166
    iget v3, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size:I

    .line 168
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incomplete instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v4

    move v0, v1

    move v2, v1

    .line 175
    :goto_0
    if-lt v2, v3, :cond_2

    .line 186
    if-eq v0, v3, :cond_1

    .line 187
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->values:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->shrink(I)V

    .line 188
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0, v4}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    .line 189
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/IntList;->shrink(I)V

    .line 190
    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size:I

    :cond_1
    return-void

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    .line 177
    if-eq v1, v4, :cond_4

    .line 178
    if-eq v2, v0, :cond_3

    .line 179
    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v5, v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    .line 180
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->values:Lcom/s1243808733/android/dx/util/IntList;

    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->values:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    .line 182
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 175
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public setDefaultTarget(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->throwIfImmutable()V

    .line 130
    if-gez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->size:I

    if-eq v0, v1, :cond_1

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "non-default elements not all set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/SwitchList;->targets:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    return-void
.end method

.method public setImmutable()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

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
