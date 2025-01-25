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
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public catchesAll()Z
    .registers 3

    .line 105
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 111
    :cond_8
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    sget-object v1, Lcom/s1243808733/android/dx/rop/cst/CstType;->OBJECT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public compareTo(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v1

    .line 145
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v2

    .line 146
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_25

    .line 149
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v5

    .line 150
    invoke-virtual {p1, v4}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v6

    .line 151
    invoke-virtual {v5, v6}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;)I

    move-result v5

    if-eqz v5, :cond_22

    return v5

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_25
    if-ge v1, v2, :cond_29

    const/4 p1, -0x1

    return p1

    :cond_29
    if-le v1, v2, :cond_2d

    const/4 p1, 0x1

    return p1

    :cond_2d
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 26
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;)I

    move-result p1

    return p1
.end method

.method public get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    return-object p1
.end method

.method public set(ILcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;)V
    .registers 3

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public set(ILcom/s1243808733/android/dx/rop/cst/CstType;I)V
    .registers 5

    .line 123
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    invoke-direct {v0, p2, p3}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;I)V

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 55
    const-string v0, ""

    invoke-virtual {p0, v0, v0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v1

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string p2, "catch "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    :goto_17
    if-ge p2, v1, :cond_5a

    .line 76
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v2

    if-eqz p2, :cond_2c

    .line 79
    const-string v3, ",\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    add-int/lit8 v3, v1, -0x1

    if-ne p2, v3, :cond_3c

    .line 84
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;->catchesAll()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 85
    const-string v3, "<any>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 87
    :cond_3c
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :goto_47
    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    .line 94
    :cond_5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
