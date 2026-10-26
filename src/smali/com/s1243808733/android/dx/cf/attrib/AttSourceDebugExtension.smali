.class public final Lcom/s1243808733/android/dx/cf/attrib/AttSourceDebugExtension;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "AttSourceDebugExtension.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "SourceDebugExtension"


# instance fields
.field private final smapString:Lcom/s1243808733/android/dx/rop/cst/CstString;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V
    .locals 2

    .line 37
    const-string v0, "SourceDebugExtension"

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/attrib/AttSourceDebugExtension;->smapString:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "smapString == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public byteLength()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttSourceDebugExtension;->smapString:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getUtf8Size()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getSmapString()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttSourceDebugExtension;->smapString:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-object v0
.end method
