.class Lcom/s1243808733/android/dx/cf/direct/DirectClassFile$DcfTypeList;
.super Ljava/lang/Object;
.source "DirectClassFile.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/type/TypeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DcfTypeList"
.end annotation


# instance fields
.field private final bytes:Lcom/s1243808733/android/dx/util/ByteArray;

.field private final pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

.field private final size:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/util/ByteArray;IILcom/s1243808733/android/dx/rop/cst/StdConstantPool;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V
    .locals 6

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p3, :cond_1

    .line 635
    mul-int/lit8 v0, p3, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v2

    .line 636
    iput-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile$DcfTypeList;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    .line 637
    iput p3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile$DcfTypeList;->size:I

    .line 638
    iput-object p4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile$DcfTypeList;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    mul-int/lit8 v3, v1, 0x2

    .line 642
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 645
    :try_start_0
    invoke-virtual {p4, v0}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p5, :cond_0

    .line 651
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p5, v2, v3, v0, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 648
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bogus class cpi"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 632
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_2
    return-void
.end method


# virtual methods
.method public getType(I)Lcom/s1243808733/android/dx/rop/type/Type;
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile$DcfTypeList;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 679
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile$DcfTypeList;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public getWordCount()I
    .locals 1

    .line 672
    iget v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile$DcfTypeList;->size:I

    return v0
.end method

.method public isMutable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 665
    iget v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile$DcfTypeList;->size:I

    return v0
.end method

.method public withAddedType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/TypeList;
    .locals 2

    .line 685
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
