.class public Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "BootstrapMethodsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method public static concat(Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;)Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;
    .registers 8

    const/4 v1, 0x0

    .line 86
    sget-object v0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    if-ne p0, v0, :cond_1

    move-object p0, p1

    .line 104
    :cond_0
    :goto_0
    return-object p0

    .line 88
    :cond_1
    sget-object v0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    if-eq p1, v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->size()I

    move-result v3

    .line 93
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->size()I

    move-result v4

    .line 94
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    add-int v2, v3, v4

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;-><init>(I)V

    move v2, v1

    .line 96
    :goto_1
    if-lt v2, v3, :cond_2

    .line 100
    :goto_2
    if-lt v1, v4, :cond_3

    move-object p0, v0

    .line 104
    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->get(I)Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->set(ILcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;)V

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 101
    :cond_3
    add-int v2, v3, v1

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->get(I)Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->set(ILcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;
    .registers 3

    .line 46
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;",
            ")V"
        }
    .end annotation

    .line 56
    if-nez p2, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public set(ILcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            "Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;",
            "Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;",
            ")V"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;

    invoke-direct {v0, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;)V

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->set(ILcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;)V

    return-void
.end method
