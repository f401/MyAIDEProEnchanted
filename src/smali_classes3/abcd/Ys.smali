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
            "Ljava/util/ArrayList<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:[Labcd/Ys$a;


# direct methods
.method public constructor <init>(Labcd/yt;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Ys;->DW:Labcd/yt;

    invoke-virtual {p1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v0, p1, [Labcd/Ys$a;

    iput-object v0, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    const/4 v0, 0x0

    :goto_14
    if-ge v0, p1, :cond_22

    iget-object v1, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    new-instance v2, Labcd/Ys$a;

    invoke-direct {v2}, Labcd/Ys$a;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_22
    return-void
.end method

.method private DW()V
    .registers 5

    iget-object v0, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_29

    iget-object v2, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    aget-object v2, v2, v1

    iget v2, v2, Labcd/Ys$a;->DW:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    goto :goto_26

    :cond_13
    iget-object v3, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/tt;

    iget-object v3, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/tt;

    invoke-virtual {v2, v3}, Labcd/tt;->DW(Labcd/tt;)V

    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_29
    return-void
.end method

.method private FH()V
    .registers 9

    iget-object v0, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_4f

    iget-object v3, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/tt;

    iget-object v4, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    aget-object v4, v4, v2

    invoke-virtual {v3}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_4c

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    :goto_25
    if-ltz v5, :cond_4c

    move v6, v5

    :goto_28
    iget v7, v4, Labcd/Ys$a;->DW:I

    if-eq v6, v7, :cond_45

    const/4 v7, -0x1

    if-ne v6, v7, :cond_30

    goto :goto_45

    :cond_30
    iget-object v7, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    aget-object v6, v7, v6

    iget-object v7, v6, Labcd/Ys$a;->j6:Labcd/bu;

    invoke-interface {v7, v2}, Labcd/bu;->j6(I)Z

    move-result v7

    if-eqz v7, :cond_3d

    goto :goto_45

    :cond_3d
    iget-object v7, v6, Labcd/Ys$a;->j6:Labcd/bu;

    invoke-interface {v7, v2}, Labcd/bu;->add(I)V

    iget v6, v6, Labcd/Ys$a;->DW:I

    goto :goto_28

    :cond_45
    :goto_45
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    goto :goto_25

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_4f
    return-void
.end method

.method private Hw()V
    .registers 9

    iget-object v0, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_63

    iget-object v3, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/tt;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Labcd/tt;->j6()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/tt;

    if-eqz v6, :cond_38

    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_38
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v6, 0x1

    goto :goto_25

    :cond_3d
    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "domChildren["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_63
    return-void
.end method


# virtual methods
.method public j6()[Labcd/Ys$a;
    .registers 9

    iget-object v0, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-boolean v1, Labcd/Ys;->j6:Z

    const-string v2, "]: "

    const/4 v3, 0x0

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_3b

    iget-object v4, p0, Labcd/Ys;->FH:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/tt;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pred["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_3b
    iget-object v1, p0, Labcd/Ys;->DW:Labcd/yt;

    iget-object v4, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    invoke-static {v1, v4, v3}, Labcd/_s;->j6(Labcd/yt;[Labcd/Ys$a;Z)Labcd/_s;

    sget-boolean v1, Labcd/Ys;->j6:Z

    if-eqz v1, :cond_6e

    const/4 v1, 0x0

    :goto_47
    if-ge v1, v0, :cond_6e

    iget-object v4, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    aget-object v4, v4, v1

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "idom["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Labcd/Ys$a;->DW:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_6e
    invoke-direct {p0}, Labcd/Ys;->DW()V

    sget-boolean v1, Labcd/Ys;->j6:Z

    if-eqz v1, :cond_78

    invoke-direct {p0}, Labcd/Ys;->Hw()V

    :cond_78
    const/4 v1, 0x0

    :goto_79
    if-ge v1, v0, :cond_88

    iget-object v4, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    aget-object v4, v4, v1

    invoke-static {v0}, Labcd/st;->j6(I)Labcd/bu;

    move-result-object v5

    iput-object v5, v4, Labcd/Ys$a;->j6:Labcd/bu;

    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_88
    invoke-direct {p0}, Labcd/Ys;->FH()V

    sget-boolean v1, Labcd/Ys;->j6:Z

    if-eqz v1, :cond_b6

    :goto_8f
    if-ge v3, v0, :cond_b6

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "df["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    aget-object v5, v5, v3

    iget-object v5, v5, Labcd/Ys$a;->j6:Labcd/bu;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    :cond_b6
    iget-object v0, p0, Labcd/Ys;->Hw:[Labcd/Ys$a;

    return-object v0
.end method
