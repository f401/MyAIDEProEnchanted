.class public final Labcd/_p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/_p$a;,
        Labcd/_p$b;
    }
.end annotation


# instance fields
.field private final DW:[Labcd/_p$a;

.field private final FH:[Labcd/_p$b;

.field private final Hw:[Labcd/_p$b;

.field private final j6:[Labcd/_p$a;


# direct methods
.method public constructor <init>([Labcd/_p$a;[Labcd/_p$a;[Labcd/_p$b;[Labcd/_p$b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/_p;->j6:[Labcd/_p$a;

    iput-object p2, p0, Labcd/_p;->DW:[Labcd/_p$a;

    iput-object p3, p0, Labcd/_p;->FH:[Labcd/_p$b;

    iput-object p4, p0, Labcd/_p;->Hw:[Labcd/_p$b;

    return-void
.end method

.method private j6(Labcd/hr$a;[Labcd/_p$a;)V
    .registers 8

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v1, v0, :cond_1b

    aget-object v3, p2, v1

    invoke-virtual {v3}, Labcd/_p$a;->DW()I

    move-result v4

    sub-int v2, v4, v2

    invoke-virtual {p1, v2}, Labcd/hr$a;->DW(I)V

    invoke-virtual {v3}, Labcd/_p$a;->j6()I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/hr$a;->DW(I)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_3

    :cond_1b
    return-void
.end method

.method private j6(Labcd/hr$a;[Labcd/_p$b;)V
    .registers 8

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v1, v0, :cond_22

    aget-object v3, p2, v1

    invoke-virtual {v3}, Labcd/_p$b;->FH()I

    move-result v4

    sub-int v2, v4, v2

    invoke-virtual {p1, v2}, Labcd/hr$a;->DW(I)V

    invoke-virtual {v3}, Labcd/_p$b;->j6()I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/hr$a;->DW(I)V

    invoke-virtual {v3}, Labcd/_p$b;->DW()I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/hr$a;->DW(I)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_3

    :cond_22
    return-void
.end method


# virtual methods
.method public DW()[Labcd/_p$b;
    .registers 2

    iget-object v0, p0, Labcd/_p;->FH:[Labcd/_p$b;

    return-object v0
.end method

.method public FH()[Labcd/_p$a;
    .registers 2

    iget-object v0, p0, Labcd/_p;->DW:[Labcd/_p$a;

    return-object v0
.end method

.method public Hw()[Labcd/_p$a;
    .registers 2

    iget-object v0, p0, Labcd/_p;->j6:[Labcd/_p$a;

    return-object v0
.end method

.method public j6(Labcd/hr$a;)V
    .registers 3

    iget-object v0, p0, Labcd/_p;->j6:[Labcd/_p$a;

    array-length v0, v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->DW(I)V

    iget-object v0, p0, Labcd/_p;->DW:[Labcd/_p$a;

    array-length v0, v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->DW(I)V

    iget-object v0, p0, Labcd/_p;->FH:[Labcd/_p$b;

    array-length v0, v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->DW(I)V

    iget-object v0, p0, Labcd/_p;->Hw:[Labcd/_p$b;

    array-length v0, v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->DW(I)V

    iget-object v0, p0, Labcd/_p;->j6:[Labcd/_p$a;

    invoke-direct {p0, p1, v0}, Labcd/_p;->j6(Labcd/hr$a;[Labcd/_p$a;)V

    iget-object v0, p0, Labcd/_p;->DW:[Labcd/_p$a;

    invoke-direct {p0, p1, v0}, Labcd/_p;->j6(Labcd/hr$a;[Labcd/_p$a;)V

    iget-object v0, p0, Labcd/_p;->FH:[Labcd/_p$b;

    invoke-direct {p0, p1, v0}, Labcd/_p;->j6(Labcd/hr$a;[Labcd/_p$b;)V

    iget-object v0, p0, Labcd/_p;->Hw:[Labcd/_p$b;

    invoke-direct {p0, p1, v0}, Labcd/_p;->j6(Labcd/hr$a;[Labcd/_p$b;)V

    return-void
.end method

.method public j6()[Labcd/_p$b;
    .registers 6

    iget-object v0, p0, Labcd/_p;->FH:[Labcd/_p$b;

    array-length v1, v0

    iget-object v2, p0, Labcd/_p;->Hw:[Labcd/_p$b;

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [Labcd/_p$b;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/_p;->Hw:[Labcd/_p$b;

    iget-object v2, p0, Labcd/_p;->FH:[Labcd/_p$b;

    array-length v2, v2

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public v5()[Labcd/_p$b;
    .registers 2

    iget-object v0, p0, Labcd/_p;->Hw:[Labcd/_p$b;

    return-object v0
.end method
