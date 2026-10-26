.class public final Lcom/s1243808733/android/dx/cf/attrib/AttSignature;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "AttSignature.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "Signature"


# instance fields
.field private final signature:Lcom/s1243808733/android/dx/rop/cst/CstString;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V
    .locals 2

    .line 37
    const-string v0, "Signature"

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/attrib/AttSignature;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "signature == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public byteLength()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttSignature;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-object v0
.end method
