.class Lcom/sun/tools/javac/util/Position$LineMapImpl;
.super Ljava/lang/Object;
.source "Position.java"

# interfaces
.implements Lcom/sun/tools/javac/util/Position$LineMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/Position;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineMapImpl"
.end annotation


# instance fields
.field private lastLine:I

.field private lastPosition:I

.field protected startPosition:[I


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/util/Position$LineMapImpl;->lastPosition:I

    .line 191
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/util/Position$LineMapImpl;->lastLine:I

    .line 148
    return-void
.end method

.method private static longToInt(J)I
    .registers 6

    .line 231
    long-to-int v0, p0

    .line 232
    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-nez v1, :cond_0

    .line 234
    return v0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected build([CI)V
    .registers 11

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/4 v2, 0x0

    .line 151
    .line 153
    new-array v4, p2, [I

    move v1, v2

    move v0, v2

    .line 154
    :goto_0
    if-ge v0, p2, :cond_5

    .line 155
    add-int/lit8 v3, v1, 0x1

    aput v0, v4, v1

    .line 157
    :cond_0
    aget-char v1, p1, v0

    .line 158
    if-eq v1, v7, :cond_1

    if-ne v1, v6, :cond_2

    .line 159
    :cond_1
    if-ne v1, v7, :cond_4

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p2, :cond_4

    add-int/lit8 v1, v0, 0x1

    aget-char v1, p1, v1

    if-ne v1, v6, :cond_4

    .line 160
    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    .line 165
    :cond_2
    const/16 v5, 0x9

    if-ne v1, v5, :cond_3

    .line 166
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->setTabPosition(I)V

    .line 167
    :cond_3
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p2, :cond_0

    move v1, v3

    goto :goto_0

    .line 162
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    .line 163
    goto :goto_0

    .line 169
    :cond_5
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sun/tools/javac/util/Position$LineMapImpl;->startPosition:[I

    .line 170
    invoke-static {v4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    return-void
.end method

.method public getColumnNumber(I)I
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/sun/tools/javac/util/Position$LineMapImpl;->startPosition:[I

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->getLineNumber(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getColumnNumber(J)J
    .registers 6

    .line 227
    invoke-static {p1, p2}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->longToInt(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->getColumnNumber(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLineNumber(I)I
    .registers 6

    .line 194
    iget v0, p0, Lcom/sun/tools/javac/util/Position$LineMapImpl;->lastPosition:I

    if-ne p1, v0, :cond_0

    .line 195
    iget v0, p0, Lcom/sun/tools/javac/util/Position$LineMapImpl;->lastLine:I

    .line 215
    :goto_0
    return v0

    .line 197
    :cond_0
    iput p1, p0, Lcom/sun/tools/javac/util/Position$LineMapImpl;->lastPosition:I

    .line 199
    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Lcom/sun/tools/javac/util/Position$LineMapImpl;->startPosition:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 201
    :goto_1
    if-gt v0, v1, :cond_3

    .line 202
    add-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    .line 203
    iget-object v3, p0, Lcom/sun/tools/javac/util/Position$LineMapImpl;->startPosition:[I

    aget v3, v3, v2

    .line 205
    if-ge v3, p1, :cond_1

    .line 206
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 207
    :cond_1
    if-le v3, p1, :cond_2

    .line 208
    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    .line 210
    :cond_2
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/sun/tools/javac/util/Position$LineMapImpl;->lastLine:I

    goto :goto_0

    .line 214
    :cond_3
    iput v0, p0, Lcom/sun/tools/javac/util/Position$LineMapImpl;->lastLine:I

    goto :goto_0
.end method

.method public getLineNumber(J)J
    .registers 6

    .line 219
    invoke-static {p1, p2}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->longToInt(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->getLineNumber(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPosition(II)I
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/sun/tools/javac/util/Position$LineMapImpl;->startPosition:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getPosition(JJ)J
    .registers 8

    .line 186
    invoke-static {p1, p2}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->longToInt(J)I

    move-result v0

    invoke-static {p3, p4}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->longToInt(J)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->getPosition(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getStartPosition(I)I
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/sun/tools/javac/util/Position$LineMapImpl;->startPosition:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getStartPosition(J)J
    .registers 6

    .line 178
    invoke-static {p1, p2}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->longToInt(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->getStartPosition(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected setTabPosition(I)V
    .registers 2

    .line 237
    return-void
.end method
