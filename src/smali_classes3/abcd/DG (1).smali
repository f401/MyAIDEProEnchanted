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
            "LAE<",
            "Labcd/DG$a;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Labcd/XG;

.field private Hw:[Labcd/GG$a;


# direct methods
.method constructor <init>(Labcd/XG;)V
    .registers 13

    invoke-direct {p0}, Labcd/GG;-><init>()V

    new-instance v0, Labcd/AE;

    invoke-direct {v0}, Labcd/AE;-><init>()V

    iput-object v0, p0, Labcd/DG;->DW:Labcd/AE;

    iput-object p1, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {p1}, Labcd/XG;->gn()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    new-array v0, v1, [Ljava/lang/String;

    :cond_19
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1b
    if-lt v3, v2, :cond_1e

    return-void

    :cond_1e
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_28

    goto :goto_38

    :cond_28
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_34

    goto :goto_38

    :cond_34
    array-length v6, v5

    const/4 v7, 0x0

    :goto_36
    if-lt v7, v6, :cond_3b

    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_3b
    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x26

    if-eq v9, v10, :cond_46

    goto :goto_66

    :cond_46
    :try_start_46
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v8

    iget-object v9, p0, Labcd/DG;->DW:Labcd/AE;

    new-instance v10, Labcd/DG$a;

    invoke-direct {v10, v8}, Labcd/DG$a;-><init>(Labcd/YD;)V

    invoke-virtual {v9, v10}, Labcd/AE;->j6(Labcd/AE$a;)V
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-exception v8

    :goto_66
    add-int/lit8 v7, v7, 0x1

    goto :goto_36
.end method

.method static synthetic J0()[I
    .registers 3

    sget-object v0, Labcd/DG;->j6:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/GG$c;->values()[Labcd/GG$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/GG$c;->FH:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/GG$c;->DW:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/GG$c;->Hw:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    :try_start_2d
    sget-object v1, Labcd/GG$c;->j6:Labcd/GG$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v1

    :goto_38
    sput-object v0, Labcd/DG;->j6:[I

    return-object v0
.end method


# virtual methods
.method DW(Labcd/wH;Labcd/YD;)J
    .registers 5

    iget-object v0, p0, Labcd/DG;->DW:Labcd/AE;

    invoke-virtual {v0, p2}, Labcd/AE;->j6(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Labcd/XG;->j6(Labcd/wH;Ljava/lang/String;Labcd/YD;)J

    move-result-wide p1

    return-wide p1

    :cond_13
    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1, p2}, Labcd/XG;->DW(Labcd/wH;Labcd/YD;)J

    move-result-wide p1

    return-wide p1
.end method

.method DW(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Labcd/DG;->DW:Labcd/AE;

    invoke-static {p1}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/AE;->j6(Labcd/YD;)Z

    move-result p1

    return p1
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

    if-eqz v0, :cond_f

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1, p2, p3}, Labcd/XG;->FH(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
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

    if-nez v0, :cond_12

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1}, Labcd/XG;->FH(Labcd/YD;)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x0

    return p1

    :cond_12
    const/4 p1, 0x1

    return p1
.end method

.method Hw(Labcd/wH;Labcd/YD;)Labcd/FE;
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/GG;->Zo(Labcd/wH;Labcd/YD;)Labcd/FE;

    move-result-object p1

    return-object p1
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
            "Ljava/util/Collection<",
            "+",
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
    .registers 5

    iget-object v0, p0, Labcd/DG;->DW:Labcd/AE;

    invoke-virtual {v0, p3}, Labcd/AE;->j6(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1, p2, p3}, Labcd/XG;->j6(Labcd/wH;Ljava/lang/String;Labcd/YD;)J

    move-result-wide p1

    return-wide p1

    :cond_f
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method j6(Ljava/io/File;Labcd/yE;Z)Labcd/GG$c;
    .registers 5

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1, p2, p3}, Labcd/XG;->j6(Ljava/io/File;Labcd/yE;Z)Labcd/GG$c;

    move-result-object p1

    invoke-static {}, Labcd/DG;->J0()[I

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_17

    const/4 v0, 0x3

    if-eq p3, v0, :cond_17

    goto :goto_21

    :cond_17
    iget-object p3, p0, Labcd/DG;->DW:Labcd/AE;

    new-instance v0, Labcd/DG$a;

    invoke-direct {v0, p2}, Labcd/DG$a;-><init>(Labcd/YD;)V

    invoke-virtual {p3, v0}, Labcd/AE;->DW(Labcd/AE$a;)Labcd/AE$a;

    :goto_21
    return-object p1
.end method

.method j6(Ljava/io/File;Ljava/io/File;)Labcd/aH;
    .registers 4

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1, p2}, Labcd/XG;->j6(Ljava/io/File;Ljava/io/File;)Labcd/aH;

    move-result-object p1

    return-object p1
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
            "Ljava/util/Set<",
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
    .registers 2

    invoke-virtual {p0, p1}, Labcd/GG;->Hw(Labcd/YD;)Z

    move-result p1

    return p1
.end method

.method tp()[Labcd/GG$a;
    .registers 6

    iget-object v0, p0, Labcd/DG;->Hw:[Labcd/GG$a;

    if-nez v0, :cond_28

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0}, Labcd/XG;->tp()[Labcd/GG$a;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Labcd/GG$a;

    iput-object v1, p0, Labcd/DG;->Hw:[Labcd/GG$a;

    const/4 v1, 0x0

    :goto_10
    iget-object v2, p0, Labcd/DG;->Hw:[Labcd/GG$a;

    array-length v3, v2

    if-lt v1, v3, :cond_16

    goto :goto_28

    :cond_16
    new-instance v3, Labcd/GG$a;

    aget-object v4, v0, v1

    iget-object v4, v4, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v4}, Labcd/GG;->EQ()Labcd/GG;

    move-result-object v4

    invoke-direct {v3, v4}, Labcd/GG$a;-><init>(Labcd/GG;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_28
    :goto_28
    iget-object v0, p0, Labcd/DG;->Hw:[Labcd/GG$a;

    return-object v0
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

    if-eqz v0, :cond_13

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Labcd/XG;->FH(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;

    move-result-object p1

    return-object p1

    :cond_13
    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0, p1, p2}, Labcd/XG;->v5(Labcd/wH;Labcd/YD;)Labcd/FE;

    move-result-object p1

    return-object p1
.end method

.method we()Z
    .registers 2

    iget-object v0, p0, Labcd/DG;->FH:Labcd/XG;

    invoke-virtual {v0}, Labcd/XG;->we()Z

    move-result v0

    return v0
.end method
