.class public final Lcom/s1243808733/android/dx/rop/cst/CstLong;
.super Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;
.source "CstLong.java"


# static fields
.field public static final VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstLong;

.field public static final VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstLong;


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstLong;->make(J)Lcom/s1243808733/android/dx/rop/cst/CstLong;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstLong;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstLong;

    const/4 v0, 0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstLong;->make(J)Lcom/s1243808733/android/dx/rop/cst/CstLong;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstLong;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstLong;

    return-void
.end method

.method constructor <init>(J)V
    .registers 4

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;-><init>(J)V

    return-void
.end method

.method public static make(J)Lcom/s1243808733/android/dx/rop/cst/CstLong;
    .registers 4

    .line 44
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstLong;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstLong;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 66
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getValue()J
    .registers 3

    .line 87
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLong;->getLongBits()J

    move-result-wide v0

    return-wide v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLong;->getLongBits()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLong;->getLongBits()J

    move-result-wide v0

    .line 60
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "long{0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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

    .line 72
    const-string v0, "long"

    return-object v0
.end method
