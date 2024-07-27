.class public Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;
.super Ljava/lang/Object;
.source "CatchTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/dex/code/CatchTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final end:I

.field private final handlers:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

.field private final start:I


# direct methods
.method public constructor <init>(IILcom/s1243808733/android/dx/dex/code/CatchHandlerList;)V
    .registers 6

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    if-gez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    if-gt p2, p1, :cond_1

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end <= start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handlers.isMutable()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->start:I

    .line 126
    iput p2, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->end:I

    .line 127
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;)I
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 151
    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->start:I

    iget v3, p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->start:I

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 163
    :cond_1
    :goto_0
    return v0

    .line 153
    :cond_2
    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->start:I

    iget v3, p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->start:I

    if-gt v2, v3, :cond_1

    .line 157
    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->end:I

    iget v3, p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->end:I

    if-lt v2, v3, :cond_0

    .line 159
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->end:I

    iget v2, p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->end:I

    if-gt v1, v2, :cond_1

    .line 163
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    iget-object v1, p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 141
    instance-of v1, p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    if-eqz v1, :cond_0

    .line 142
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEnd()I
    .registers 2

    .line 181
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->end:I

    return v0
.end method

.method public getHandlers()Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    return-object v0
.end method

.method public getStart()I
    .registers 2

    .line 172
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->start:I

    return v0
.end method

.method public hashCode()I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 133
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->start:I

    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->end:I

    .line 134
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->hashCode()I

    move-result v2

    .line 135
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    return v0
.end method
