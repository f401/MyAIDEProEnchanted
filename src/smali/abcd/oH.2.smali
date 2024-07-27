.class Labcd/oH;
.super Labcd/RE;


# static fields
.field private static EQ:[I


# instance fields
.field private J0:Labcd/WG;

.field private final we:Labcd/nH;


# direct methods
.method constructor <init>(Labcd/nH;Labcd/ME;)V
    .registers 3

    invoke-direct {p0, p2}, Labcd/RE;-><init>(Labcd/ME;)V

    iput-object p1, p0, Labcd/oH;->we:Labcd/nH;

    return-void
.end method

.method private FH(Labcd/RE$a;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Labcd/oH;->aM()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "fast forward"

    goto :goto_0

    :cond_1
    const-string v0, "forced-update"

    goto :goto_0

    :cond_2
    const-string v0, "created"

    goto :goto_0
.end method

.method static synthetic aM()[I
    .registers 3

    sget-object v0, Labcd/oH;->EQ:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/RE$a;->values()[Labcd/RE$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/RE$a;->Zo:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Labcd/RE$a;->v5:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Labcd/RE$a;->u7:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Labcd/RE$a;->DW:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Labcd/RE$a;->Hw:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Labcd/RE$a;->j6:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Labcd/RE$a;->FH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Labcd/RE$a;->VH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Labcd/RE$a;->gn:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Labcd/RE$a;->tp:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Labcd/oH;->EQ:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected DW(Labcd/RE$a;)Labcd/RE$a;
    .registers 6

    const/4 v3, 0x1

    iget-object v0, p0, Labcd/oH;->we:Labcd/nH;

    invoke-virtual {v0}, Labcd/nH;->FH()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    sget-object v1, Labcd/yH;->j6:Labcd/gE$b;

    invoke-virtual {v0, v1}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yH;

    iget-object v1, p0, Labcd/oH;->J0:Labcd/WG;

    invoke-virtual {v0}, Labcd/yH;->FH()Z

    move-result v0

    invoke-virtual {v1, v0}, Labcd/WG;->j6(Z)V

    iget-object v0, p0, Labcd/oH;->J0:Labcd/WG;

    invoke-virtual {v0, v3}, Labcd/WG;->FH(Z)V

    iget-object v0, p0, Labcd/oH;->J0:Labcd/WG;

    invoke-virtual {p0}, Labcd/RE;->v5()Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/WG;->j6(Labcd/yE;)V

    invoke-virtual {p0}, Labcd/RE;->tp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Labcd/RE;->J8()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Labcd/oH;->FH(Labcd/RE$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Labcd/oH;->we:Labcd/nH;

    invoke-virtual {v1, p0, v0, v3}, Labcd/nH;->j6(Labcd/RE;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Labcd/oH;->J0:Labcd/WG;

    invoke-virtual {v0}, Labcd/WG;->j6()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Labcd/RE$a;->DW:Labcd/RE$a;

    :goto_1
    return-object p1

    :cond_2
    iget-object v0, p0, Labcd/oH;->we:Labcd/nH;

    iget-object v1, p0, Labcd/oH;->J0:Labcd/WG;

    invoke-virtual {v1}, Labcd/WG;->DW()Labcd/LG;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Labcd/nH;->j6(Labcd/oH;Labcd/LG;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected DW(Z)Z
    .registers 6

    invoke-virtual {p0}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Labcd/ME;->v5()Labcd/ME;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Labcd/WG;

    iget-object v2, p0, Labcd/oH;->we:Labcd/nH;

    invoke-virtual {v2, v0}, Labcd/nH;->Hw(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Labcd/oH;->EQ()Labcd/UE;

    move-result-object v3

    invoke-virtual {v3}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Labcd/WG;-><init>(Ljava/io/File;Labcd/pK;)V

    iput-object v1, p0, Labcd/oH;->J0:Labcd/WG;

    iget-object v1, p0, Labcd/oH;->J0:Labcd/WG;

    invoke-virtual {v1}, Labcd/WG;->Hw()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Labcd/oH;->we:Labcd/nH;

    invoke-virtual {v1, v0}, Labcd/nH;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Labcd/RE;->j6(Labcd/yE;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected EQ()Labcd/UE;
    .registers 2

    iget-object v0, p0, Labcd/oH;->we:Labcd/nH;

    invoke-virtual {v0}, Labcd/nH;->FH()Labcd/UE;

    move-result-object v0

    return-object v0
.end method

.method protected QX()V
    .registers 2

    iget-object v0, p0, Labcd/oH;->J0:Labcd/WG;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/WG;->v5()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/oH;->J0:Labcd/WG;

    :cond_0
    return-void
.end method

.method protected bridge synthetic gn()Labcd/OE;
    .registers 2

    invoke-virtual {p0}, Labcd/oH;->gn()Labcd/nH;

    move-result-object v0

    return-object v0
.end method

.method protected gn()Labcd/nH;
    .registers 2

    iget-object v0, p0, Labcd/oH;->we:Labcd/nH;

    return-object v0
.end method

.method protected j6(Labcd/RE$a;)Labcd/RE$a;
    .registers 4

    invoke-virtual {p0}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->v5()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v0

    sget-object v1, Labcd/ME$a;->j6:Labcd/ME$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Labcd/oH;->we:Labcd/nH;

    invoke-virtual {v0, p0}, Labcd/nH;->j6(Labcd/oH;)V

    :cond_0
    return-object p1
.end method

.method protected j6(Ljava/lang/String;)Labcd/RE$a;
    .registers 5

    iget-object v0, p0, Labcd/oH;->we:Labcd/nH;

    invoke-virtual {v0}, Labcd/nH;->FH()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    sget-object v1, Labcd/yH;->j6:Labcd/gE$b;

    invoke-virtual {v0, v1}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yH;

    iget-object v1, p0, Labcd/oH;->J0:Labcd/WG;

    invoke-virtual {v0}, Labcd/yH;->FH()Z

    move-result v0

    invoke-virtual {v1, v0}, Labcd/WG;->j6(Z)V

    iget-object v0, p0, Labcd/oH;->J0:Labcd/WG;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/WG;->FH(Z)V

    iget-object v0, p0, Labcd/oH;->J0:Labcd/WG;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ref: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/WG;->j6([B)V

    invoke-virtual {p0}, Labcd/RE;->tp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Labcd/oH;->we:Labcd/nH;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Labcd/nH;->j6(Labcd/RE;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Labcd/oH;->J0:Labcd/WG;

    invoke-virtual {v0}, Labcd/WG;->j6()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Labcd/RE$a;->DW:Labcd/RE$a;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Labcd/oH;->we:Labcd/nH;

    iget-object v1, p0, Labcd/oH;->J0:Labcd/WG;

    invoke-virtual {v1}, Labcd/WG;->DW()Labcd/LG;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Labcd/nH;->j6(Labcd/oH;Labcd/LG;Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v0

    sget-object v1, Labcd/ME$a;->j6:Labcd/ME$a;

    if-ne v0, v1, :cond_2

    sget-object v0, Labcd/RE$a;->Hw:Labcd/RE$a;

    goto :goto_0

    :cond_2
    sget-object v0, Labcd/RE$a;->v5:Labcd/RE$a;

    goto :goto_0
.end method
