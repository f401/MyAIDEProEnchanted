.class Labcd/nH$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/nH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private DW:I

.field final FH:Labcd/KK$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LKK$a",
            "<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field

.field Hw:Labcd/KK$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LKK$a",
            "<",
            "Labcd/nH$c;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Labcd/KK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LKK",
            "<",
            "Labcd/nH$c;",
            ">;"
        }
    .end annotation
.end field

.field final v5:Labcd/nH;


# direct methods
.method constructor <init>(Labcd/nH;Labcd/KK;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKK",
            "<",
            "Labcd/nH$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Labcd/nH$d;->v5:Labcd/nH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/KK$a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Labcd/KK$a;-><init>(I)V

    iput-object v0, p0, Labcd/nH$d;->FH:Labcd/KK$a;

    iput-object p2, p0, Labcd/nH$d;->j6:Labcd/KK;

    return-void
.end method

.method private DW(Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    iget v0, p0, Labcd/nH$d;->DW:I

    iget-object v2, p0, Labcd/nH$d;->j6:Labcd/KK;

    invoke-virtual {v2}, Labcd/KK;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v2, p0, Labcd/nH$d;->DW:I

    invoke-virtual {v0, v2}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    check-cast v0, Labcd/nH$c;

    invoke-static {v0, p1}, Labcd/NE;->j6(Labcd/ME;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_7

    iget-object v0, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v2, p0, Labcd/nH$d;->DW:I

    invoke-virtual {v0, v2}, Labcd/KK;->v5(I)Labcd/KK$a;

    move-result-object v0

    iput-object v0, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    :cond_1
    iget v0, p0, Labcd/nH$d;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/nH$d;->DW:I

    iget v0, p0, Labcd/nH$d;->DW:I

    iget-object v2, p0, Labcd/nH$d;->j6:Labcd/KK;

    invoke-virtual {v2}, Labcd/KK;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    :cond_2
    move-object v2, v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Labcd/nH$d;->v5:Labcd/nH;

    invoke-static {v0, v2, p1}, Labcd/nH;->j6(Labcd/nH;Labcd/nH$c;Ljava/lang/String;)Labcd/nH$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_8

    if-eq v2, v0, :cond_3

    iget-object v1, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-nez v1, :cond_3

    iget-object v1, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v3, p0, Labcd/nH$d;->DW:I

    invoke-virtual {v1, v3}, Labcd/KK;->v5(I)Labcd/KK$a;

    move-result-object v1

    iput-object v1, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    :cond_3
    iget-object v1, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Labcd/KK$a;->j6(Labcd/ME;)V

    :cond_4
    invoke-interface {v0}, Labcd/ME;->Zo()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Labcd/nH$d;->FH:Labcd/KK$a;

    invoke-virtual {v1, v0}, Labcd/KK$a;->j6(Labcd/ME;)V

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    iget v0, p0, Labcd/nH$d;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/nH$d;->DW:I

    :cond_6
    return-void

    :cond_7
    if-gtz v2, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_5

    iget-object v0, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-nez v0, :cond_5

    iget-object v0, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v1, p0, Labcd/nH$d;->DW:I

    invoke-virtual {v0, v1}, Labcd/KK;->v5(I)Labcd/KK$a;

    move-result-object v0

    iput-object v0, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private j6(Ljava/lang/String;Ljava/io/File;)Z
    .registers 10

    const/16 v6, 0x2f

    const/4 v1, 0x0

    sget-object v0, Labcd/WG;->j6:Ljava/io/FilenameFilter;

    invoke-virtual {p2, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    array-length v0, v2

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_4

    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v0, v2

    :goto_2
    if-lt v1, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v4, v5}, Labcd/nH$d;->j6(Ljava/lang/String;Ljava/io/File;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Labcd/nH$d;->DW(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method j6(Ljava/lang/String;)V
    .registers 6

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HEAD"

    invoke-direct {p0, v0}, Labcd/nH$d;->DW(Ljava/lang/String;)V

    const-string v0, "refs/"

    iget-object v1, p0, Labcd/nH$d;->v5:Labcd/nH;

    invoke-static {v1}, Labcd/nH;->j6(Labcd/nH;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/nH$d;->j6(Ljava/lang/String;Ljava/io/File;)Z

    iget-object v0, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-nez v0, :cond_0

    iget v0, p0, Labcd/nH$d;->DW:I

    iget-object v1, p0, Labcd/nH$d;->j6:Labcd/KK;

    invoke-virtual {v1}, Labcd/KK;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v1, p0, Labcd/nH$d;->DW:I

    invoke-virtual {v0, v1}, Labcd/KK;->v5(I)Labcd/KK$a;

    move-result-object v0

    iput-object v0, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    :cond_0
    return-void

    :cond_1
    const-string v0, "refs/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/nH$d;->j6:Labcd/KK;

    invoke-virtual {v0, p1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    iput v0, p0, Labcd/nH$d;->DW:I

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/nH$d;->v5:Labcd/nH;

    invoke-static {v1}, Labcd/nH;->j6(Labcd/nH;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Labcd/nH$d;->j6(Ljava/lang/String;Ljava/io/File;)Z

    :goto_0
    iget v0, p0, Labcd/nH$d;->DW:I

    iget-object v1, p0, Labcd/nH$d;->j6:Labcd/KK;

    invoke-virtual {v1}, Labcd/KK;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-eqz v0, :cond_0

    :goto_1
    iget v0, p0, Labcd/nH$d;->DW:I

    iget-object v1, p0, Labcd/nH$d;->j6:Labcd/KK;

    invoke-virtual {v1}, Labcd/KK;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    iget-object v0, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v2, p0, Labcd/nH$d;->DW:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/nH$d;->DW:I

    invoke-virtual {v0, v2}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    check-cast v0, Labcd/nH$c;

    invoke-virtual {v1, v0}, Labcd/KK$a;->j6(Labcd/ME;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v1, p0, Labcd/nH$d;->DW:I

    invoke-virtual {v0, v1}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    check-cast v0, Labcd/nH$c;

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-nez v0, :cond_4

    iget-object v0, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v1, p0, Labcd/nH$d;->DW:I

    invoke-virtual {v0, v1}, Labcd/KK;->v5(I)Labcd/KK$a;

    move-result-object v0

    iput-object v0, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    :cond_4
    iget v0, p0, Labcd/nH$d;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/nH$d;->DW:I

    goto :goto_0
.end method
