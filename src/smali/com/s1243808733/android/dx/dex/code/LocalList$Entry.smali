.class public Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;
.super Ljava/lang/Object;
.source "LocalList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/dex/code/LocalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final address:I

.field private final disposition:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

.field private final spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

.field private final type:Lcom/s1243808733/android/dx/rop/cst/CstType;


# direct methods
.method public constructor <init>(ILcom/s1243808733/android/dx/dex/code/LocalList$Disposition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 5

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_37

    if-eqz p2, :cond_2f

    .line 150
    :try_start_7
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_b} :catch_26

    if-eqz v0, :cond_1e

    .line 159
    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->address:I

    .line 160
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    .line 161
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 162
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-void

    .line 151
    :cond_1e
    :try_start_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec.getLocalItem() == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_26} :catch_26

    .line 156
    :catch_26
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_2f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "disposition == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)I
    .registers 6

    .line 192
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->address:I

    iget v1, p1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->address:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    const/4 v3, 0x1

    if-le v0, v1, :cond_c

    return v3

    .line 198
    :cond_c
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v0

    .line 199
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v1

    if-eq v0, v1, :cond_1a

    if-eqz v0, :cond_19

    const/4 v2, 0x1

    :cond_19
    return v2

    .line 205
    :cond_1a
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->compareTo(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 119
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->compareTo(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 175
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 179
    :cond_6
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->compareTo(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)I

    move-result p1

    if-nez p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public getAddress()I
    .registers 2

    .line 214
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->address:I

    return v0
.end method

.method public getDisposition()Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    return-object v0
.end method

.method public getName()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    return-object v0
.end method

.method public getRegister()I
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    return v0
.end method

.method public getRegisterSpec()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method public getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public isStart()Z
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    sget-object v1, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->START:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public matches(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Z
    .registers 2

    .line 302
    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->matches(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result p1

    return p1
.end method

.method public matches(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equalsUsingSimpleType(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->address:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDisposition(Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;
    .registers 5

    .line 313
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-ne p1, v0, :cond_5

    return-object p0

    .line 317
    :cond_5
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->address:I

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-direct {v0, v1, p1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;-><init>(ILcom/s1243808733/android/dx/dex/code/LocalList$Disposition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method
