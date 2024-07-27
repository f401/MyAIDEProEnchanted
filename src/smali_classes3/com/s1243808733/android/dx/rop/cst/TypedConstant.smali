.class public abstract Lcom/s1243808733/android/dx/rop/cst/TypedConstant;
.super Lcom/s1243808733/android/dx/rop/cst/Constant;
.source "TypedConstant.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/type/TypeBearer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/Constant;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBasicFrameType()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicFrameType()I

    move-result v0

    return v0
.end method

.method public final getBasicType()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicType()I

    move-result v0

    return v0
.end method

.method public final getFrameType()Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 33
    return-object p0
.end method

.method public final isConstant()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 51
    const/4 v0, 0x1

    return v0
.end method
