.class Lsun/misc/ProxyGenerator$ConstantPool;
.super Ljava/lang/Object;
.source "ProxyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/ProxyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConstantPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/ProxyGenerator$ConstantPool$Entry;,
        Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;,
        Lsun/misc/ProxyGenerator$ConstantPool$ValueEntry;
    }
.end annotation


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private pool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/misc/ProxyGenerator$ConstantPool$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private readOnly:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1697
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsun/misc/ProxyGenerator$ConstantPool;->pool:Ljava/util/List;

    .line 1705
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lsun/misc/ProxyGenerator$ConstantPool;->map:Ljava/util/Map;

    .line 1708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/misc/ProxyGenerator$ConstantPool;->readOnly:Z

    return-void
.end method

.method synthetic constructor <init>(Lsun/misc/ProxyGenerator$1;)V
    .registers 2

    .line 1688
    invoke-direct {p0}, Lsun/misc/ProxyGenerator$ConstantPool;-><init>()V

    return-void
.end method

.method private addEntry(Lsun/misc/ProxyGenerator$ConstantPool$Entry;)S
    .registers 4

    .line 1832
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ConstantPool;->pool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1838
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ConstantPool;->pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0xffff

    if-ge v0, v1, :cond_18

    .line 1842
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ConstantPool;->pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-short v0, v0

    return v0

    .line 1839
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "constant pool size limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getIndirect(Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;)S
    .registers 5

    .line 1876
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ConstantPool;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 1877
    if-eqz v0, :cond_f

    .line 1878
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 1885
    :goto_e
    return v0

    .line 1880
    :cond_f
    iget-boolean v0, p0, Lsun/misc/ProxyGenerator$ConstantPool;->readOnly:Z

    if-nez v0, :cond_22

    .line 1883
    invoke-direct {p0, p1}, Lsun/misc/ProxyGenerator$ConstantPool;->addEntry(Lsun/misc/ProxyGenerator$ConstantPool$Entry;)S

    move-result v0

    .line 1884
    iget-object v1, p0, Lsun/misc/ProxyGenerator$ConstantPool;->map:Ljava/util/Map;

    new-instance v2, Ljava/lang/Short;

    invoke-direct {v2, v0}, Ljava/lang/Short;-><init>(S)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 1881
    :cond_22
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "late constant pool addition"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getValue(Ljava/lang/Object;)S
    .registers 5

    .line 1857
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ConstantPool;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 1858
    if-eqz v0, :cond_f

    .line 1859
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 1867
    :goto_e
    return v0

    .line 1861
    :cond_f
    iget-boolean v0, p0, Lsun/misc/ProxyGenerator$ConstantPool;->readOnly:Z

    if-nez v0, :cond_27

    .line 1865
    new-instance v0, Lsun/misc/ProxyGenerator$ConstantPool$ValueEntry;

    invoke-direct {v0, p1}, Lsun/misc/ProxyGenerator$ConstantPool$ValueEntry;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lsun/misc/ProxyGenerator$ConstantPool;->addEntry(Lsun/misc/ProxyGenerator$ConstantPool$Entry;)S

    move-result v0

    .line 1866
    iget-object v1, p0, Lsun/misc/ProxyGenerator$ConstantPool;->map:Ljava/util/Map;

    new-instance v2, Ljava/lang/Short;

    invoke-direct {v2, v0}, Ljava/lang/Short;-><init>(S)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 1862
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "late constant pool addition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getClass(Ljava/lang/String;)S
    .registers 5

    .line 1738
    invoke-virtual {p0, p1}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    move-result v0

    .line 1739
    new-instance v1, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;-><init>(IS)V

    invoke-direct {p0, v1}, Lsun/misc/ProxyGenerator$ConstantPool;->getIndirect(Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;)S

    move-result v0

    return v0
.end method

