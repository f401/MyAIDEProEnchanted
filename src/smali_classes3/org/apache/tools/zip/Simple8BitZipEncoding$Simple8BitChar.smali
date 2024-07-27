.class final Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;
.super Ljava/lang/Object;
.source "Simple8BitZipEncoding.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/zip/Simple8BitZipEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Simple8BitChar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;",
        ">;"
    }
.end annotation


# instance fields
.field public final code:B

.field public final unicode:C


# direct methods
.method constructor <init>(BC)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-byte p1, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    .line 58
    iput-char p2, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    .line 59
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 52
    check-cast p1, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;

    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->compareTo(Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;)I
    .registers 4

    .line 62
    iget-char v0, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    iget-char v1, p1, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 73
    instance-of v1, p1, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;

    if-eqz v1, :cond_0

    .line 74
    check-cast p1, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;

    .line 75
    iget-char v1, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    iget-char v2, p1, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-ne v1, v2, :cond_0

    iget-byte v1, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    iget-byte v2, p1, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 77
    :cond_0
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 82
    iget-char v0, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    .line 68
    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    return-object v0
.end method
