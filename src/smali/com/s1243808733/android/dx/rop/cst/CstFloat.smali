.class public final Lcom/s1243808733/android/dx/rop/cst/CstFloat;
.super Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;
.source "CstFloat.java"


# static fields
.field public static final VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstFloat;

.field public static final VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstFloat;

.field public static final VALUE_2:Lcom/s1243808733/android/dx/rop/cst/CstFloat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    .line 31
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    .line 34
    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->VALUE_2:Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;-><init>(I)V

    return-void
.end method

.method public static make(I)Lcom/s1243808733/android/dx/rop/cst/CstFloat;
    .registers 2

    .line 47
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/rop/cst/CstFloat;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 70
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getValue()F
    .registers 2

    .line 91
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->getIntBits()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 82
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->getIntBits()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 62
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->getIntBits()I

    move-result v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "float{0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 76
    const-string v0, "float"

    return-object v0
.end method
