.class public final Lcom/s1243808733/android/dx/rop/cst/CstByte;
.super Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;
.source "CstByte.java"


# static fields
.field public static final VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstByte;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstByte;->make(B)Lcom/s1243808733/android/dx/rop/cst/CstByte;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstByte;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstByte;

    return-void
.end method

.method private constructor <init>(B)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;-><init>(I)V

    return-void
.end method

.method public static make(B)Lcom/s1243808733/android/dx/rop/cst/CstByte;
    .registers 2

    .line 37
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstByte;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/rop/cst/CstByte;-><init>(B)V

    return-object v0
.end method

.method public static make(I)Lcom/s1243808733/android/dx/rop/cst/CstByte;
    .registers 3

    int-to-byte v0, p0

    if-ne v0, p0, :cond_8

    .line 56
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstByte;->make(B)Lcom/s1243808733/android/dx/rop/cst/CstByte;

    move-result-object p0

    return-object p0

    .line 52
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bogus byte value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 78
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getValue()B
    .registers 2

    .line 99
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstByte;->getIntBits()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 90
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstByte;->getIntBits()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 71
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstByte;->getIntBits()I

    move-result v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byte{0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 84
    const-string v0, "byte"

    return-object v0
.end method
