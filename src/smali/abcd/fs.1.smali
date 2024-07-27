.class public final Labcd/fs;
.super Ljava/lang/Object;


# instance fields
.field private final DW:I

.field private FH:[Labcd/au;

.field private Hw:Labcd/au;

.field private final j6:Labcd/Or;


# direct methods
.method public constructor <init>(Labcd/Or;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    iput-object p1, p0, Labcd/fs;->j6:Labcd/Or;

    iput p2, p0, Labcd/fs;->DW:I

    iput-object v0, p0, Labcd/fs;->FH:[Labcd/au;

    iput-object v0, p0, Labcd/fs;->Hw:Labcd/au;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstLabel < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "blocks == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private FH()V
    .registers 14

    const/16 v12, 0xa

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/fs;->j6:Labcd/Or;

    invoke-virtual {v0}, Labcd/du;->rN()I

    move-result v4

    new-array v5, v4, [Labcd/au;

    new-instance v6, Labcd/au;

    invoke-direct {v6, v12}, Labcd/au;-><init>(I)V

    iget-object v0, p0, Labcd/fs;->j6:Labcd/Or;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v7

    move v3, v1

    :goto_0
    if-ge v3, v7, :cond_6

    iget-object v0, p0, Labcd/fs;->j6:Labcd/Or;

    invoke-virtual {v0, v3}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nr;->DW()I

    move-result v8

    invoke-virtual {v0}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v9

    invoke-virtual {v9}, Labcd/au;->size()I

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v6, v8}, Labcd/au;->DW(I)V

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, v10, :cond_0

    invoke-virtual {v9, v2}, Labcd/au;->get(I)I

    move-result v11

    aget-object v0, v5, v11

    if-nez v0, :cond_2

    new-instance v0, Labcd/au;

    invoke-direct {v0, v12}, Labcd/au;-><init>(I)V

    aput-object v0, v5, v11

    :cond_2
    invoke-virtual {v0, v8}, Labcd/au;->DW(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :goto_2
    if-ge v0, v4, :cond_4

    aget-object v1, v5, v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Labcd/au;->er()V

    invoke-virtual {v1}, Labcd/hu;->we()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Labcd/au;->er()V

    invoke-virtual {v6}, Labcd/hu;->we()V

    iget v0, p0, Labcd/fs;->DW:I

    aget-object v1, v5, v0

    if-nez v1, :cond_5

    sget-object v1, Labcd/au;->DW:Labcd/au;

    aput-object v1, v5, v0

    :cond_5
    iput-object v5, p0, Labcd/fs;->FH:[Labcd/au;

    iput-object v6, p0, Labcd/fs;->Hw:Labcd/au;

    return-void

    :cond_6
    move v0, v1

    goto :goto_2
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

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/fs;->FH()V

    :cond_0
    iget-object v0, p0, Labcd/fs;->FH:[Labcd/au;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such block: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
