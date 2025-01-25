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
    .registers 3

    invoke-static {}, Labcd/oH;->aM()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x5

    if-eq p1, v0, :cond_18

    const/4 v0, 0x6

    if-eq p1, v0, :cond_15

    const/4 p1, 0x0

    return-object p1

    :cond_15
    const-string p1, "fast forward"

    return-object p1

    :cond_18
    const-string p1, "forced-update"

    return-object p1

    :cond_1b
    const-string p1, "created"

    return-object p1
.end method

.method static synthetic aM()[I
    .registers 3

    sget-object v0, Labcd/oH;->EQ:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/RE$a;->values()[Labcd/RE$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/RE$a;->Zo:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/RE$a;->v5:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/RE$a;->u7:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v1

    :goto_2e
    :try_start_2e
    sget-object v1, Labcd/RE$a;->DW:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_37} :catch_38

    goto :goto_39

    :catch_38
    move-exception v1

    :goto_39
    :try_start_39
    sget-object v1, Labcd/RE$a;->Hw:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_43

    goto :goto_44

    :catch_43
    move-exception v1

    :goto_44
    :try_start_44
    sget-object v1, Labcd/RE$a;->j6:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_4f

    :catch_4e
    move-exception v1

    :goto_4f
    :try_start_4f
    sget-object v1, Labcd/RE$a;->FH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_58} :catch_59

    goto :goto_5a

    :catch_59
    move-exception v1

    :goto_5a
    :try_start_5a
    sget-object v1, Labcd/RE$a;->VH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_63} :catch_64

    goto :goto_65

    :catch_64
    move-exception v1

    :goto_65
    :try_start_65
    sget-object v1, Labcd/RE$a;->gn:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_70

    goto :goto_71

    :catch_70
    move-exception v1

    :goto_71
    :try_start_71
    sget-object v1, Labcd/RE$a;->tp:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7b} :catch_7c

    goto :goto_7d

    :catch_7c
    move-exception v1

    :goto_7d
    sput-object v0, Labcd/oH;->EQ:[I

    return-object v0
.end method


# virtual methods
.method protected DW(Labcd/RE$a;)Labcd/RE$a;
    .registers 6

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

    invoke-virtual {p0}, Labcd/RE;->v5()Labcd/yE;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/WG;->j6(Labcd/yE;)V

    invoke-virtual {p0}, Labcd/RE;->tp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Labcd/RE;->J8()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-direct {p0, p1}, Labcd/oH;->FH(Labcd/RE$a;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_59

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_58

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_59

    :cond_58
    move-object v0, v2

    :cond_59
    :goto_59
    iget-object v2, p0, Labcd/oH;->we:Labcd/nH;

    invoke-virtual {v2, p0, v0, v1}, Labcd/nH;->j6(Labcd/RE;Ljava/lang/String;Z)V

    :cond_5e
    iget-object v0, p0, Labcd/oH;->J0:Labcd/WG;

    invoke-virtual {v0}, Labcd/WG;->j6()Z

    move-result v0

    if-nez v0, :cond_69

    sget-object p1, Labcd/RE$a;->DW:Labcd/RE$a;

    return-object p1

    :cond_69
    iget-object v0, p0, Labcd/oH;->we:Labcd/nH;

    iget-object v1, p0, Labcd/oH;->J0:Labcd/WG;

    invoke-virtual {v1}, Labcd/WG;->DW()Labcd/LG;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Labcd/nH;->j6(Labcd/oH;Labcd/LG;)V

    return-object p1
.end method

.method protected DW(Z)Z
    .registers 5

    invoke-virtual {p0}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v0

    if-eqz p1, :cond_a

    invoke-interface {v0}, Labcd/ME;->v5()Labcd/ME;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Labcd/WG;

    iget-object v1, p0, Labcd/oH;->we:Labcd/nH;

    invoke-virtual {v1, p1}, Labcd/nH;->Hw(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Labcd/oH;->EQ()Labcd/UE;

    move-result-object v2

    invoke-virtual {v2}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/WG;-><init>(Ljava/io/File;Labcd/pK;)V

    iput-object v0, p0, Labcd/oH;->J0:Labcd/WG;

    invoke-virtual {v0}, Labcd/WG;->Hw()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Labcd/oH;->we:Labcd/nH;

    invoke-virtual {v0, p1}, Labcd/nH;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object p1

    if-eqz p1, :cond_36

    invoke-interface {p1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object p1

    goto :goto_37

    :cond_36
    const/4 p1, 0x0

    :goto_37
    invoke-virtual {p0, p1}, Labcd/RE;->j6(Labcd/yE;)V

    const/4 p1, 0x1

    return p1

    :cond_3c
    const/4 p1, 0x0

    return p1
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

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Labcd/WG;->v5()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/oH;->J0:Labcd/WG;

    :cond_a
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

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Labcd/oH;->we:Labcd/nH;

    invoke-virtual {v0, p0}, Labcd/nH;->j6(Labcd/oH;)V

    :cond_15
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

    if-eqz v0, :cond_49

    iget-object v1, p0, Labcd/oH;->we:Labcd/nH;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Labcd/nH;->j6(Labcd/RE;Ljava/lang/String;Z)V

    :cond_49
    iget-object v0, p0, Labcd/oH;->J0:Labcd/WG;

    invoke-virtual {v0}, Labcd/WG;->j6()Z

    move-result v0

    if-nez v0, :cond_54

    sget-object p1, Labcd/RE$a;->DW:Labcd/RE$a;

    return-object p1

    :cond_54
    iget-object v0, p0, Labcd/oH;->we:Labcd/nH;

    iget-object v1, p0, Labcd/oH;->J0:Labcd/WG;

    invoke-virtual {v1}, Labcd/WG;->DW()Labcd/LG;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Labcd/nH;->j6(Labcd/oH;Labcd/LG;Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/RE;->VH()Labcd/ME;

    move-result-object p1

    invoke-interface {p1}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object p1

    sget-object v0, Labcd/ME$a;->j6:Labcd/ME$a;

    if-ne p1, v0, :cond_6e

    sget-object p1, Labcd/RE$a;->Hw:Labcd/RE$a;

    return-object p1

    :cond_6e
    sget-object p1, Labcd/RE$a;->v5:Labcd/RE$a;

    return-object p1
.end method
