.class Lcom/sun/tools/javac/jvm/Code$State;
.super Ljava/lang/Object;
.source "Code.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "State"
.end annotation


# instance fields
.field defined:Lcom/sun/tools/javac/util/Bits;

.field locks:[I

.field nlocks:I

.field stack:[Lcom/sun/tools/javac/code/Type;

.field stacksize:I

.field final this$0:Lcom/sun/tools/javac/jvm/Code;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Code;)V
    .registers 3

    .line 1738
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1739
    new-instance v0, Lcom/sun/tools/javac/util/Bits;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Bits;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    .line 1740
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    .line 1741
    return-void
.end method


# virtual methods
.method dump()V
    .registers 2

    .line 1906
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Code$State;->dump(I)V

    .line 1907
    return-void
.end method

.method dump(I)V
    .registers 9

    const/4 v1, 0x0

    .line 1910
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stackMap for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Code;->meth:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Code;->meth:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1911
    const/4 v0, -0x1

    if-ne p1, v0, :cond_62

    .line 1912
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 1915
    :goto_31
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, " stack (from bottom):"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 1916
    :goto_39
    iget v2, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    if-ge v0, v2, :cond_79

    .line 1917
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1916
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 1914
    :cond_62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_31

    .line 1920
    :cond_79
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget v0, v0, Lcom/sun/tools/javac/jvm/Code;->max_locals:I

    add-int/lit8 v0, v0, -0x1

    :goto_7f
    if-ltz v0, :cond_13f

    .line 1921
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/Bits;->isMember(I)Z

    move-result v2

    if-eqz v2, :cond_cb

    move v2, v0

    .line 1926
    :goto_8a
    if-ltz v2, :cond_93

    .line 1927
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, " locals:"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_93
    move v0, v1

    .line 1928
    :goto_94
    if-gt v0, v2, :cond_10d

    .line 1929
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1930
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/Bits;->isMember(I)Z

    move-result v3

    if-eqz v3, :cond_105

    .line 1931
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v3, v3, v0

    .line 1932
    if-nez v3, :cond_ce

    .line 1933
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "(none)"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1928
    :goto_c8
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 1920
    :cond_cb
    add-int/lit8 v0, v0, -0x1

    goto :goto_7f

    .line 1934
    :cond_ce
    iget-object v4, v3, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    if-nez v4, :cond_da

    .line 1935
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "UNKNOWN!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c8

    .line 1937
    :cond_da
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-object v6, v6, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    .line 1938
    invoke-virtual {v3, v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1937
    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c8

    .line 1940
    :cond_105
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "undefined"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c8

    .line 1943
    :cond_10d
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    if-eqz v0, :cond_13e

    .line 1944
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, " locks:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1945
    :goto_118
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    if-ge v1, v0, :cond_139

    .line 1946
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code$State;->locks:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1945
    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    .line 1948
    :cond_139
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 1950
    :cond_13e
    return-void

    :cond_13f
    move v2, v1

    goto/16 :goto_8a
.end method

.method dup()Lcom/sun/tools/javac/jvm/Code$State;
    .registers 5

    .line 1745
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/jvm/Code$State;

    .line 1746
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    .line 1747
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, [Lcom/sun/tools/javac/code/Type;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    .line 1748
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->locks:[I

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->locks:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/sun/tools/javac/jvm/Code$State;->locks:[I

    .line 1749
    :cond_26
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-boolean v1, v1, Lcom/sun/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v1, :cond_45

    .line 1750
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duping state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1751
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code$State;->dump()V
    :try_end_45
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_45} :catch_46

    .line 1753
    :cond_45
    return-object v0

    .line 1754
    :catch_46
    move-exception v0

    .line 1755
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method error()Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 1902
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "inconsistent stack types at join point"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method forceStackTop(Lcom/sun/tools/javac/code/Type;)V
    .registers 6

    .line 1850
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->access$100(Lcom/sun/tools/javac/jvm/Code;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1859
    :cond_8
    :goto_8
    return-void

    .line 1851
    :cond_9
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_13

    const/16 v1, 0xb

    if-ne v0, v1, :cond_8

    .line 1854
    :cond_13
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    .line 1855
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    iget v2, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    sub-int/2addr v2, v0

    aget-object v1, v1, v2

    .line 1856
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    .line 1857
    invoke-virtual {v3, p1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 1856
    invoke-virtual {v2, v1, v3}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1858
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    iget v2, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    sub-int v0, v2, v0

    aput-object p1, v1, v0

    goto :goto_8
.end method

.method join(Lcom/sun/tools/javac/jvm/Code$State;)Lcom/sun/tools/javac/jvm/Code$State;
    .registers 6

    const/4 v1, 0x0

    .line 1882
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    iget-object v2, p1, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Bits;->andSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    .line 1883
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    iget v2, p1, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    if-ne v0, v2, :cond_3e

    iget v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    iget v2, p1, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    if-ne v0, v2, :cond_3e

    const/4 v0, 0x1

    :goto_18
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1885
    :goto_1b
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    if-ge v1, v0, :cond_59

    .line 1886
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    aget-object v2, v0, v1

    .line 1887
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    aget-object v0, v0, v1

    .line 1889
    if-ne v2, v0, :cond_40

    :cond_29
    move-object v0, v2

    .line 1893
    :cond_2a
    :goto_2a
    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/code/Type;)I

    move-result v2

    .line 1894
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    aput-object v0, v3, v1

    .line 1895
    const/4 v0, 0x2

    if-ne v2, v0, :cond_3c

    add-int/lit8 v0, v1, 0x1

    aget-object v0, v3, v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    .line 1896
    :cond_3c
    add-int/2addr v1, v2

    .line 1897
    goto :goto_1b

    :cond_3e
    move v0, v1

    .line 1883
    goto :goto_18

    .line 1890
    :cond_40
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, v2, v0}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1891
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, v0, v2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1892
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code$State;->error()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_2a

    .line 1898
    :cond_59
    return-object p0
.end method

.method lock(I)V
    .registers 6

    const/4 v3, 0x0

    .line 1760
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->locks:[I

    if-nez v0, :cond_16

    .line 1761
    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->locks:[I

    .line 1767
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->locks:[I

    iget v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    aput p1, v0, v1

    .line 1768
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    .line 1769
    return-void

    .line 1762
    :cond_16
    array-length v1, v0

    iget v2, p0, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    if-ne v1, v2, :cond_b

    .line 1763
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 1764
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1765
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->locks:[I

    goto :goto_b
.end method

.method markInitialized(Lcom/sun/tools/javac/jvm/UninitializedType;)V
    .registers 8

    const/4 v1, 0x0

    .line 1865
    invoke-virtual {p1}, Lcom/sun/tools/javac/jvm/UninitializedType;->initializedType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    move v0, v1

    .line 1866
    :goto_6
    iget v3, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    if-ge v0, v3, :cond_15

    .line 1867
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    aget-object v4, v3, v0

    if-ne v4, p1, :cond_12

    aput-object v2, v3, v0

    .line 1866
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1868
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    array-length v0, v0

    if-ge v1, v0, :cond_46

    .line 1869
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v0, v0, v1

    .line 1870
    if-eqz v0, :cond_43

    iget-object v3, v0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    if-ne v3, p1, :cond_43

    .line 1871
    iget-object v3, v0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1872
    iget-object v4, v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->clone(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    move-result-object v3

    .line 1873
    iput-object v2, v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1874
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-object v4, v4, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    new-instance v5, Lcom/sun/tools/javac/jvm/Code$LocalVar;

    invoke-direct {v5, v3}, Lcom/sun/tools/javac/jvm/Code$LocalVar;-><init>(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    aput-object v5, v4, v1

    .line 1876
    iget-char v0, v0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    iput-char v0, v5, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    .line 1868
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1879
    :cond_46
    return-void
.end method

.method peek()Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 1820
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method pop(I)V
    .registers 5

    .line 1834
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-boolean v0, v0, Lcom/sun/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v0, :cond_1c

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   popping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1835
    :cond_1c
    :goto_1c
    if-lez p1, :cond_2c

    .line 1836
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1837
    add-int/lit8 p1, p1, -0x1

    goto :goto_1c

    .line 1839
    :cond_2c
    return-void
.end method

.method pop(Lcom/sun/tools/javac/code/Type;)V
    .registers 3

    .line 1842
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 1843
    return-void
.end method

.method pop1()Lcom/sun/tools/javac/code/Type;
    .registers 6

    const/4 v0, 0x1

    .line 1811
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-boolean v1, v1, Lcom/sun/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v1, :cond_e

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "   popping 1"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1812
    :cond_e
    iget v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    .line 1813
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    aget-object v3, v2, v1

    .line 1814
    const/4 v4, 0x0

    aput-object v4, v2, v1

    .line 1815
    if-eqz v3, :cond_27

    invoke-static {v3}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/code/Type;)I

    move-result v1

    if-ne v1, v0, :cond_27

    :goto_23
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1816
    return-object v3

    .line 1815
    :cond_27
    const/4 v0, 0x0

    goto :goto_23
.end method

.method pop2()Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 1824
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-boolean v0, v0, Lcom/sun/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v0, :cond_d

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "   popping 2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1825
    :cond_d
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v1, v0, -0x2

    iput v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    .line 1826
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    aget-object v3, v2, v1

    .line 1827
    const/4 v0, 0x0

    aput-object v0, v2, v1

    .line 1828
    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v1, v2, v1

    if-nez v1, :cond_2e

    if-eqz v3, :cond_2e

    .line 1829
    invoke-static {v3}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/code/Type;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2e

    .line 1828
    :goto_2a
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1830
    return-object v3

    .line 1829
    :cond_2e
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method push(Lcom/sun/tools/javac/code/Type;)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1778
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-boolean v0, v0, Lcom/sun/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v0, :cond_1f

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   pushing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1779
    :cond_1f
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v0, v4, :cond_70

    if-eq v0, v5, :cond_70

    const/4 v1, 0x3

    if-eq v0, v1, :cond_70

    const/16 v1, 0x8

    if-eq v0, v1, :cond_70

    const/16 v1, 0x9

    if-eq v0, v1, :cond_6f

    .line 1787
    :goto_30
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    add-int/lit8 v0, v0, 0x2

    array-length v2, v1

    if-lt v0, v2, :cond_44

    .line 1792
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/sun/tools/javac/code/Type;

    .line 1793
    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1794
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    .line 1796
    :cond_44
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    aput-object p1, v0, v1

    .line 1797
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    if-eq v0, v4, :cond_61

    if-ne v0, v5, :cond_77

    .line 1801
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1799
    :cond_61
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget v1, v1, Lcom/sun/tools/javac/jvm/Code;->max_stack:I

    if-le v0, v1, :cond_6f

    .line 1807
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    iput v1, v0, Lcom/sun/tools/javac/jvm/Code;->max_stack:I

    .line 1808
    :cond_6f
    return-void

    .line 1786
    :cond_70
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->this$0:Lcom/sun/tools/javac/jvm/Code;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object p1, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    goto :goto_30

    .line 1804
    :cond_77
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method unlock(I)V
    .registers 5

    .line 1772
    iget v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    const/4 v0, 0x1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    .line 1773
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code$State;->locks:[I

    aget v1, v2, v1

    if-ne v1, p1, :cond_18

    :goto_d
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1774
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$State;->locks:[I

    iget v1, p0, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 1775
    return-void

    .line 1773
    :cond_18
    const/4 v0, 0x0

    goto :goto_d
.end method
