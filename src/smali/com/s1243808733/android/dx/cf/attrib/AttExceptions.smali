.class public final Lcom/s1243808733/android/dx/cf/attrib/AttExceptions;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "AttExceptions.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "Exceptions"


# instance fields
.field private final exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/type/TypeList;)V
    .registers 3

    .line 39
    const-string v0, "Exceptions"

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 42
    :try_start_5
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->isMutable()Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_9} :catch_16

    if-nez v0, :cond_e

    .line 50
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/attrib/AttExceptions;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-void

    .line 43
    :cond_e
    :try_start_e
    new-instance p1, Lcom/s1243808733/android/dx/util/MutabilityException;

    const-string v0, "exceptions.isMutable()"

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_16} :catch_16

    .line 47
    :catch_16
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "exceptions == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public byteLength()I
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttExceptions;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getExceptions()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttExceptions;->exceptions:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-object v0
.end method
