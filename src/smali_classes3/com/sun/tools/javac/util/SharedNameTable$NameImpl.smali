.class Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;
.super Lcom/sun/tools/javac/util/Name;
.source "SharedNameTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/SharedNameTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NameImpl"
.end annotation


# instance fields
.field index:I

.field length:I

.field next:Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/SharedNameTable;)V
    .registers 2

    .line 176
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/util/Name;-><init>(Lcom/sun/tools/javac/util/Name$Table;)V

    .line 177
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x0

    .line 213
    instance-of v0, p1, Lcom/sun/tools/javac/util/Name;

    if-eqz v0, :cond_0

    .line 214
    iget-object v2, p0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->table:Lcom/sun/tools/javac/util/Name$Table;

    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/util/Name;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    if-ne v2, v0, :cond_1

    iget v0, p0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->index:I

    check-cast p1, Lcom/sun/tools/javac/util/Name;

    .line 215
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/Name;->getIndex()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getByteArray()[B
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->table:Lcom/sun/tools/javac/util/Name$Table;

    check-cast v0, Lcom/sun/tools/javac/util/SharedNameTable;

    iget-object v0, v0, Lcom/sun/tools/javac/util/SharedNameTable;->bytes:[B

    return-object v0
.end method

.method public getByteAt(I)B
    .registers 4

    .line 191
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->getByteArray()[B

    move-result-object v0

    iget v1, p0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->index:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public getByteLength()I
    .registers 2

    .line 186
    iget v0, p0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->length:I

    return v0
.end method

.method public getByteOffset()I
    .registers 2

    .line 201
    iget v0, p0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->index:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .line 181
    iget v0, p0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->index:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 207
    iget v0, p0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->index:I

    return v0
.end method
