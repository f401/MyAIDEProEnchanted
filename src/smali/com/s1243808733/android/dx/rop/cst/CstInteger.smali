.class public final Lcom/s1243808733/android/dx/rop/cst/CstInteger;
.super Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;
.source "CstInteger.java"


# static fields
.field public static final VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

.field public static final VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

.field public static final VALUE_2:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

.field public static final VALUE_3:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

.field public static final VALUE_4:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

.field public static final VALUE_5:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

.field public static final VALUE_M1:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

.field private static final cache:[Lcom/s1243808733/android/dx/rop/cst/CstInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const/16 v0, 0x1ff

    new-array v0, v0, [Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->cache:[Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 31
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_M1:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 40
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_2:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 43
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_3:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 46
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_4:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    .line 49
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_5:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;-><init>(I)V

    return-void
.end method

.method public static make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;
    .registers 5

    .line 64
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->cache:[Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const v1, 0x7fffffff

    and-int/2addr v1, p0

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 65
    aget-object v2, v0, v1

    if-eqz v2, :cond_13

    .line 67
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_13

    return-object v2

    .line 71
    :cond_13
    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-direct {v2, p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;-><init>(I)V

    .line 72
    aput-object v2, v0, v1

    return-object v2
.end method


# virtual methods
.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 95
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 116
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getIntBits()I

    move-result v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 107
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getIntBits()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 88
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getIntBits()I

    move-result v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "int{0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

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

    .line 101
    const-string v0, "int"

    return-object v0
.end method
