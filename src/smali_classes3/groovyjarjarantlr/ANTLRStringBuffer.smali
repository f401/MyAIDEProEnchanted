.class public Lgroovyjarjarantlr/ANTLRStringBuffer;
.super Ljava/lang/Object;


# instance fields
.field protected DW:I

.field protected j6:[C


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6:[C

    const/4 v0, 0x0

    iput v0, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW:I

    const/16 v0, 0x32

    new-array v0, v0, [C

    iput-object v0, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6:[C

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW:I

    return v0
.end method

.method public final j6(C)V
    .registers 5

    iget v0, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW:I

    iget-object v1, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6:[C

    array-length v2, v1

    if-lt v0, v2, :cond_21

    array-length v0, v1

    :goto_8
    iget v1, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW:I

    if-lt v1, v0, :cond_f

    mul-int/lit8 v0, v0, 0x2

    goto :goto_8

    :cond_f
    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_12
    iget v2, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW:I

    if-ge v1, v2, :cond_1f

    iget-object v2, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6:[C

    aget-char v2, v2, v1

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1f
    iput-object v0, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6:[C

    :cond_21
    iget-object v0, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6:[C

    iget v1, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW:I

    aput-char p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW:I

    return-void
.end method

.method public final j6(I)V
    .registers 3

    iget v0, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW:I

    if-ge p1, v0, :cond_7

    iput p1, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW:I

    goto :goto_10

    :cond_7
    :goto_7
    iget v0, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW:I

    if-le p1, v0, :cond_10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(C)V

    goto :goto_7

    :cond_10
    :goto_10
    return-void
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public final j6()[C
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6:[C

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->j6:[C

    const/4 v2, 0x0

    iget v3, p0, Lgroovyjarjarantlr/ANTLRStringBuffer;->DW:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