.method public getFieldRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .registers 8

    .line 1758
    invoke-virtual {p0, p1}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v0

    .line 1759
    invoke-virtual {p0, p2, p3}, Lsun/misc/ProxyGenerator$ConstantPool;->getNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    move-result v1

    .line 1760
    new-instance v2, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v0, v1}, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;-><init>(ISS)V

    invoke-direct {p0, v2}, Lsun/misc/ProxyGenerator$ConstantPool;->getIndirect(Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;)S

    move-result v0

    return v0
.end method

.method public getFloat(F)S
    .registers 3

    .line 1731
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-direct {p0, v0}, Lsun/misc/ProxyGenerator$ConstantPool;->getValue(Ljava/lang/Object;)S

    move-result v0

    return v0
.end method

.method public getInteger(I)S
    .registers 3

    .line 1724
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0}, Lsun/misc/ProxyGenerator$ConstantPool;->getValue(Ljava/lang/Object;)S

    move-result v0

    return v0
.end method

.method public getInterfaceMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .registers 8

    .line 1782
    invoke-virtual {p0, p1}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v0

    .line 1783
    invoke-virtual {p0, p2, p3}, Lsun/misc/ProxyGenerator$ConstantPool;->getNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    move-result v1

    .line 1784
    new-instance v2, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;

    const/16 v3, 0xb

    invoke-direct {v2, v3, v0, v1}, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;-><init>(ISS)V

    invoke-direct {p0, v2}, Lsun/misc/ProxyGenerator$ConstantPool;->getIndirect(Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;)S

    move-result v0

    return v0
.end method

.method public getMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .registers 8

    .line 1770
    invoke-virtual {p0, p1}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v0

    .line 1771
    invoke-virtual {p0, p2, p3}, Lsun/misc/ProxyGenerator$ConstantPool;->getNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    move-result v1

    .line 1772
    new-instance v2, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v0, v1}, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;-><init>(ISS)V

    invoke-direct {p0, v2}, Lsun/misc/ProxyGenerator$ConstantPool;->getIndirect(Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;)S

    move-result v0

    return v0
.end method

.method public getNameAndType(Ljava/lang/String;Ljava/lang/String;)S
    .registers 7

    .line 1792
    invoke-virtual {p0, p1}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    move-result v0

    .line 1793
    invoke-virtual {p0, p2}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    move-result v1

    .line 1794
    new-instance v2, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;

    const/16 v3, 0xc

    invoke-direct {v2, v3, v0, v1}, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;-><init>(ISS)V

    invoke-direct {p0, v2}, Lsun/misc/ProxyGenerator$ConstantPool;->getIndirect(Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;)S

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)S
    .registers 5

    .line 1747
    invoke-virtual {p0, p1}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    move-result v0

    .line 1748
    new-instance v1, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;-><init>(IS)V

    invoke-direct {p0, v1}, Lsun/misc/ProxyGenerator$ConstantPool;->getIndirect(Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;)S

    move-result v0

    return v0
.end method

.method public getUtf8(Ljava/lang/String;)S
    .registers 3

    .line 1714
    if-eqz p1, :cond_7

    .line 1717
    invoke-direct {p0, p1}, Lsun/misc/ProxyGenerator$ConstantPool;->getValue(Ljava/lang/Object;)S

    move-result v0

    return v0

    .line 1715
    :cond_7
    const/4 v0, 0x0

    throw v0
.end method

.method public setReadOnly()V
    .registers 2

    .line 1806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/misc/ProxyGenerator$ConstantPool;->readOnly:Z

    .line 1807
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1818
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1821
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ConstantPool;->pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1823
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ConstantPool;->pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/ProxyGenerator$ConstantPool$Entry;

    .line 1824
    invoke-virtual {v0, v1}, Lsun/misc/ProxyGenerator$ConstantPool$Entry;->write(Ljava/io/DataOutputStream;)V

    goto :goto_16

    .line 1826
    :cond_26
    return-void
.end method
