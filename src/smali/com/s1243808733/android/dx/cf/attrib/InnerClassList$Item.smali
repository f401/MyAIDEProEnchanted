.class public Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;
.super Ljava/lang/Object;
.source "InnerClassList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final accessFlags:I

.field private final innerClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private final innerName:Lcom/s1243808733/android/dx/rop/cst/CstString;

.field private final outerClass:Lcom/s1243808733/android/dx/rop/cst/CstType;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstString;I)V
    .registers 5

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_e

    .line 95
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->innerClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 96
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->outerClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 97
    iput-object p3, p0, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->innerName:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 98
    iput p4, p0, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->accessFlags:I

    return-void

    .line 92
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "innerClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    .line 134
    iget v0, p0, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->accessFlags:I

    return v0
.end method

.method public getInnerClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->innerClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public getInnerName()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->innerName:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-object v0
.end method

.method public getOuterClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;->outerClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method
