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
.method static constructor <clinit>()V
    .registers 2

    .line 28
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

    .line 86
    sget-object v0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    if-ne p0, v0, :cond_5

    return-object p1

    :cond_5
    if-ne p1, v0, :cond_8

    return-object p0

    .line 92
    :cond_8
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->size()I

    move-result v0

    .line 93
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->size()I

    move-result v1

    .line 94
    new-instance v2, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v0, :cond_25

    .line 97
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->get(I)Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->set(ILcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_25
    :goto_25
    if-ge v3, v1, :cond_33

    .line 101
    add-int p0, v0, v3

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->get(I)Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->set(ILcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_33
    return-object v2
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;

    return-object p1
.end method

.method public set(ILcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;)V
    .registers 3

    if-eqz p2, :cond_6

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->set0(ILjava/lang/Object;)V

    return-void

    .line 57
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "item == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;)V
    .registers 6

    .line 73
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;

    invoke-direct {v0, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;)V

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->set(ILcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;)V

    return-void
.end method
