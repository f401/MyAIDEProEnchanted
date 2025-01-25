.class public Labcd/KK;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/KK$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Labcd/ME;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Labcd/ME;",
        ">;"
    }
.end annotation


# static fields
.field private static final j6:Labcd/KK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LKK<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:[Labcd/ME;

.field private final FH:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Labcd/KK;

    const/4 v1, 0x0

    new-array v2, v1, [Labcd/ME;

    invoke-direct {v0, v2, v1}, Labcd/KK;-><init>([Labcd/ME;I)V

    sput-object v0, Labcd/KK;->j6:Labcd/KK;

    return-void
.end method

.method protected constructor <init>(Labcd/KK;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKK<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Labcd/KK;->DW:[Labcd/ME;

    iput-object v0, p0, Labcd/KK;->DW:[Labcd/ME;

    iget p1, p1, Labcd/KK;->FH:I

    iput p1, p0, Labcd/KK;->FH:I

    return-void
.end method

.method constructor <init>([Labcd/ME;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/KK;->DW:[Labcd/ME;

    iput p2, p0, Labcd/KK;->FH:I

    return-void
.end method

.method public static DW()Labcd/KK;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Labcd/ME;",
            ">()",
            "LKK<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Labcd/KK;->j6:Labcd/KK;

    return-object v0
.end method

.method static synthetic DW(Labcd/KK;)[Labcd/ME;
    .registers 1

    iget-object p0, p0, Labcd/KK;->DW:[Labcd/ME;

    return-object p0
.end method

.method static synthetic j6(Labcd/KK;)I
    .registers 1

    iget p0, p0, Labcd/KK;->FH:I

    return p0
.end method


# virtual methods
.method public final DW(Ljava/lang/String;)I
    .registers 6

    iget v0, p0, Labcd/KK;->FH:I

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    const/4 v1, 0x0

    :cond_7
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Labcd/KK;->DW:[Labcd/ME;

    aget-object v3, v3, v2

    invoke-static {v3, p1}, Labcd/NE;->j6(Labcd/ME;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_19

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_1d

    :cond_19
    if-nez v3, :cond_1c

    return v2

    :cond_1c
    move v0, v2

    :goto_1d
    if-lt v1, v0, :cond_7

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1
.end method

.method public final DW(ILabcd/ME;)Labcd/KK;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "LKK<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Labcd/KK;->FH:I

    new-array v1, v0, [Labcd/ME;

    iget-object v2, p0, Labcd/KK;->DW:[Labcd/ME;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p2, v1, p1

    new-instance p1, Labcd/KK;

    iget p2, p0, Labcd/KK;->FH:I

    invoke-direct {p1, v1, p2}, Labcd/KK;-><init>([Labcd/ME;I)V

    return-object p1
.end method

.method public final FH(Ljava/lang/String;)Labcd/ME;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_b

    invoke-virtual {p0, p1}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public final get(I)Labcd/ME;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Labcd/KK;->DW:[Labcd/ME;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final isEmpty()Z
    .registers 2

    iget v0, p0, Labcd/KK;->FH:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    new-instance v0, Labcd/JK;

    invoke-direct {v0, p0}, Labcd/JK;-><init>(Labcd/KK;)V

    return-object v0
.end method

.method public final j6(ILabcd/ME;)Labcd/KK;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "LKK<",
            "TT;>;"
        }
    .end annotation

    if-gez p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    :cond_5
    iget v0, p0, Labcd/KK;->FH:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Labcd/ME;

    if-lez p1, :cond_13

    iget-object v1, p0, Labcd/KK;->DW:[Labcd/ME;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    aput-object p2, v0, p1

    iget p2, p0, Labcd/KK;->FH:I

    if-ge p1, p2, :cond_21

    iget-object v1, p0, Labcd/KK;->DW:[Labcd/ME;

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr p2, p1

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_21
    new-instance p1, Labcd/KK;

    iget p2, p0, Labcd/KK;->FH:I

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p1, v0, p2}, Labcd/KK;-><init>([Labcd/ME;I)V

    return-object p1
.end method

.method public final j6(Labcd/ME;)Labcd/KK;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LKK<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_f

    invoke-virtual {p0, v0, p1}, Labcd/KK;->DW(ILabcd/ME;)Labcd/KK;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-virtual {p0, v0, p1}, Labcd/KK;->j6(ILabcd/ME;)Labcd/KK;

    move-result-object p1

    return-object p1
.end method

.method public final j6()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/KK;->DW:[Labcd/ME;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Labcd/KK;->FH:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public final remove(I)Labcd/KK;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LKK<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Labcd/KK;->FH:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    invoke-static {}, Labcd/KK;->DW()Labcd/KK;

    move-result-object p1

    return-object p1

    :cond_a
    sub-int/2addr v0, v1

    new-array v0, v0, [Labcd/ME;

    if-lez p1, :cond_15

    iget-object v2, p0, Labcd/KK;->DW:[Labcd/ME;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Labcd/KK;->FH:I

    if-ge v2, v3, :cond_21

    iget-object v4, p0, Labcd/KK;->DW:[Labcd/ME;

    sub-int/2addr v3, v2

    invoke-static {v4, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_21
    new-instance p1, Labcd/KK;

    iget v2, p0, Labcd/KK;->FH:I

    sub-int/2addr v2, v1

    invoke-direct {p1, v0, v2}, Labcd/KK;-><init>([Labcd/ME;I)V

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Labcd/KK;->FH:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/KK;->FH:I

    if-lez v1, :cond_2b

    iget-object v1, p0, Labcd/KK;->DW:[Labcd/ME;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_17
    iget v2, p0, Labcd/KK;->FH:I

    if-lt v1, v2, :cond_1c

    goto :goto_2b

    :cond_1c
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/KK;->DW:[Labcd/ME;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2b
    :goto_2b
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v5(I)Labcd/KK$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LKK$a<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Labcd/KK$a;

    const/16 v1, 0x10

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Labcd/KK$a;-><init>(I)V

    iget-object v1, p0, Labcd/KK;->DW:[Labcd/ME;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Labcd/KK$a;->j6([Labcd/ME;II)V

    return-object v0
.end method
