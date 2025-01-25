.class Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;
.super Lsun/misc/ProxyGenerator$ConstantPool$Entry;
.source "ProxyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/ProxyGenerator$ConstantPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndirectEntry"
.end annotation


# instance fields
.field private index0:S

.field private index1:S

.field private tag:I


# direct methods
.method public constructor <init>(IS)V
    .registers 4

    .line 1960
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/misc/ProxyGenerator$ConstantPool$Entry;-><init>(Lsun/misc/ProxyGenerator$1;)V

    .line 1961
    iput p1, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->tag:I

    .line 1962
    iput-short p2, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->index0:S

    .line 1963
    const/4 v0, 0x0

    iput-short v0, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->index1:S

    .line 1964
    return-void
.end method

.method public constructor <init>(ISS)V
    .registers 5

    .line 1970
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/misc/ProxyGenerator$ConstantPool$Entry;-><init>(Lsun/misc/ProxyGenerator$1;)V

    .line 1971
    iput p1, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->tag:I

    .line 1972
    iput-short p2, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->index0:S

    .line 1973
    iput-short p3, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->index1:S

    .line 1974
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1997
    instance-of v0, p1, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;

    if-eqz v0, :cond_1a

    .line 1998
    check-cast p1, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;

    .line 1999
    iget v0, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->tag:I

    iget v1, p1, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->tag:I

    if-ne v0, v1, :cond_1a

    iget-short v0, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->index0:S

    iget-short v1, p1, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->index0:S

    if-ne v0, v1, :cond_1a

    iget-short v0, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->index1:S

    iget-short v1, p1, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->index1:S

    if-ne v0, v1, :cond_1a

    .line 2002
    const/4 v0, 0x1

    .line 2005
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public hashCode()I
    .registers 3

    .line 1993
    iget v0, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->tag:I

    iget-short v1, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->index0:S

    add-int/2addr v0, v1

    iget-short v1, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->index1:S

    add-int/2addr v0, v1

    return v0
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1977
    iget v0, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->tag:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1978
    iget-short v0, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->index0:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1983
    iget v0, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->tag:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xc

    if-ne v0, v1, :cond_21

    .line 1988
    :cond_1c
    iget-short v0, p0, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;->index1:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1990
    :cond_21
    return-void
.end method
