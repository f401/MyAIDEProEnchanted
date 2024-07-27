.class public final Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;
.super Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;
.source "CstKnownNull.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;->THE_ONE:Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;-><init>()V

    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 39
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;

    return v0
.end method

.method public fitsInInt()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public getIntBits()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getLongBits()J
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 110
    const/4 v0, 0x0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 63
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 45
    const v0, 0x4466757a

    return v0
.end method

.method public isCategory2()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 81
    const-string v0, "null"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 57
    const-string v0, "known-null"

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 69
    const-string v0, "known-null"

    return-object v0
.end method
