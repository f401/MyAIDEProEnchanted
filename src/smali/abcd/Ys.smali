.class public Labcd/Ys;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Ys$a;
    }
.end annotation


# static fields
.field private static j6:Z


# instance fields
.field private final DW:Labcd/yt;

.field private final FH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:[Labcd/Ys$a;


# direct methods
.method public constructor <init>(Labcd/yt;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Ys;->DW:Labcd/yt;

    invoke-virtual {p1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    iget-object v0, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Labcd/Ys$a;

    iput-object v0, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    new-instance v3, Labcd/Ys$a;

    invoke-direct {v3}, Labcd/Ys$a;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private DW()V
    .registers 5

    iget-object v0, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    aget-object v0, v0, v2

    iget v0, v0, Labcd/Ys$a;->DW:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    iget-object v1, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v0, v1}, Labcd/tt;->DW(Labcd/tt;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private FH()V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_3

    iget-object v0, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    iget-object v1, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    aget-object v5, v1, v2

    invoke-virtual {v0}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    :goto_1
    if-ltz v1, :cond_2

    move v0, v1

    :goto_2
    iget v7, v5, Labcd/Ys$a;->DW:I

    if-eq v0, v7, :cond_0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    aget-object v0, v7, v0

    iget-object v7, v0, Labcd/Ys$a;->j6:Labcd/bu;

    invoke-interface {v7, v2}, Labcd/bu;->j6(I)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v0, Labcd/Ys$a;->j6:Labcd/bu;

    invoke-interface {v7, v2}, Labcd/bu;->add(I)V

    iget v0, v0, Labcd/Ys$a;->DW:I

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private Hw()V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    iget-object v0, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Labcd/tt;->j6()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    if-eqz v2, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "domChildren["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public j6()[Labcd/Ys$a;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-boolean v0, Labcd/Ys;->j6:Z

    if-eqz v0, :cond_0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pred["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Labcd/Ys;->DW:Labcd/yt;

    iget-object v2, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    invoke-static {v0, v2, v1}, Labcd/_s;->j6(Labcd/yt;[Labcd/Ys$a;Z)Labcd/_s;

    sget-boolean v0, Labcd/Ys;->j6:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v2, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    aget-object v2, v2, v0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "idom["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Labcd/Ys$a;->DW:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Labcd/Ys;->DW()V

    sget-boolean v0, Labcd/Ys;->j6:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Labcd/Ys;->Hw()V

    :cond_2
    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_3

    iget-object v2, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    aget-object v2, v2, v0

    invoke-static {v3}, Labcd/st;->j6(I)Labcd/bu;

    move-result-object v4

    iput-object v4, v2, Labcd/Ys$a;->j6:Labcd/bu;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Labcd/Ys;->FH()V

    sget-boolean v0, Labcd/Ys;->j6:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_4

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "df["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    aget-object v4, v4, v0

    iget-object v4, v4, Labcd/Ys$a;->j6:Labcd/bu;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    return-object v0
.end method
