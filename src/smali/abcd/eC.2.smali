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

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/jC$a;->values()[Labcd/jC$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/jC$a;->DW:Labcd/jC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Labcd/jC$a;->Hw:Labcd/jC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Labcd/jC$a;->j6:Labcd/jC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Labcd/jC$a;->FH:Labcd/jC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Labcd/eC;->DW:[I

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

.method public static j6(Labcd/eC$a;)Labcd/eC;
    .registers 3

    invoke-static {}, Labcd/eC;->j6()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Labcd/oC;

    invoke-direct {v0}, Labcd/oC;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Labcd/sC;->j6:Labcd/eC;

    goto :goto_0
.end method

.method private static j6(Labcd/CC;Labcd/CC;)Labcd/jC;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Labcd/CC;",
            ">(TS;TS;)",
            "Labcd/jC;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Labcd/jC;

    invoke-virtual {p0}, Labcd/CC;->j6()I

    move-result v1

    invoke-virtual {p1}, Labcd/CC;->j6()I

    move-result v2

    invoke-direct {v0, v3, v1, v3, v2}, Labcd/jC;-><init>(IIII)V

    return-object v0
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/eC;->j6:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/eC$a;->values()[Labcd/eC$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/eC$a;->DW:Labcd/eC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Labcd/eC$a;->j6:Labcd/eC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Labcd/eC;->j6:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public abstract DW(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Labcd/CC;",
            ">(",
            "LDC",
            "<-TS;>;TS;TS;)",
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
            "LDC",
            "<-TS;>;TS;TS;)",
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

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    new-instance v0, Labcd/kC;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/kC;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v1, Labcd/HC;

    invoke-direct {v1, p1}, Labcd/HC;-><init>(Labcd/DC;)V

    invoke-static {p2, v0}, Labcd/GC;->j6(Labcd/CC;Labcd/jC;)Labcd/GC;

    move-result-object v2

    invoke-static {p3, v0}, Labcd/GC;->DW(Labcd/CC;Labcd/jC;)Labcd/GC;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Labcd/eC;->DW(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;

    move-result-object v1

    invoke-static {v1, v2, v0}, Labcd/GC;->j6(Labcd/kC;Labcd/GC;Labcd/GC;)Labcd/kC;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/jC;

    invoke-virtual {v0}, Labcd/jC;->gn()Labcd/jC$a;

    move-result-object v2

    sget-object v3, Labcd/jC$a;->j6:Labcd/jC$a;

    if-ne v2, v3, :cond_2

    :goto_1
    iget v2, v0, Labcd/jC;->Hw:I

    invoke-virtual {p3}, Labcd/CC;->j6()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget v2, v0, Labcd/jC;->FH:I

    iget v3, v0, Labcd/jC;->Hw:I

    invoke-virtual {p1, p3, v2, p3, v3}, Labcd/DC;->j6(Labcd/CC;ILabcd/CC;I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iget v2, v0, Labcd/jC;->j6:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Labcd/jC;->j6:I

    iget v2, v0, Labcd/jC;->DW:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Labcd/jC;->DW:I

    iget v2, v0, Labcd/jC;->FH:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Labcd/jC;->FH:I

    iget v2, v0, Labcd/jC;->Hw:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Labcd/jC;->Hw:I

    goto :goto_1

    :cond_4
    invoke-static {v0}, Labcd/kC;->j6(Labcd/jC;)Labcd/kC;

    move-result-object v0

    goto :goto_0
.end method
