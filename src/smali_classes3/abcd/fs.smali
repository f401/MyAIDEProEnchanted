.class public final Labcd/fs;
.super Ljava/lang/Object;


# instance fields
.field private final DW:I

.field private FH:[Labcd/au;

.field private Hw:Labcd/au;

.field private final j6:Labcd/Or;


# direct methods
.method public constructor <init>(Labcd/Or;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_19

    if-ltz p2, :cond_11

    iput-object p1, p0, Labcd/fs;->j6:Labcd/Or;

    iput p2, p0, Labcd/fs;->DW:I

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/fs;->FH:[Labcd/au;

    iput-object p1, p0, Labcd/fs;->Hw:Labcd/au;

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstLabel < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "blocks == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private FH()V
    .registers 14

    iget-object v0, p0, Labcd/fs;->j6:Labcd/Or;

    invoke-virtual {v0}, Labcd/du;->rN()I

    move-result v0

    new-array v1, v0, [Labcd/au;

    new-instance v2, Labcd/au;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Labcd/au;-><init>(I)V

    iget-object v4, p0, Labcd/fs;->j6:Labcd/Or;

    invoke-virtual {v4}, Labcd/Xt;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v4, :cond_4c

    iget-object v7, p0, Labcd/fs;->j6:Labcd/Or;

    invoke-virtual {v7, v6}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v7

    invoke-virtual {v7}, Labcd/Nr;->DW()I

    move-result v8

    invoke-virtual {v7}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v7

    invoke-virtual {v7}, Labcd/au;->size()I

    move-result v9

    if-nez v9, :cond_31

    invoke-virtual {v2, v8}, Labcd/au;->DW(I)V

    goto :goto_49

    :cond_31
    const/4 v10, 0x0

    :goto_32
    if-ge v10, v9, :cond_49

    invoke-virtual {v7, v10}, Labcd/au;->get(I)I

    move-result v11

    aget-object v12, v1, v11

    if-nez v12, :cond_43

    new-instance v12, Labcd/au;

    invoke-direct {v12, v3}, Labcd/au;-><init>(I)V

    aput-object v12, v1, v11

    :cond_43
    invoke-virtual {v12, v8}, Labcd/au;->DW(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_32

    :cond_49
    :goto_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_4c
    :goto_4c
    if-ge v5, v0, :cond_5b

    aget-object v3, v1, v5

    if-eqz v3, :cond_58

    invoke-virtual {v3}, Labcd/au;->er()V

    invoke-virtual {v3}, Labcd/hu;->we()V

    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    :cond_5b
    invoke-virtual {v2}, Labcd/au;->er()V

    invoke-virtual {v2}, Labcd/hu;->we()V

    iget v0, p0, Labcd/fs;->DW:I

    aget-object v3, v1, v0

    if-nez v3, :cond_6b

    sget-object v3, Labcd/au;->DW:Labcd/au;

    aput-object v3, v1, v0

    :cond_6b
    iput-object v1, p0, Labcd/fs;->FH:[Labcd/au;

    iput-object v2, p0, Labcd/fs;->Hw:Labcd/au;

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/fs;->DW:I

    return v0
.end method

.method public j6()Labcd/Or;
    .registers 2

    iget-object v0, p0, Labcd/fs;->j6:Labcd/Or;

    return-object v0
.end method

.method public j6(I)Labcd/au;
    .registers 4

    iget-object v0, p0, Labcd/fs;->Hw:Labcd/au;

    if-nez v0, :cond_7

    invoke-direct {p0}, Labcd/fs;->FH()V

    :cond_7
    iget-object v0, p0, Labcd/fs;->FH:[Labcd/au;

    aget-object v0, v0, p1

    if-eqz v0, :cond_e

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such block: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
