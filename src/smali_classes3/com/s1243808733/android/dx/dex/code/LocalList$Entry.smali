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
        "Ljava/lang/Comparable",
        "<",
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
    .registers 6

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    if-gez p1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    if-nez p2, :cond_1

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "disposition == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    if-nez v0, :cond_2

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec.getLocalItem() == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 156
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->address:I

    .line 160
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    .line 161
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 162
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)I
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 192
    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->address:I

    iget v3, p1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->address:I

    if-ge v2, v3, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->address:I

    iget v3, p1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->address:I

    if-gt v2, v3, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v2

    .line 199
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v3

    .line 201
    if-nez v2, :cond_4

    if-eqz v3, :cond_5

    .line 202
    :cond_2
    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 201
    :cond_4
    if-eqz v3, :cond_2

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iget-object v1, p1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->compareTo(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->compareTo(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 175
    instance-of v1, p1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    if-nez v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->compareTo(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
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

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public matches(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Z
    .registers 3

    .line 302
    iget-object v0, p1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->matches(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    return v0
.end method

.method public matches(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equalsUsingSimpleType(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 168
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget v4, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->address:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDisposition(Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;
    .registers 5

    .line 313
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-ne p1, v0, :cond_0

    .line 317
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->address:I

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->spec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-direct {v0, v1, p1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;-><init>(ILcom/s1243808733/android/dx/dex/code/LocalList$Disposition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    move-object p0, v0

    goto :goto_0
.end method
