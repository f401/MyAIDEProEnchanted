.class public Labcd/Ed;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/oa;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Ed$a;,
        Labcd/Ed$a$a;
    }
.end annotation


# static fields
.field private static DW:[B
    .annotation runtime Labcd/ru;
        field = 0x2a34cc7dd154a51dL
    .end annotation
.end field

.field private static FH:I
    .annotation runtime Labcd/ru;
        field = 0x13f146c8b7fbff8dL
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static j6:Ljava/util/zip/CRC32;
    .annotation runtime Labcd/ru;
        field = 0x1f02915ef1a4d39fL
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private final EQ:Labcd/Hd;
    .annotation runtime Labcd/ru;
        field = -0x2d974430ca7c31f3L
    .end annotation
.end field

.field private final J0:Labcd/yd;
    .annotation runtime Labcd/ru;
        field = 0x1b9e3dc7d48e7f00L
    .end annotation
.end field

.field private J8:Ljava/util/Stack;
    .annotation runtime Labcd/ru;
        field = 0x258b2cbf10dd74cdL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Labcd/Ed$a;",
            ">;"
        }
    .end annotation
.end field

.field private final VH:Labcd/dd;
    .annotation runtime Labcd/ru;
        field = 0x38754319e8d2e824L
    .end annotation
.end field

.field private final Zo:Labcd/La;
    .annotation runtime Labcd/ru;
        field = 0x2542dada841ca5edL
    .end annotation
.end field

.field private final gn:Labcd/Ea;
    .annotation runtime Labcd/ru;
        field = 0x173101d38408aa80L
    .end annotation
.end field

.field private final tp:Labcd/Va;
    .annotation runtime Labcd/ru;
        field = 0x29a666ef4661318bL
    .end annotation
.end field

.field private final u7:Labcd/Ga;
    .annotation runtime Labcd/ru;
        field = -0x39b82582176a0560L
    .end annotation
.end field

