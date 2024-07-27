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
            "Ljava/util/List",
            "<",
            "Labcd/MH;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Labcd/AE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LAE",
            "<",
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
            "LAE",
            "<",
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Set",
            "<",
            "Labcd/mG;",
            ">;",
            "LAE",
            "<",
            "Labcd/MH;",
            ">;",
            "Ljava/util/List",
            "<",
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

    move-result v0

    new-array v0, v0, [Labcd/yE;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/yE;

    iput-object v0, p0, Labcd/zH;->v5:[Labcd/yE;

    iput-object p3, p0, Labcd/zH;->Zo:Labcd/AE;

    iput-object p4, p0, Labcd/zH;->VH:Ljava/util/List;

    new-instance v0, Labcd/KH;

    invoke-direct {v0}, Labcd/KH;-><init>()V

    iput-object v0, p0, Labcd/zH;->gn:Labcd/KH;

    new-instance v0, Labcd/AE;

    invoke-direct {v0}, Labcd/AE;-><init>()V

    iput-object v0, p0, Labcd/zH;->u7:Labcd/AE;

    new-instance v0, Labcd/UJ;

    invoke-direct {v0}, Labcd/UJ;-><init>()V

    iput-object v0, p0, Labcd/zH;->tp:Labcd/UJ;

    new-instance v0, Labcd/uE;

    invoke-direct {v0}, Labcd/uE;-><init>()V

    iput-object v0, p0, Labcd/zH;->EQ:Labcd/uE;

    return-void
.end method

.method private static j6(I)I
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget v0, Labcd/zH;->j6:I

    goto :goto_0

    :cond_1
    sget v0, Labcd/zH;->DW:I

    goto :goto_0
.end method

.method private static j6([BII)I
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_0

    aget-byte v0, p0, p1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private j6(Labcd/YD;II)V
    .registers 6

    new-instance v0, Labcd/MH;

    invoke-direct {v0, p1, p2}, Labcd/MH;-><init>(Labcd/YD;I)V

    invoke-virtual {v0}, Labcd/MH;->ro()V

    invoke-virtual {v0, p3}, Labcd/MH;->v5(I)V

    iget-object v1, p0, Labcd/zH;->Zo:Labcd/AE;

    invoke-virtual {v1, v0}, Labcd/AE;->DW(Labcd/AE$a;)Labcd/AE$a;

    move-result-object v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Labcd/zH;->VH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/zH;->FH:Labcd/LE;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Labcd/LE;->update(I)V

    :cond_0
    return-void
.end method

.method private j6(Labcd/YD;)[B
    .registers 5

    iget-object v0, p0, Labcd/zH;->u7:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/zH$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Labcd/zH$a;->EQ:[B

    :goto_0
    return-object v0

    :cond_0
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

    goto :goto_0
.end method


# virtual methods
.method j6(I[BII)V
    .registers 16

    invoke-static {p1}, Labcd/zH;->j6(I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/zH;->gn:Labcd/KH;

    invoke-virtual {v0, p4}, Labcd/KH;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    if-nez p3, :cond_2

    iget-object v1, p0, Labcd/zH;->v5:[Labcd/yE;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4, p4}, Labcd/zH;->j6(Labcd/YD;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {p2, v0, p3}, Labcd/zH;->j6([BII)I

    move-result v4

    iget-object v7, p0, Labcd/zH;->v5:[Labcd/yE;

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v2, v7, v6

    if-eq v4, p3, :cond_4

    sget v0, Labcd/zH;->DW:I

    :goto_2
    iget-object v3, p0, Labcd/zH;->tp:Labcd/UJ;

    invoke-direct {p0, v2}, Labcd/zH;->j6(Labcd/YD;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Labcd/UJ;->j6([B)V

    const/4 v2, 0x0

    move v3, v4

    move v5, v0

    :goto_3
    iget-object v0, p0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v0}, Labcd/UJ;->DW()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    :goto_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v0, p2, v2, v3, v5}, Labcd/TJ;->j6([BIII)I

    move-result v0

    if-gez v0, :cond_6

    iget-object v0, p0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v0}, Labcd/UJ;->J8()Labcd/UJ;

    goto :goto_3

    :cond_6
    if-gtz v0, :cond_3

    if-ne v3, p3, :cond_7

    iget-object v0, p0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v0}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/rE;->FH()I

    move-result v0

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Labcd/zH;->EQ:Labcd/uE;

    iget-object v2, p0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v2}, Labcd/UJ;->u7()[B

    move-result-object v2

    iget-object v3, p0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v3}, Labcd/UJ;->tp()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Labcd/uE;->Hw([BI)V

    iget-object v0, p0, Labcd/zH;->EQ:Labcd/uE;

    invoke-direct {p0, v0, p1, p4}, Labcd/zH;->j6(Labcd/YD;II)V

    goto :goto_4

    :cond_7
    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    iget-object v2, p0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v2}, Labcd/TJ;->VH()I

    move-result v2

    invoke-virtual {v0, v2}, Labcd/rE;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, v3, 0x1

    invoke-static {p2, v0, p3}, Labcd/zH;->j6([BII)I

    move-result v3

    if-eq v3, p3, :cond_8

    sget v5, Labcd/zH;->DW:I

    :goto_5
    iget-object v2, p0, Labcd/zH;->EQ:Labcd/uE;

    iget-object v9, p0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v9}, Labcd/UJ;->u7()[B

    move-result-object v9

    iget-object v10, p0, Labcd/zH;->tp:Labcd/UJ;

    invoke-virtual {v10}, Labcd/UJ;->tp()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Labcd/uE;->Hw([BI)V

    iget-object v2, p0, Labcd/zH;->tp:Labcd/UJ;

    iget-object v9, p0, Labcd/zH;->EQ:Labcd/uE;

    invoke-direct {p0, v9}, Labcd/zH;->j6(Labcd/YD;)[B

    move-result-object v9

    invoke-virtual {v2, v9}, Labcd/UJ;->j6([B)V

    move v2, v0

    goto :goto_3

    :cond_8
    move v5, v1

    goto :goto_5
.end method
