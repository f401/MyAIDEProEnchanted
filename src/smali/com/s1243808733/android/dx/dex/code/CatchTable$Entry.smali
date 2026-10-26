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
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    if-le p2, p1, :cond_1

    .line 121
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->start:I

    .line 126
    iput p2, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->end:I

    .line 127
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handlers.isMutable()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end <= start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 151
    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->start:I

    iget v3, p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->start:I

    if-ge v2, v3, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    if-le v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 157
    :cond_2
    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->end:I

    iget v3, p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->end:I

    if-lt v2, v3, :cond_0

    if-le v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    iget-object v1, p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 95
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 141
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    if-eqz v0, :cond_0

    .line 142
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnd()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->end:I

    return v0
.end method

.method public getHandlers()Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->start:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 133
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->start:I

    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->end:I

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
