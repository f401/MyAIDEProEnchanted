.class Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;
.super Lcom/sun/tools/javac/util/Name;
.source "UnsharedNameTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/UnsharedNameTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NameImpl"
.end annotation


# instance fields
.field final bytes:[B

.field final index:I


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/UnsharedNameTable;[BI)V
    .registers 4

    .line 150
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/util/Name;-><init>(Lcom/sun/tools/javac/util/Name$Table;)V

    .line 151
    iput-object p2, p0, Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;->bytes:[B

    .line 152
    iput p3, p0, Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;->index:I

    .line 153
    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;->bytes:[B

    return-object v0
.end method

.method public getByteAt(I)B
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getByteLength()I
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public getByteOffset()I
    .registers 2

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getIndex()I
    .registers 2

    .line 160
    iget v0, p0, Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;->index:I

    return v0
.end method
