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
        "Ljava/lang/Comparable<",
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
    .registers 5

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_24

    if-le p2, p1, :cond_1c

    .line 121
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->isMutable()Z

    move-result v0

    if-nez v0, :cond_14

    .line 125
    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->start:I

    .line 126
    iput p2, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->end:I

    .line 127
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    return-void

    .line 122
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handlers.isMutable()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end <= start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;)I
    .registers 6

    .line 151
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->start:I

    iget v1, p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->start:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    const/4 v3, 0x1

    if-le v0, v1, :cond_c

    return v3

    .line 157
    :cond_c
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->end:I

    iget v1, p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->end:I

    if-ge v0, v1, :cond_13

    return v2

    :cond_13
    if-le v0, v1, :cond_16

    return v3

    .line 163
    :cond_16
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 95
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 141
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    if-eqz v0, :cond_e

    .line 142
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchTable$Entry;)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
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
    .registers 3

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
