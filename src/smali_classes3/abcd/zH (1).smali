.class Labcd/zH;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/zH$a;
    }
.end annotation


# static fields
.field private static final DW:I

.field private static final j6:I


# instance fields
.field private final EQ:Labcd/uE;

.field private final FH:Labcd/LE;

.field private final Hw:Labcd/IE;

.field private final VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/MH;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Labcd/AE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LAE<",
            "Labcd/MH;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Labcd/KH;

.field private final tp:Labcd/UJ;

.field private final u7:Labcd/AE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LAE<",
            "Labcd/zH$a;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:[Labcd/yE;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Labcd/rE;->FH:Labcd/rE;

    invoke-virtual {v0}, Labcd/rE;->DW()I

    move-result v0

    sput v0, Labcd/zH;->j6:I

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v0}, Labcd/rE;->DW()I

    move-result v0

    sput v0, Labcd/zH;->DW:I

    return-void
.end method

.method constructor <init>(Labcd/LE;Ljava/util/Set;Labcd/AE;Ljava/util/List;Labcd/IE;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Set<",
            "Labcd/mG;",
            ">;",
            "LAE<",
            "Labcd/MH;",
            ">;",
            "Ljava/util/List<",
            "Labcd/MH;",
            ">;",
            "Labcd/IE;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/zH;->FH:Labcd/LE;

    iput-object p5, p0, Labcd/zH;->Hw:Labcd/IE;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Labcd/yE;

    invoke-interface {p2, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Labcd/yE;

    iput-object p1, p0, Labcd/zH;->v5:[Labcd/yE;

    iput-object p3, p0, Labcd/zH;->Zo:Labcd/AE;

    iput-object p4, p0, Labcd/zH;->VH:Ljava/util/List;

    new-instance p1, Labcd/KH;

    invoke-direct {p1}, Labcd/KH;-><init>()V

    iput-object p1, p0, Labcd/zH;->gn:Labcd/KH;

    new-instance p1, Labcd/AE;

    invoke-direct {p1}, Labcd/AE;-><init>()V

    iput-object p1, p0, Labcd/zH;->u7:Labcd/AE;

    new-instance p1, Labcd/UJ;

    invoke-direct {p1}, Labcd/UJ;-><init>()V

    iput-object p1, p0, Labcd/zH;->tp:Labcd/UJ;

    new-instance p1, Labcd/uE;

    invoke-direct {p1}, Labcd/uE;-><init>()V

    iput-object p1, p0, Labcd/zH;->EQ:Labcd/uE;

    return-void
.end method

.method private static j6(I)I
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    sget p0, Labcd/zH;->j6:I

    return p0

    :cond_b
    sget p0, Labcd/zH;->DW:I

    return p0
.end method

.method private static j6([BII)I
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_c

    aget-byte v0, p0, p1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_9

    goto :goto_c

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_c
    :goto_c
    return p1
.end method

.method private j6(Labcd/YD;II)V
    .registers 5

    new-instance v0, Labcd/MH;

    invoke-direct {v0, p1, p2}, Labcd/MH;-><init>(Labcd/YD;I)V

    invoke-virtual {v0}, Labcd/MH;->ro()V

    invoke-virtual {v0, p3}, Labcd/MH;->v5(I)V

    iget-object p1, p0, Labcd/zH;->Zo:Labcd/AE;

    invoke-virtual {p1, v0}, Labcd/AE;->DW(Labcd/AE$a;)Labcd/AE$a;

    move-result-object p1

    if-ne p1, v0, :cond_1e

    iget-object p1, p0, Labcd/zH;->VH:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Labcd/zH;->FH:Labcd/LE;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Labcd/LE;->update(I)V

    :cond_1e
    return-void
.end method

.method private j6(Labcd/YD;)[B
    .registers 5

    iget-object v0, p0, Labcd/zH;->u7:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/zH$a;

    if-eqz v0, :cond_d

    iget-object p1, v0, Labcd/zH$a;->EQ:[B

    return-object p1

    :cond_d
    iget-object v0, p0, Labcd/zH;->Hw:Labcd/IE;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Labcd/FE;->DW(I)[B

    move-result-object v0

    iget-object v1, p0, Labcd/zH;->u7:Labcd/AE;

    new-instance v2, Labcd/zH$a;

    invoke-direct {v2, p1, v0}, Labcd/zH$a;-><init>(Labcd/YD;[B)V

    invoke-virtual {v1, v2}, Labcd/AE;->j6(Labcd/AE$a;)V

    return-object v0
.end method


# virtual methods
.method j6(I[BII)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {p1 .. p1}, Labcd/zH;->j6(I)I

    move-result v5

    if-nez v5, :cond_11

    return-void

    :cond_11
    iget-object v6, v0, Labcd/zH;->gn:Labcd/KH;

    invoke-virtual {v6, v4}, Labcd/KH;->j6(I)Z

    move-result v6

    if-nez v6, :cond_1a

    return-void

    :cond_1a
    const/4 v6, 0x0

    if-nez v3, :cond_2c

    iget-object v7, v0, Labcd/zH;->v5:[Labcd/yE;

    array-length v8, v7

    :goto_20
    if-lt v6, v8, :cond_23

    return-void

    :cond_23
    aget-object v1, v7, v6

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v4}, Labcd/zH;->j6(Labcd/YD;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_2c
    invoke-static {v2, v6, v3}, Labcd/zH;->j6([BII)I

    move-result v7

    iget-object v8, v0, Labcd/zH;->v5:[Labcd/yE;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_34
    if-lt v10, v9, :cond_37

    return-void

    :cond_37
    aget-object v11, v8, v10

    if-eq v7, v3, :cond_3e

    sget v12, Labcd/zH;->DW:I

    goto :goto_3f

    :cond_3e
    move v12, v5

    :goto_3f
    iget-object v13, v0, Labcd/zH;->tp:Labcd/UJ;

    invoke-direct {v0, v11}, Labcd/zH;->j6(Labcd/YD;)[B

    move-result-object v11

    invoke-virtual {v13, v11}, Labcd/UJ;->j6([B)V

    move v13, v7

    const/4 v11, 0x0

    :goto_4a
    iget-object v14, v0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v14}, Labcd/UJ;->DW()Z

    move-result v14

    if-eqz v14, :cond_53

    goto :goto_97

    :cond_53
    iget-object v14, v0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v14, v2, v11, v13, v12}, Labcd/TJ;->j6([BIII)I

    move-result v14

    if-gez v14, :cond_61

    iget-object v14, v0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v14}, Labcd/UJ;->J8()Labcd/UJ;

    goto :goto_4a

    :cond_61
    if-lez v14, :cond_64

    goto :goto_97

    :cond_64
    if-ne v13, v3, :cond_89

    iget-object v11, v0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v11}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v11

    invoke-virtual {v11}, Labcd/rE;->FH()I

    move-result v11

    if-ne v11, v1, :cond_97

    iget-object v11, v0, Labcd/zH;->EQ:Labcd/uE;

    iget-object v12, v0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v12}, Labcd/UJ;->u7()[B

    move-result-object v12

    iget-object v13, v0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v13}, Labcd/UJ;->tp()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Labcd/uE;->Hw([BI)V

    iget-object v11, v0, Labcd/zH;->EQ:Labcd/uE;

    invoke-direct {v0, v11, v1, v4}, Labcd/zH;->j6(Labcd/YD;II)V

    goto :goto_97

    :cond_89
    sget-object v11, Labcd/rE;->j6:Labcd/rE;

    iget-object v12, v0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v12}, Labcd/TJ;->VH()I

    move-result v12

    invoke-virtual {v11, v12}, Labcd/rE;->j6(I)Z

    move-result v11

    if-nez v11, :cond_9a

    :cond_97
    :goto_97
    add-int/lit8 v10, v10, 0x1

    goto :goto_34

    :cond_9a
    add-int/lit8 v11, v13, 0x1

    invoke-static {v2, v11, v3}, Labcd/zH;->j6([BII)I

    move-result v13

    if-eq v13, v3, :cond_a5

    sget v12, Labcd/zH;->DW:I

    goto :goto_a6

    :cond_a5
    move v12, v5

    :goto_a6
    iget-object v14, v0, Labcd/zH;->EQ:Labcd/uE;

    iget-object v15, v0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v15}, Labcd/UJ;->u7()[B

    move-result-object v15

    iget-object v6, v0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v6}, Labcd/UJ;->tp()I

    move-result v6

    invoke-virtual {v14, v15, v6}, Labcd/uE;->Hw([BI)V

    iget-object v6, v0, Labcd/zH;->tp:Labcd/UJ;

    iget-object v14, v0, Labcd/zH;->EQ:Labcd/uE;

    invoke-direct {v0, v14}, Labcd/zH;->j6(Labcd/YD;)[B

    move-result-object v14

    invoke-virtual {v6, v14}, Labcd/UJ;->j6([B)V

    const/4 v6, 0x0

    goto :goto_4a
.end method
