.class public final Lcom/s1243808733/android/dx/cf/attrib/RawAttribute;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "RawAttribute.java"


# instance fields
.field private final data:Lcom/s1243808733/android/dx/util/ByteArray;

.field private final pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/s1243808733/android/dx/util/ByteArray;IILcom/s1243808733/android/dx/rop/cst/ConstantPool;)V
    .registers 6

    .line 64
    add-int/2addr p4, p3

    invoke-virtual {p2, p3, p4}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lcom/s1243808733/android/dx/cf/attrib/RawAttribute;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;)V
    .registers 4

    .line 43
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_a

    .line 49
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/attrib/RawAttribute;->data:Lcom/s1243808733/android/dx/util/ByteArray;

    .line 50
    iput-object p3, p0, Lcom/s1243808733/android/dx/cf/attrib/RawAttribute;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    return-void

    .line 46
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "data == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public byteLength()I
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/RawAttribute;->data:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getData()Lcom/s1243808733/android/dx/util/ByteArray;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/RawAttribute;->data:Lcom/s1243808733/android/dx/util/ByteArray;

    return-object v0
.end method

.method public getPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/RawAttribute;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    return-object v0
.end method
