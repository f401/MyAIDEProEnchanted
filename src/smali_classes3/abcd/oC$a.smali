.class Labcd/oC$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/oC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Labcd/CC;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static j6:[I


# instance fields
.field private final DW:Labcd/mC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LmC<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final FH:Labcd/lC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LlC<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final Hw:Labcd/lC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LlC<",
            "TS;>;"
        }
    .end annotation
.end field

.field final Zo:Labcd/oC;

.field final v5:Labcd/kC;


# direct methods
.method constructor <init>(Labcd/oC;Labcd/kC;Labcd/mC;Labcd/lC;Labcd/lC;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/kC;",
            "LmC<",
            "TS;>;",
            "LlC<",
            "TS;>;",
            "LlC<",
            "TS;>;)V"
        }
    .end annotation

    iput-object p1, p0, Labcd/oC$a;->Zo:Labcd/oC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Labcd/oC$a;->DW:Labcd/mC;

    iput-object p4, p0, Labcd/oC$a;->FH:Labcd/lC;

    iput-object p5, p0, Labcd/oC$a;->Hw:Labcd/lC;

    iput-object p2, p0, Labcd/oC$a;->v5:Labcd/kC;

    return-void
.end method

.method private DW()Labcd/HC;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LHC<",
            "LlC<",
            "TS;>;>;"
        }
    .end annotation

    new-instance v0, Labcd/HC;

    iget-object v1, p0, Labcd/oC$a;->DW:Labcd/mC;

    invoke-direct {v0, v1}, Labcd/HC;-><init>(Labcd/DC;)V

    return-object v0
.end method

.method private DW(Labcd/jC;)V
    .registers 4

    invoke-static {}, Labcd/oC$a;->j6()[I

    move-result-object v0

    invoke-virtual {p1}, Labcd/jC;->gn()Labcd/jC$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    invoke-virtual {p0, p1}, Labcd/oC$a;->j6(Labcd/jC;)V

    goto :goto_26

    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_21
    iget-object v0, p0, Labcd/oC$a;->v5:Labcd/kC;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_26
    return-void
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/oC$a;->j6:[I

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
    sput-object v0, Labcd/oC$a;->j6:[I

    return-object v0
.end method


# virtual methods
.method j6(Labcd/jC;)V
    .registers 9

    new-instance v6, Labcd/pC;

    iget-object v0, p0, Labcd/oC$a;->Zo:Labcd/oC;

    invoke-static {v0}, Labcd/oC;->j6(Labcd/oC;)I

    move-result v1

    iget-object v2, p0, Labcd/oC$a;->DW:Labcd/mC;

    iget-object v3, p0, Labcd/oC$a;->FH:Labcd/lC;

    iget-object v4, p0, Labcd/oC$a;->Hw:Labcd/lC;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Labcd/pC;-><init>(ILabcd/mC;Labcd/lC;Labcd/lC;Labcd/jC;)V

    invoke-virtual {v6}, Labcd/pC;->j6()Labcd/jC;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Labcd/jC;->u7()Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_1f
    iget-object v0, p0, Labcd/oC$a;->v5:Labcd/kC;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :cond_25
    invoke-virtual {p1, v0}, Labcd/jC;->DW(Labcd/jC;)Labcd/jC;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/oC$a;->DW(Labcd/jC;)V

    invoke-virtual {p1, v0}, Labcd/jC;->j6(Labcd/jC;)Labcd/jC;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/oC$a;->DW(Labcd/jC;)V

    goto :goto_7e

    :cond_34
    iget-object v0, p0, Labcd/oC$a;->Zo:Labcd/oC;

    invoke-static {v0}, Labcd/oC;->DW(Labcd/oC;)Labcd/eC;

    move-result-object v0

    instance-of v0, v0, Labcd/qC;

    if-eqz v0, :cond_54

    iget-object v0, p0, Labcd/oC$a;->Zo:Labcd/oC;

    invoke-static {v0}, Labcd/oC;->DW(Labcd/oC;)Labcd/eC;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Labcd/qC;

    iget-object v2, p0, Labcd/oC$a;->v5:Labcd/kC;

    iget-object v3, p0, Labcd/oC$a;->DW:Labcd/mC;

    iget-object v4, p0, Labcd/oC$a;->FH:Labcd/lC;

    iget-object v5, p0, Labcd/oC$a;->Hw:Labcd/lC;

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Labcd/qC;->j6(Labcd/kC;Labcd/mC;Labcd/lC;Labcd/lC;Labcd/jC;)V

    goto :goto_7e

    :cond_54
    iget-object v0, p0, Labcd/oC$a;->Zo:Labcd/oC;

    invoke-static {v0}, Labcd/oC;->DW(Labcd/oC;)Labcd/eC;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Labcd/oC$a;->DW()Labcd/HC;

    move-result-object v0

    iget-object v1, p0, Labcd/oC$a;->FH:Labcd/lC;

    invoke-static {v1, p1}, Labcd/GC;->j6(Labcd/CC;Labcd/jC;)Labcd/GC;

    move-result-object v1

    iget-object v2, p0, Labcd/oC$a;->Hw:Labcd/lC;

    invoke-static {v2, p1}, Labcd/GC;->DW(Labcd/CC;Labcd/jC;)Labcd/GC;

    move-result-object p1

    iget-object v2, p0, Labcd/oC$a;->Zo:Labcd/oC;

    invoke-static {v2}, Labcd/oC;->DW(Labcd/oC;)Labcd/eC;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Labcd/eC;->DW(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;

    move-result-object v0

    iget-object v2, p0, Labcd/oC$a;->v5:Labcd/kC;

    invoke-static {v0, v1, p1}, Labcd/GC;->j6(Labcd/kC;Labcd/GC;Labcd/GC;)Labcd/kC;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_7e
    return-void
.end method
