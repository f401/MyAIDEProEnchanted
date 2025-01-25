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
            "LKK$a<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field

.field Hw:Labcd/KK$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LKK$a<",
            "Labcd/nH$c;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Labcd/KK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LKK<",
            "Labcd/nH$c;",
            ">;"
        }
    .end annotation
.end field

.field final v5:Labcd/nH;


# direct methods
.method constructor <init>(Labcd/nH;Labcd/KK;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKK<",
            "Labcd/nH$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Labcd/nH$d;->v5:Labcd/nH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Labcd/KK$a;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Labcd/KK$a;-><init>(I)V

    iput-object p1, p0, Labcd/nH$d;->FH:Labcd/KK$a;

    iput-object p2, p0, Labcd/nH$d;->j6:Labcd/KK;

    return-void
.end method

.method private DW(Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Labcd/nH$d;->DW:I

    iget-object v1, p0, Labcd/nH$d;->j6:Labcd/KK;

    invoke-virtual {v1}, Labcd/KK;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3a

    :cond_b
    iget-object v0, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v1, p0, Labcd/nH$d;->DW:I

    invoke-virtual {v0, v1}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    check-cast v0, Labcd/nH$c;

    invoke-static {v0, p1}, Labcd/NE;->j6(Labcd/ME;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_38

    iget-object v0, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-nez v0, :cond_29

    iget-object v0, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v1, p0, Labcd/nH$d;->DW:I

    invoke-virtual {v0, v1}, Labcd/KK;->v5(I)Labcd/KK$a;

    move-result-object v0

    iput-object v0, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    :cond_29
    iget v0, p0, Labcd/nH$d;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/nH$d;->DW:I

    iget-object v1, p0, Labcd/nH$d;->j6:Labcd/KK;

    invoke-virtual {v1}, Labcd/KK;->size()I

    move-result v1

    if-lt v0, v1, :cond_b

    goto :goto_3a

    :cond_38
    if-lez v1, :cond_3b

    :cond_3a
    :goto_3a
    move-object v0, v2

    :cond_3b
    :try_start_3b
    iget-object v1, p0, Labcd/nH$d;->v5:Labcd/nH;

    invoke-static {v1, v0, p1}, Labcd/nH;->j6(Labcd/nH;Labcd/nH$c;Ljava/lang/String;)Labcd/nH$c;

    move-result-object v2
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_41} :catch_42

    goto :goto_43

    :catch_42
    move-exception p1

    :goto_43
    if-eqz v2, :cond_68

    if-eq v0, v2, :cond_55

    iget-object p1, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-nez p1, :cond_55

    iget-object p1, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v1, p0, Labcd/nH$d;->DW:I

    invoke-virtual {p1, v1}, Labcd/KK;->v5(I)Labcd/KK$a;

    move-result-object p1

    iput-object p1, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    :cond_55
    iget-object p1, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-eqz p1, :cond_5c

    invoke-virtual {p1, v2}, Labcd/KK$a;->j6(Labcd/ME;)V

    :cond_5c
    invoke-interface {v2}, Labcd/ME;->Zo()Z

    move-result p1

    if-eqz p1, :cond_78

    iget-object p1, p0, Labcd/nH$d;->FH:Labcd/KK$a;

    invoke-virtual {p1, v2}, Labcd/KK$a;->j6(Labcd/ME;)V

    goto :goto_78

    :cond_68
    if-eqz v0, :cond_78

    iget-object p1, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-nez p1, :cond_78

    iget-object p1, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v1, p0, Labcd/nH$d;->DW:I

    invoke-virtual {p1, v1}, Labcd/KK;->v5(I)Labcd/KK$a;

    move-result-object p1

    iput-object p1, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    :cond_78
    :goto_78
    if-eqz v0, :cond_80

    iget p1, p0, Labcd/nH$d;->DW:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Labcd/nH$d;->DW:I

    :cond_80
    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/io/File;)Z
    .registers 11

    sget-object v0, Labcd/WG;->j6:Ljava/io/FilenameFilter;

    invoke-virtual {p2, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    array-length v2, v0

    const/4 v3, 0x1

    if-lez v2, :cond_7b

    const/4 v2, 0x0

    :goto_f
    array-length v4, v0

    const/16 v5, 0x2f

    if-lt v2, v4, :cond_57

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v4, v0

    :goto_18
    if-lt v1, v4, :cond_1b

    goto :goto_7b

    :cond_1b
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_41

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v6, v7}, Labcd/nH$d;->j6(Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_54

    :cond_41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/nH$d;->DW(Ljava/lang/String;)V

    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_57
    new-instance v4, Ljava/io/File;

    aget-object v6, v0, v2

    invoke-direct {v4, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_78

    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_7b
    :goto_7b
    return v3
.end method


# virtual methods
.method j6(Ljava/lang/String;)V
    .registers 5

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "refs/"

    if-eqz v0, :cond_32

    const-string p1, "HEAD"

    invoke-direct {p0, p1}, Labcd/nH$d;->DW(Ljava/lang/String;)V

    iget-object p1, p0, Labcd/nH$d;->v5:Labcd/nH;

    invoke-static {p1}, Labcd/nH;->j6(Labcd/nH;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Labcd/nH$d;->j6(Ljava/lang/String;Ljava/io/File;)Z

    iget-object p1, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-nez p1, :cond_b5

    iget p1, p0, Labcd/nH$d;->DW:I

    iget-object v0, p0, Labcd/nH$d;->j6:Labcd/KK;

    invoke-virtual {v0}, Labcd/KK;->size()I

    move-result v0

    if-ge p1, v0, :cond_b5

    iget-object p1, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v0, p0, Labcd/nH$d;->DW:I

    invoke-virtual {p1, v0}, Labcd/KK;->v5(I)Labcd/KK$a;

    move-result-object p1

    iput-object p1, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    goto/16 :goto_b5

    :cond_32
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b5

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b5

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

    :goto_5e
    iget v0, p0, Labcd/nH$d;->DW:I

    iget-object v1, p0, Labcd/nH$d;->j6:Labcd/KK;

    invoke-virtual {v1}, Labcd/KK;->size()I

    move-result v1

    if-lt v0, v1, :cond_69

    goto :goto_7d

    :cond_69
    iget-object v0, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v1, p0, Labcd/nH$d;->DW:I

    invoke-virtual {v0, v1}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    check-cast v0, Labcd/nH$c;

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a0

    :goto_7d
    iget-object p1, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-eqz p1, :cond_b5

    :goto_81
    iget p1, p0, Labcd/nH$d;->DW:I

    iget-object v0, p0, Labcd/nH$d;->j6:Labcd/KK;

    invoke-virtual {v0}, Labcd/KK;->size()I

    move-result v0

    if-lt p1, v0, :cond_8c

    goto :goto_b5

    :cond_8c
    iget-object p1, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    iget-object v0, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v1, p0, Labcd/nH$d;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/nH$d;->DW:I

    invoke-virtual {v0, v1}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    check-cast v0, Labcd/nH$c;

    invoke-virtual {p1, v0}, Labcd/KK$a;->j6(Labcd/ME;)V

    goto :goto_81

    :cond_a0
    iget-object v0, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-nez v0, :cond_ae

    iget-object v0, p0, Labcd/nH$d;->j6:Labcd/KK;

    iget v1, p0, Labcd/nH$d;->DW:I

    invoke-virtual {v0, v1}, Labcd/KK;->v5(I)Labcd/KK$a;

    move-result-object v0

    iput-object v0, p0, Labcd/nH$d;->Hw:Labcd/KK$a;

    :cond_ae
    iget v0, p0, Labcd/nH$d;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/nH$d;->DW:I

    goto :goto_5e

    :cond_b5
    :goto_b5
    return-void
.end method
