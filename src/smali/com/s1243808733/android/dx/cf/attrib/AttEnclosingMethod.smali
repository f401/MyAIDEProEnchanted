.class public final Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "AttEnclosingMethod.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "EnclosingMethod"


# instance fields
.field private final method:Lcom/s1243808733/android/dx/rop/cst/CstNat;

.field private final type:Lcom/s1243808733/android/dx/rop/cst/CstType;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V
    .registers 4

    .line 44
    const-string v0, "EnclosingMethod"

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 50
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 51
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    return-void

    .line 47
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public byteLength()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public getEnclosingClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public getMethod()Lcom/s1243808733/android/dx/rop/cst/CstNat;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;->method:Lcom/s1243808733/android/dx/rop/cst/CstNat;

    return-object v0
.end method