.field private final we:Labcd/Ba;
    .annotation runtime Labcd/ru;
        field = 0x28ed5741d33ad060L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xe9b0a97a62f9780L
    .end annotation

    const-wide v8, 0xbaffe8edc6a27e0L

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/Ed;

    const-wide v2, -0x9ef4feba912100L    # -3.739997899167933E305

    const-wide v4, -0x9ef4feba912100L    # -3.739997899167933E305

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xbaffe8edc6a27e0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Labcd/Ed;->j6:Ljava/util/zip/CRC32;

    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Labcd/Ed;->DW:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/La;Labcd/yd;)V
    .registers 10

    const-wide v2, 0xca1ea302a7c7d1L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xca1ea302a7c7d1L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Labcd/Ed;->J8:Ljava/util/Stack;

    iput-object p1, p0, Labcd/Ed;->Zo:Labcd/La;

    iget-object v0, p1, Labcd/La;->a8:Labcd/Ba;

    iput-object v0, p0, Labcd/Ed;->we:Labcd/Ba;

    iget-object v0, p1, Labcd/La;->Mr:Labcd/Ea;

    iput-object v0, p0, Labcd/Ed;->gn:Labcd/Ea;

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    iput-object v0, p0, Labcd/Ed;->u7:Labcd/Ga;

    iget-object v0, p1, Labcd/La;->U2:Labcd/Va;

    iput-object v0, p0, Labcd/Ed;->tp:Labcd/Va;

    invoke-virtual {p2}, Labcd/yd;->FH()Labcd/Hd;

    move-result-object v0

    iput-object v0, p0, Labcd/Ed;->EQ:Labcd/Hd;

    invoke-virtual {p2}, Labcd/yd;->Hw()Labcd/dd;

    move-result-object v0

    iput-object v0, p0, Labcd/Ed;->VH:Labcd/dd;

    iput-object p2, p0, Labcd/Ed;->J0:Labcd/yd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ed;->v5:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static DW()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x254640fc5390986dL
    .end annotation

    const-wide v6, 0xbb4e59c22b1fbacL

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xbb4e59c22b1fbacL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/Ed;->j6:Ljava/util/zip/CRC32;

    sget-object v1, Labcd/Ed;->DW:[B

    const/4 v2, 0x0

    sget v3, Labcd/Ed;->FH:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    const/4 v0, 0x0

    sput v0, Labcd/Ed;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3b6305aadc0dd7dL
    .end annotation

    const-wide v2, -0x1a8713c9edf0dcb0L    # -6.463570742515529E180

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ed;->Hw:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x1a8713c9edf0dcb0L    # -6.463570742515529E180

    invoke-static {v4, v5, p0, p1, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v4, 0x78

    if-eq v1, v4, :cond_4

    const/16 v4, 0x79

    if-eq v1, v4, :cond_4

    const/16 v4, 0x85

    if-eq v1, v4, :cond_5

    const/16 v4, 0xe0

    if-eq v1, v4, :cond_3

    const/16 v4, 0xdc

    if-eq v1, v4, :cond_4

    const/16 v4, 0xdd

    if-eq v1, v4, :cond_4

    const/16 v4, 0xe3

    if-eq v1, v4, :cond_4

    const/16 v4, 0xe4

    if-eq v1, v4, :cond_4

    const/16 v4, 0xf5

    if-eq v1, v4, :cond_1

    const/16 v4, 0xf6

    if-eq v1, v4, :cond_1

    :goto_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_5

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-direct {p0, p1, v4}, Labcd/Ed;->DW(Labcd/Sa;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2}, Labcd/Ed;->FH(Labcd/Sa;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ed;->v5:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2}, Labcd/Ed;->FH(Labcd/Sa;I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x5

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v1

    invoke-static {v1}, Labcd/Ed;->j6(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    return-void
.end method

.method private FH()J
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1dc50ca65268b57bL
    .end annotation

    const-wide v2, -0x1e217d42ccfaf380L    # -2.7453001329283533E163

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e217d42ccfaf380L    # -2.7453001329283533E163

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Labcd/Ed;->DW()V

    sget-object v0, Labcd/Ed;->j6:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private FH(Labcd/Sa;I)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xd9a47332eb08550L
    .end annotation

    const-wide v2, 0x2548d870b6f0f80bL

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ed;->Hw:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x2548d870b6f0f80bL

    invoke-static {v4, v5, p0, p1, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    invoke-static {v1}, Labcd/Ed;->j6(I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v1

    invoke-static {v1}, Labcd/Ed;->j6(I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-direct {p0, p1, v4}, Labcd/Ed;->FH(Labcd/Sa;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1, p2}, Labcd/Sa;->a8(I)I

    move-result v5

    invoke-virtual {p1, p2}, Labcd/Sa;->U2(I)I

    move-result v6

    invoke-virtual {p1, p2}, Labcd/Sa;->Mr(I)[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move v1, v0

    move v4, v0

    :goto_2
    if-ge v4, v6, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    aget-char v8, v7, v5

    add-int/2addr v1, v8

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-static {v1}, Labcd/Ed;->j6(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ed;->v5:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :pswitch_1
    :try_start_2
    invoke-virtual {p1, p2}, Labcd/Sa;->XL(I)I

    move-result v1

    invoke-static {v1}, Labcd/Ed;->j6(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private Hw()Labcd/Ed$a;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x12d2cad9714ae485L
    .end annotation

    const-wide v2, -0x23c11a16f69867c0L    # -2.2457926217053727E136

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x23c11a16f69867c0L    # -2.2457926217053727E136

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ed;->J8:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Labcd/Ed$a;

    iget-object v1, p0, Labcd/Ed;->we:Labcd/Ba;

    invoke-direct {v0, p0, v1}, Labcd/Ed$a;-><init>(Labcd/Ed;Labcd/Ba;)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Labcd/Ed;->J8:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Ed$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private Hw(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x39321f2996c44afbL
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ed;->Hw:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0xefcfac19212b610L    # -2.41906854272199E236

    invoke-static {v2, v3, p0, p1, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v3

    invoke-direct {p0, p1, v3}, Labcd/Ed;->Hw(Labcd/Sa;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v2, 0x78

    if-eq v1, v2, :cond_b

    const/16 v2, 0x79

    if-eq v1, v2, :cond_b

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_a

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_9

    const/16 v2, 0xb1

    if-eq v1, v2, :cond_8

    const/16 v0, 0xc2

    if-eq v1, v0, :cond_7

    const/16 v0, 0xd0

    if-eq v1, v0, :cond_6

    const/16 v0, 0xd5

    if-eq v1, v0, :cond_5

    const/16 v0, 0xd6

    if-eq v1, v0, :cond_5

    const/16 v0, 0xf5

    if-eq v1, v0, :cond_4

    const/16 v0, 0xf6

    if-eq v1, v0, :cond_4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Labcd/Ed;->j6(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ed;->v5:Z

    if-eqz v0, :cond_3

    const-wide v2, -0xefcfac19212b610L    # -2.41906854272199E236

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Labcd/Ed;->FH(Labcd/Sa;I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Labcd/Ed;->FH(Labcd/Sa;I)V

    goto :goto_1

    :cond_5
    :pswitch_2
    invoke-direct {p0, p1, p2}, Labcd/Ed;->FH(Labcd/Sa;I)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1, p2}, Labcd/Ed;->FH(Labcd/Sa;I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v0

    invoke-static {v0}, Labcd/Ed;->j6(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v0

    invoke-static {v0}, Labcd/Ed;->j6(I)V

    goto :goto_1

    :cond_8
    :goto_2
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x5

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x6

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v0

    invoke-static {v0}, Labcd/Ed;->j6(I)V

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v0

    invoke-static {v0}, Labcd/Ed;->j6(I)V

    goto/16 :goto_1

    :cond_b
    :pswitch_3
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v0, 0x5

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->FH(Labcd/Sa;I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v0

    invoke-static {v0}, Labcd/Ed;->j6(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xdc
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static j6(I)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x315c68fcd0767101L
    .end annotation

    const-wide v4, -0x13e6c3721f2fb950L    # -5.309905180079712E212

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x13e6c3721f2fb950L    # -5.309905180079712E212

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    sget v0, Labcd/Ed;->FH:I

    add-int/lit8 v0, v0, 0x4

    sget-object v1, Labcd/Ed;->DW:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    invoke-static {}, Labcd/Ed;->DW()V

    :cond_1
    sget-object v0, Labcd/Ed;->DW:[B

    sget v1, Labcd/Ed;->FH:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Labcd/Ed;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_1
    sget-object v0, Labcd/Ed;->DW:[B

    sget v1, Labcd/Ed;->FH:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Labcd/Ed;->FH:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_2
    sget-object v0, Labcd/Ed;->DW:[B

    sget v1, Labcd/Ed;->FH:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Labcd/Ed;->FH:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :try_start_3
    sget-object v0, Labcd/Ed;->DW:[B

    sget v1, Labcd/Ed;->FH:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Labcd/Ed;->FH:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(Labcd/Ed$a;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xc7a56d9e0c54d94L
    .end annotation

    const-wide v2, 0x26031b997fb359b3L

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x26031b997fb359b3L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ed;->J8:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Labcd/Sa;I)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x496d5eee74cd7d0L
    .end annotation

    const-wide v2, -0x9e02f542ef34021L    # -9.783400926119372E260

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ed;->Hw:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x9e02f542ef34021L    # -9.783400926119372E260

    invoke-static {v4, v5, p0, p1, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->er(I)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->er(I)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->er(I)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v4, 0x79

    if-eq v1, v4, :cond_1

    const/16 v4, 0xe4

    if-eq v1, v4, :cond_1

    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v5

    invoke-virtual {p1, v5}, Labcd/Sa;->P8(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/16 v6, 0x5e

    if-ne v5, v6, :cond_2

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ed;->v5:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private static v5()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x27be063247916125L
    .end annotation

    const-wide v4, -0x343be310f53af620L    # -9.86339753059372E56

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x343be310f53af620L    # -9.86339753059372E56

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/Ed;->j6:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private v5(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x92b3556398fc0a8L
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ed;->Hw:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x3cc71df7ca6faa7bL    # -7.003924327323013E15

    invoke-static {v2, v3, p0, p1, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v2, 0x78

    if-eq v1, v2, :cond_9

    const/16 v2, 0x79

    if-eq v1, v2, :cond_9

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_8

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_7

    const/16 v2, 0x7e

    if-eq v1, v2, :cond_6

    const/16 v2, 0x85

    if-eq v1, v2, :cond_a

    const/16 v2, 0xd5

    if-eq v1, v2, :cond_5

    const/16 v2, 0xd6

    if-eq v1, v2, :cond_5

    const/16 v2, 0xdc

    if-eq v1, v2, :cond_9

    const/16 v2, 0xdd

    if-eq v1, v2, :cond_4

    const/16 v2, 0xf5

    if-eq v1, v2, :cond_2

    const/16 v2, 0xf6

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_a

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-direct {p0, p1, v2}, Labcd/Ed;->v5(Labcd/Sa;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2}, Labcd/Ed;->FH(Labcd/Sa;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ed;->v5:Z

    if-eqz v0, :cond_3

    const-wide v2, -0x3cc71df7ca6faa7bL    # -7.003924327323013E15

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    :pswitch_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->j6(Labcd/Sa;I)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x5

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v1

    invoke-static {v1}, Labcd/Ed;->j6(I)V

    goto :goto_0

    :cond_5
    :pswitch_1
    invoke-direct {p0, p1, p2}, Labcd/Ed;->FH(Labcd/Sa;I)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->j6(Labcd/Sa;I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Labcd/Ed;->FH(Labcd/Sa;I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v1

    invoke-static {v1}, Labcd/Ed;->j6(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->j6(Labcd/Sa;I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x5

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x6

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x7

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v1

    invoke-static {v1}, Labcd/Ed;->j6(I)V

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->j6(Labcd/Sa;I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v1

    invoke-static {v1}, Labcd/Ed;->j6(I)V

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    const/4 v1, 0x5

    invoke-virtual {p1, p2, v1}, Labcd/Sa;->Zo(II)I

    move-result v1

    invoke-direct {p0, p1, v1}, Labcd/Ed;->FH(Labcd/Sa;I)V

    invoke-virtual {p1, p2}, Labcd/Sa;->J8(I)I

    move-result v1

    invoke-static {v1}, Labcd/Ed;->j6(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0xe0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public DW(Labcd/Sa;)J
    .registers 6

    const-wide v2, -0x5adcdbe3757cfb4bL    # -8.629345817240078E-130

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5adcdbe3757cfb4bL    # -8.629345817240078E-130

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Labcd/Ed;->v5()V

    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->Hw(Labcd/Sa;I)V

    invoke-direct {p0}, Labcd/Ed;->FH()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Labcd/Da;)V
    .registers 8

    const-wide v4, -0x1836b518b939b5d9L    # -9.015308342101408E191

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1836b518b939b5d9L    # -9.015308342101408E191

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ed;->tp:Labcd/Va;

    iget-object v1, p0, Labcd/Ed;->J0:Labcd/yd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->j6(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-direct {p0}, Labcd/Ed;->Hw()Labcd/Ed$a;

    move-result-object v1

    iget-object v2, p0, Labcd/Ed;->we:Labcd/Ba;

    iget-object v3, p0, Labcd/Ed;->EQ:Labcd/Hd;

    invoke-virtual {v1, v2, v3, v0}, Labcd/Ed$a;->j6(Labcd/Ba;Labcd/Hd;Labcd/Sa;)V

    invoke-direct {p0, v1}, Labcd/Ed;->j6(Labcd/Ed$a;)V

    iget-object v1, p0, Labcd/Ed;->tp:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Labcd/ua;)V
    .registers 8

    const-wide v4, 0x409448df633bce6dL    # 1298.2181519837134

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x409448df633bce6dL    # 1298.2181519837134

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ed;->we:Labcd/Ba;

    invoke-virtual {v0, p1}, Labcd/Ba;->DW(Labcd/ua;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Labcd/Ed;->EQ:Labcd/Hd;

    invoke-virtual {p1}, Labcd/ua;->Zo()Labcd/Da;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Hd;->P8(Labcd/Da;)Labcd/ua;

    move-result-object v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Labcd/Ed;->we:Labcd/Ba;

    iget-object v1, p0, Labcd/Ed;->EQ:Labcd/Hd;

    invoke-virtual {p1}, Labcd/ua;->Zo()Labcd/Da;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Hd;->P8(Labcd/Da;)Labcd/ua;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Labcd/Ba;->j6(Labcd/ua;Labcd/ua;)V
    :try_end_1
    .catch Labcd/jc; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Labcd/Ed;->we:Labcd/Ba;

    invoke-virtual {v0, p1}, Labcd/Ba;->FH(Labcd/ua;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public FH(Labcd/Da;)V
    .registers 8

    const-wide v4, -0x31dd34aa59136570L    # -2.5334633521308646E68

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x31dd34aa59136570L    # -2.5334633521308646E68

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ed;->tp:Labcd/Va;

    iget-object v1, p0, Labcd/Ed;->J0:Labcd/yd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-direct {p0}, Labcd/Ed;->Hw()Labcd/Ed$a;

    move-result-object v1

    iget-object v2, p0, Labcd/Ed;->we:Labcd/Ba;

    invoke-virtual {v1, v2, v0}, Labcd/Ed$a;->j6(Labcd/Ba;Labcd/Sa;)V

    invoke-direct {p0, v1}, Labcd/Ed;->j6(Labcd/Ed$a;)V

    iget-object v1, p0, Labcd/Ed;->tp:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Labcd/Sa;)V
    .registers 6

    const-wide v2, 0x407f0e11df2a2280L    # 496.8793632169618

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x407f0e11df2a2280L    # 496.8793632169618

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Labcd/ua;)V
    .registers 8

    const-wide v4, -0x97d61ae68cba638L    # -7.328403036703504E262

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x97d61ae68cba638L    # -7.328403036703504E262

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ed;->tp:Labcd/Va;

    invoke-virtual {p1}, Labcd/ua;->Zo()Labcd/Da;

    move-result-object v1

    iget-object v2, p0, Labcd/Ed;->J0:Labcd/yd;

    invoke-virtual {v0, v1, v2}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-direct {p0}, Labcd/Ed;->Hw()Labcd/Ed$a;

    move-result-object v1

    iget-object v2, p0, Labcd/Ed;->we:Labcd/Ba;

    iget-object v3, p0, Labcd/Ed;->EQ:Labcd/Hd;

    invoke-virtual {v1, v2, v3, p1, v0}, Labcd/Ed$a;->FH(Labcd/Ba;Labcd/Hd;Labcd/ua;Labcd/Sa;)V

    invoke-direct {p0, v1}, Labcd/Ed;->j6(Labcd/Ed$a;)V

    iget-object v1, p0, Labcd/Ed;->tp:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Labcd/Sa;)J
    .registers 6

    const-wide v2, 0x5327d03d304b51L

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5327d03d304b51L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Labcd/Ed;->v5()V

    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->DW(Labcd/Sa;I)V

    invoke-direct {p0}, Labcd/Ed;->FH()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Labcd/Da;)V
    .registers 6

    const-wide v2, -0x86f02621fb101ccL    # -8.765711659320924E267

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x86f02621fb101ccL    # -8.765711659320924E267

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ed;->we:Labcd/Ba;

    iget-object v1, p0, Labcd/Ed;->J0:Labcd/yd;

    invoke-virtual {v0, p1, v1}, Labcd/Ba;->j6(Labcd/Da;Labcd/na;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Labcd/Ed;->DW(Labcd/Da;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Hw(Labcd/ua;)V
    .registers 8

    const-wide v4, -0x409a103c0788d999L    # -0.002677805666938582

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x409a103c0788d999L    # -0.002677805666938582

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ed;->tp:Labcd/Va;

    invoke-virtual {p1}, Labcd/ua;->Zo()Labcd/Da;

    move-result-object v1

    iget-object v2, p0, Labcd/Ed;->J0:Labcd/yd;

    invoke-virtual {v0, v1, v2}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-direct {p0}, Labcd/Ed;->Hw()Labcd/Ed$a;

    move-result-object v1

    iget-object v2, p0, Labcd/Ed;->we:Labcd/Ba;

    iget-object v3, p0, Labcd/Ed;->EQ:Labcd/Hd;

    invoke-virtual {v1, v2, v3, p1, v0}, Labcd/Ed$a;->j6(Labcd/Ba;Labcd/Hd;Labcd/ua;Labcd/Sa;)V

    invoke-direct {p0, v1}, Labcd/Ed;->j6(Labcd/Ed$a;)V

    iget-object v1, p0, Labcd/Ed;->tp:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Sa;)J
    .registers 6

    const-wide v2, -0x753f783cd1eae803L    # -6.880737972994312E-257

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x753f783cd1eae803L    # -6.880737972994312E-257

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2e94c9f0403df7d0L
    .end annotation

    const-wide v2, 0x1ac37590bb5909cdL    # 9.379041654094587E-180

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ac37590bb5909cdL    # 9.379041654094587E-180

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Labcd/Ed;->J8:Ljava/util/Stack;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Da;)V
    .registers 8

    const-wide v4, 0x9e979a7f935067bL

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9e979a7f935067bL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ed;->tp:Labcd/Va;

    iget-object v1, p0, Labcd/Ed;->J0:Labcd/yd;

    invoke-virtual {v0, p1, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-direct {p0}, Labcd/Ed;->Hw()Labcd/Ed$a;

    move-result-object v1

    iget-object v2, p0, Labcd/Ed;->we:Labcd/Ba;

    iget-object v3, p0, Labcd/Ed;->EQ:Labcd/Hd;

    invoke-virtual {v1, v2, v3, v0}, Labcd/Ed$a;->DW(Labcd/Ba;Labcd/Hd;Labcd/Sa;)V

    invoke-direct {p0, v1}, Labcd/Ed;->j6(Labcd/Ed$a;)V

    iget-object v1, p0, Labcd/Ed;->tp:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Ia;)V
    .registers 6

    const-wide v2, 0x1c0525d7445c7ff4L

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c0525d7445c7ff4L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ed;->VH:Labcd/dd;

    invoke-virtual {v0, p1}, Labcd/dd;->j6(Labcd/Ia;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/ua;)V
    .registers 8

    const-wide v4, -0x4b92feee4d648830L    # -3.696505491600332E-56

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4b92feee4d648830L    # -3.696505491600332E-56

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ed;->tp:Labcd/Va;

    invoke-virtual {p1}, Labcd/ua;->Zo()Labcd/Da;

    move-result-object v1

    iget-object v2, p0, Labcd/Ed;->J0:Labcd/yd;

    invoke-virtual {v0, v1, v2}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-direct {p0}, Labcd/Ed;->Hw()Labcd/Ed$a;

    move-result-object v1

    iget-object v2, p0, Labcd/Ed;->we:Labcd/Ba;

    iget-object v3, p0, Labcd/Ed;->EQ:Labcd/Hd;

    invoke-virtual {v1, v2, v3, p1, v0}, Labcd/Ed$a;->DW(Labcd/Ba;Labcd/Hd;Labcd/ua;Labcd/Sa;)V

    invoke-direct {p0, v1}, Labcd/Ed;->j6(Labcd/Ed$a;)V

    iget-object v1, p0, Labcd/Ed;->tp:Labcd/Va;

    invoke-virtual {v1, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5(Labcd/Sa;)J
    .registers 6

    const-wide v2, 0x1d40c54fc72f599cL

    :try_start_0
    sget-boolean v0, Labcd/Ed;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1d40c54fc72f599cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Labcd/Ed;->v5()V

    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/Ed;->v5(Labcd/Sa;I)V

    invoke-direct {p0}, Labcd/Ed;->FH()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ed;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
