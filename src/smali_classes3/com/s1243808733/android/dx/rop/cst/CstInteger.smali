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
.method static final constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1ff

    new-array v0, v0, [Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->cache:[Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_M1:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_2:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_3:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_4:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_5:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;-><init>(I)V

    return-void
.end method

.method public static make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;
    .registers 4

    .line 64
    const v0, 0x7fffffff

    and-int/2addr v0, p0

    sget-object v1, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->cache:[Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    array-length v1, v1

    rem-int v1, v0, v1

    .line 65
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->cache:[Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    aget-object v0, v0, v1

    .line 67
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 73
    :goto_0
    return-object v0

    .line 71
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;-><init>(I)V

    .line 72
    sget-object v2, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->cache:[Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    aput-object v0, v2, v1

    goto :goto_0
.end method


# virtual methods
.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getIntBits()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getIntBits()I

    move-result v0

    .line 89
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "int{0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 101
    const-string v0, "int"

    return-object v0
.end method
