.class public final Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "CatchHandlerList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/s1243808733/android/dx/util/FixedSizeList;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public catchesAll()Z
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    .line 111
    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    sget-object v1, Lcom/s1243808733/android/dx/rop/cst/CstType;->OBJECT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v3

    .line 145
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v4

    .line 146
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_3

    .line 149
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v1

    .line 150
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v6

    .line 151
    invoke-virtual {v1, v6}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;)I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    if-ge v3, v4, :cond_4

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    if-le v3, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 26
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;)I

    move-result v0

    return v0
.end method

.method public get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;
    .locals 1

    .line 49
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;)V
    .locals 0

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public set(ILcom/s1243808733/android/dx/rop/cst/CstType;I)V
    .locals 1

    .line 123
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    invoke-direct {v0, p2, p3}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;I)V

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    .line 55
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v2

    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v0, "catch "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 76
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 79
    const-string v4, ",\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->catchesAll()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    const-string v4, "<any>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :goto_1
    const-string v4, " -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
