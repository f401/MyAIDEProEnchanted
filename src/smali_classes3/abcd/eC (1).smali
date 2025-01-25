.class public abstract Labcd/eC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/eC$a;
    }
.end annotation


# static fields
.field private static DW:[I

.field private static j6:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic DW()[I
    .registers 3

    sget-object v0, Labcd/eC;->DW:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/jC$a;->values()[Labcd/jC$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/jC$a;->DW:Labcd/jC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/jC$a;->Hw:Labcd/jC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/jC$a;->j6:Labcd/jC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    :try_start_2d
    sget-object v1, Labcd/jC$a;->FH:Labcd/jC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v1

    :goto_38
    sput-object v0, Labcd/eC;->DW:[I

    return-object v0
.end method

.method public static j6(Labcd/eC$a;)Labcd/eC;
    .registers 2

    invoke-static {}, Labcd/eC;->j6()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-ne p0, v0, :cond_16

    new-instance p0, Labcd/oC;

    invoke-direct {p0}, Labcd/oC;-><init>()V

    return-object p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1c
    sget-object p0, Labcd/sC;->j6:Labcd/eC;

    return-object p0
.end method

.method private static j6(Labcd/CC;Labcd/CC;)Labcd/jC;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Labcd/CC;",
            ">(TS;TS;)",
            "Labcd/jC;"
        }
    .end annotation

    new-instance v0, Labcd/jC;

    invoke-virtual {p0}, Labcd/CC;->j6()I

    move-result p0

    invoke-virtual {p1}, Labcd/CC;->j6()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1, p1}, Labcd/jC;-><init>(IIII)V

    return-object v0
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/eC;->j6:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/eC$a;->values()[Labcd/eC$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/eC$a;->DW:Labcd/eC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/eC$a;->j6:Labcd/eC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    sput-object v0, Labcd/eC;->j6:[I

    return-object v0
.end method


# virtual methods
.method public abstract DW(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Labcd/CC;",
            ">(",
            "LDC<",
            "-TS;>;TS;TS;)",
            "Labcd/kC;"
        }
    .end annotation
.end method

.method public j6(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Labcd/CC;",
            ">(",
            "LDC<",
            "-TS;>;TS;TS;)",
            "Labcd/kC;"
        }
    .end annotation

    invoke-static {p2, p3}, Labcd/eC;->j6(Labcd/CC;Labcd/CC;)Labcd/jC;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Labcd/DC;->j6(Labcd/CC;Labcd/CC;Labcd/jC;)Labcd/jC;

    move-result-object v0

    invoke-static {}, Labcd/eC;->DW()[I

    move-result-object v1

    invoke-virtual {v0}, Labcd/jC;->gn()Labcd/jC$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7f

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7f

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2f

    const/4 p1, 0x4

    if-ne v1, p1, :cond_29

    new-instance p1, Labcd/kC;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Labcd/kC;-><init>(I)V

    return-object p1

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2f
    new-instance v1, Labcd/HC;

    invoke-direct {v1, p1}, Labcd/HC;-><init>(Labcd/DC;)V

    invoke-static {p2, v0}, Labcd/GC;->j6(Labcd/CC;Labcd/jC;)Labcd/GC;

    move-result-object p2

    invoke-static {p3, v0}, Labcd/GC;->DW(Labcd/CC;Labcd/jC;)Labcd/GC;

    move-result-object v0

    invoke-virtual {p0, v1, p2, v0}, Labcd/eC;->DW(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;

    move-result-object v1

    invoke-static {v1, p2, v0}, Labcd/GC;->j6(Labcd/kC;Labcd/GC;Labcd/GC;)Labcd/kC;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/jC;

    invoke-virtual {p2}, Labcd/jC;->gn()Labcd/jC$a;

    move-result-object v0

    sget-object v3, Labcd/jC$a;->j6:Labcd/jC$a;

    if-ne v0, v3, :cond_7e

    :goto_56
    iget v0, p2, Labcd/jC;->Hw:I

    invoke-virtual {p3}, Labcd/CC;->j6()I

    move-result v3

    if-ge v0, v3, :cond_7e

    iget v0, p2, Labcd/jC;->FH:I

    iget v3, p2, Labcd/jC;->Hw:I

    invoke-virtual {p1, p3, v0, p3, v3}, Labcd/DC;->j6(Labcd/CC;ILabcd/CC;I)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_7e

    :cond_69
    iget v0, p2, Labcd/jC;->j6:I

    add-int/2addr v0, v2

    iput v0, p2, Labcd/jC;->j6:I

    iget v0, p2, Labcd/jC;->DW:I

    add-int/2addr v0, v2

    iput v0, p2, Labcd/jC;->DW:I

    iget v0, p2, Labcd/jC;->FH:I

    add-int/2addr v0, v2

    iput v0, p2, Labcd/jC;->FH:I

    iget v0, p2, Labcd/jC;->Hw:I

    add-int/2addr v0, v2

    iput v0, p2, Labcd/jC;->Hw:I

    goto :goto_56

    :cond_7e
    :goto_7e
    return-object v1

    :cond_7f
    invoke-static {v0}, Labcd/kC;->j6(Labcd/jC;)Labcd/kC;

    move-result-object p1

    return-object p1
.end method
