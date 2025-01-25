.class public final Lcom/s1243808733/android/dx/rop/cst/CstBoolean;
.super Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;
.source "CstBoolean.java"


# static fields
.field public static final VALUE_FALSE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

.field public static final VALUE_TRUE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;-><init>(Z)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->VALUE_FALSE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    .line 30
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;-><init>(Z)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->VALUE_TRUE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;-><init>(I)V

    return-void
.end method

.method public static make(I)Lcom/s1243808733/android/dx/rop/cst/CstBoolean;
    .registers 3

    if-nez p0, :cond_5

    .line 52
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->VALUE_FALSE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 54
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->VALUE_TRUE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    return-object p0

    .line 56
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bogus value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static make(Z)Lcom/s1243808733/android/dx/rop/cst/CstBoolean;
    .registers 1

    if-eqz p0, :cond_5

    .line 40
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->VALUE_TRUE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    goto :goto_7

    :cond_5
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->VALUE_FALSE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    :goto_7
    return-object p0
.end method


# virtual methods
.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 78
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getValue()Z
    .registers 2

    .line 99
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->getIntBits()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 90
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->getValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "true"

    goto :goto_b

    :cond_9
    const-string v0, "false"

    :goto_b
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->getValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "boolean{true}"

    goto :goto_b

    :cond_9
    const-string v0, "boolean{false}"

    :goto_b
    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 84
    const-string v0, "boolean"

    return-object v0
.end method
