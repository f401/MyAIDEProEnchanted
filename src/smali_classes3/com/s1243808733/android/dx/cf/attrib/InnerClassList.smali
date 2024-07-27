.class public final Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "InnerClassList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;
    .registers 3

    .line 44
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstString;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            "Lcom/s1243808733/android/dx/rop/cst/CstString;",
            "I)V"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList$Item;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstString;I)V

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;->set0(ILjava/lang/Object;)V

    return-void
.end method
