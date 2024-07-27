.class public final Lcom/s1243808733/android/dx/rop/cst/CstBoolean;
.super Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;
.source "CstBoolean.java"


# static fields
.field public static final VALUE_FALSE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

.field public static final VALUE_TRUE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;-><init>(Z)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->VALUE_FALSE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;-><init>(Z)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->VALUE_TRUE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 3

    .line 66
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;-><init>(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static make(I)Lcom/s1243808733/android/dx/rop/cst/CstBoolean;
    .registers 4

    .line 51
    if-nez p0, :cond_0

    .line 52
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->VALUE_FALSE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    .line 54
    :goto_0
    return-object v0

    .line 53
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 54
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->VALUE_TRUE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bogus value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static make(Z)Lcom/s1243808733/android/dx/rop/cst/CstBoolean;
    .registers 2

    .line 40
    if-eqz p0, :cond_0

    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->VALUE_TRUE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->VALUE_FALSE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    goto :goto_0
.end method


# virtual methods
.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 78
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getValue()Z
    .registers 2

    .line 99
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->getIntBits()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "boolean{true}"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "boolean{false}"

    goto :goto_0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 84
    const-string v0, "boolean"

    return-object v0
.end method
