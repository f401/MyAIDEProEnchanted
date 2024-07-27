.class public Labcd/WJ;
.super Labcd/_J;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/WJ$a;
    }
.end annotation


# instance fields
.field protected final er:Labcd/pK;

.field protected final rN:Ljava/io/File;


# direct methods
.method public constructor <init>(Labcd/UE;)V
    .registers 6

    invoke-virtual {p1}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v2

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    sget-object v3, Labcd/bK;->j6:Labcd/gE$b;

    invoke-virtual {v0, v3}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bK;

    invoke-direct {p0, v1, v2, v0}, Labcd/WJ;-><init>(Ljava/io/File;Labcd/pK;Labcd/bK;)V

    invoke-virtual {p0, p1}, Labcd/_J;->j6(Labcd/UE;)V

    return-void
.end method

.method protected constructor <init>(Labcd/WJ;Ljava/io/File;Labcd/pK;)V
    .registers 5

    invoke-direct {p0, p1}, Labcd/_J;-><init>(Labcd/_J;)V

    iput-object p2, p0, Labcd/WJ;->rN:Ljava/io/File;

    iput-object p3, p0, Labcd/WJ;->er:Labcd/pK;

    invoke-direct {p0}, Labcd/WJ;->rN()[Labcd/_J$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/_J;->j6([Labcd/_J$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Labcd/pK;Labcd/bK;)V
    .registers 5

    invoke-direct {p0, p3}, Labcd/_J;-><init>(Labcd/bK;)V

    iput-object p1, p0, Labcd/WJ;->rN:Ljava/io/File;

    iput-object p2, p0, Labcd/WJ;->er:Labcd/pK;

    invoke-direct {p0}, Labcd/WJ;->rN()[Labcd/_J$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/_J;->j6([Labcd/_J$a;)V

    return-void
.end method

.method private rN()[Labcd/_J$a;
    .registers 7

    iget-object v0, p0, Labcd/WJ;->rN:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v0, Labcd/_J;->u7:[Labcd/_J$a;

    :goto_0
    return-object v0

    :cond_0
    array-length v0, v2

    new-array v1, v0, [Labcd/_J$a;

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v3, Labcd/WJ$a;

    aget-object v4, v2, v0

    iget-object v5, p0, Labcd/WJ;->er:Labcd/pK;

    invoke-direct {v3, v4, v5}, Labcd/WJ$a;-><init>(Ljava/io/File;Labcd/pK;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public j6(Labcd/IE;)Labcd/TJ;
    .registers 5

    new-instance v1, Labcd/WJ;

    invoke-virtual {p0}, Labcd/_J;->XL()Labcd/_J$a;

    move-result-object v0

    check-cast v0, Labcd/WJ$a;

    iget-object v0, v0, Labcd/WJ$a;->FH:Ljava/io/File;

    iget-object v2, p0, Labcd/WJ;->er:Labcd/pK;

    invoke-direct {v1, p0, v0, v2}, Labcd/WJ;-><init>(Labcd/WJ;Ljava/io/File;Labcd/pK;)V

    return-object v1
.end method

.method protected j6(Labcd/_J$a;)[B
    .registers 3

    iget-object v0, p0, Labcd/_J;->lg:Labcd/UE;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/WJ;->lg()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Labcd/_J;->j6(Ljava/io/File;Labcd/_J$a;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Labcd/_J;->j6(Labcd/_J$a;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public lg()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Labcd/WJ;->rN:Ljava/io/File;

    return-object v0
.end method
