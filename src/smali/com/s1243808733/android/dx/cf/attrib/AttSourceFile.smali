.class public final Lcom/s1243808733/android/dx/cf/attrib/AttSourceFile;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "AttSourceFile.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "SourceFile"


# instance fields
.field private final sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V
    .registers 3

    .line 37
    const-string v0, "SourceFile"

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    .line 43
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/attrib/AttSourceFile;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-void

    .line 40
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sourceFile == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public byteLength()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public getSourceFile()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/AttSourceFile;->sourceFile:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-object v0
.end method
