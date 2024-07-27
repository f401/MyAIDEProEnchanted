.class Labcd/DG;
.super Labcd/GG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/DG$a;
    }
.end annotation


# static fields
.field private static j6:[I


# instance fields
.field private final DW:Labcd/AE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LAE",
            "<",
            "Labcd/DG$a;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Labcd/XG;

.field private Hw:[Labcd/GG$a;


# direct methods
.method constructor <init>(Labcd/XG;)V
    .registers 14

    const/4 v2, 0x0

    invoke-direct {p0}, Labcd/GG;-><init>()V

    new-instance v0, Labcd/AE;

    invoke-direct {v0}, Labcd/AE;-><init>()V

    iput-object v0, p0, Labcd/DG;->DW:Labcd/AE;

    iput-object p1, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {p1}, Labcd/XG;->gn()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    :cond_0
    array-length v5, v0

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_1

    return-void

    :cond_1
    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x2

    if-eq v1, v7, :cond_3

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    array-length v8, v7

    move v1, v2

    :goto_1
    if-ge v1, v8, :cond_2

    aget-object v9, v7, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x26

    if-eq v10, v11, :cond_4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v9

    iget-object v10, p0, Labcd/DG;->DW:Labcd/AE;

    new-instance v11, Labcd/DG$a;

    invoke-direct {v11, v9}, Labcd/DG$a;-><init>(Labcd/YD;)V

    invoke-virtual {v10, v11}, Labcd/AE;->j6(Labcd/AE$a;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method static synthetic J0()[I
    .registers 3

    sget-object v0, Labcd/DG;->j6:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/GG$c;->values()[Labcd/GG$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/GG$c;->FH:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Labcd/GG$c;->DW:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Labcd/GG$c;->Hw:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Labcd/GG$c;->j6:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Labcd/DG;->j6:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method DW(Labcd/wH;Labcd/YD;)J
    .registers 5

    iget-object v0, p0, Labcd/DG;->DW:Labcd/AE;

    invoke-virtual {v0, p2}, Labcd/AE;->j6(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Labcd/XG;->j6(Labcd/wH;Ljava/lang/String;Labcd/YD;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1, p2}, Labcd/XG;->DW(Labcd/wH;Labcd/YD;)J

    move-result-wide v0

    goto :goto_0
.end method

.method DW(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Labcd/DG;->DW:Labcd/AE;

    invoke-static {p1}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/AE;->j6(Labcd/YD;)Z

    move-result v0

    return v0
.end method

.method EQ()Labcd/GG;
    .registers 1

    return-object p0
.end method

.method FH(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;
    .registers 5

    iget-object v0, p0, Labcd/DG;->DW:Labcd/AE;

    invoke-virtual {v0, p3}, Labcd/AE;->j6(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1, p2, p3}, Labcd/XG;->FH(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public FH()Labcd/xE;
    .registers 1

    return-object p0
.end method

.method FH(Labcd/YD;)Z
    .registers 3

    iget-object v0, p0, Labcd/DG;->DW:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->j6(Labcd/YD;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1}, Labcd/XG;->FH(Labcd/YD;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method Hw(Labcd/wH;Labcd/YD;)Labcd/FE;
    .registers 4

    invoke-virtual {p0, p1, p2}, Labcd/GG;->Zo(Labcd/wH;Labcd/YD;)Labcd/FE;

    move-result-object v0

    return-object v0
.end method

.method VH()Labcd/gE;
    .registers 2

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0}, Labcd/XG;->VH()Labcd/gE;

    move-result-object v0

    return-object v0
.end method

.method Zo()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Labcd/BH;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0}, Labcd/XG;->Zo()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method gn()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0}, Labcd/XG;->gn()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method j6(Labcd/wH;Ljava/lang/String;Labcd/YD;)J
    .registers 6

    iget-object v0, p0, Labcd/DG;->DW:Labcd/AE;

    invoke-virtual {v0, p3}, Labcd/AE;->j6(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1, p2, p3}, Labcd/XG;->j6(Labcd/wH;Ljava/lang/String;Labcd/YD;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method j6(Ljava/io/File;Labcd/yE;Z)Labcd/GG$c;
    .registers 7

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1, p2, p3}, Labcd/XG;->j6(Ljava/io/File;Labcd/yE;Z)Labcd/GG$c;

    move-result-object v0

    invoke-static {}, Labcd/DG;->J0()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Labcd/DG;->DW:Labcd/AE;

    new-instance v2, Labcd/DG$a;

    invoke-direct {v2, p2}, Labcd/DG$a;-><init>(Labcd/YD;)V

    invoke-virtual {v1, v2}, Labcd/AE;->DW(Labcd/AE$a;)Labcd/AE$a;

    goto :goto_0
.end method

.method j6(Ljava/io/File;Ljava/io/File;)Labcd/aH;
    .registers 4

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1, p2}, Labcd/XG;->j6(Ljava/io/File;Ljava/io/File;)Labcd/aH;

    move-result-object v0

    return-object v0
.end method

.method public j6()V
    .registers 1

    return-void
.end method

.method j6(Labcd/TH;Labcd/MH;Labcd/wH;)V
    .registers 5

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1, p2, p3}, Labcd/XG;->j6(Labcd/TH;Labcd/MH;Labcd/wH;)V

    return-void
.end method

.method j6(Ljava/util/Set;Labcd/WD;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;",
            "Labcd/WD;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1, p2}, Labcd/XG;->j6(Ljava/util/Set;Labcd/WD;)V

    return-void
.end method

.method public j6(Labcd/YD;)Z
    .registers 3

    invoke-virtual {p0, p1}, Labcd/GG;->Hw(Labcd/YD;)Z

    move-result v0

    return v0
.end method

.method tp()[Labcd/GG$a;
    .registers 6

    iget-object v0, p0, Labcd/DG;->Hw:[Labcd/GG$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0}, Labcd/XG;->tp()[Labcd/GG$a;

    move-result-object v1

    array-length v0, v1

    new-array v0, v0, [Labcd/GG$a;

    iput-object v0, p0, Labcd/DG;->Hw:[Labcd/GG$a;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Labcd/DG;->Hw:[Labcd/GG$a;

    array-length v3, v2

    if-lt v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Labcd/DG;->Hw:[Labcd/GG$a;

    return-object v0

    :cond_1
    new-instance v3, Labcd/GG$a;

    aget-object v4, v1, v0

    iget-object v4, v4, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v4}, Labcd/GG;->EQ()Labcd/GG;

    move-result-object v4

    invoke-direct {v3, v4}, Labcd/GG$a;-><init>(Labcd/GG;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method u7()Labcd/pK;
    .registers 2

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0}, Labcd/XG;->u7()Labcd/pK;

    move-result-object v0

    return-object v0
.end method

.method v5(Labcd/wH;Labcd/YD;)Labcd/FE;
    .registers 5

    iget-object v0, p0, Labcd/DG;->DW:Labcd/AE;

    invoke-virtual {v0, p2}, Labcd/AE;->j6(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Labcd/XG;->FH(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1, p2}, Labcd/XG;->v5(Labcd/wH;Labcd/YD;)Labcd/FE;

    move-result-object v0

    goto :goto_0
.end method

.method we()Z
    .registers 2

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0}, Labcd/XG;->we()Z

    move-result v0

    return v0
.end method
