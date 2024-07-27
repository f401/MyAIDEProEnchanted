.class public Labcd/Sb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Sb$a;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static final j6:[I
    .annotation runtime Labcd/ru;
        field = -0x23ea3371597b7cddL
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = -0x132b015242791880L
    .end annotation
.end field

.field public final Hw:Labcd/Sb$a;

.field private J0:I
    .annotation runtime Labcd/ru;
        field = -0x2c5cf77bbdce9ebdL
    .end annotation
.end field

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = 0x8658b12fa569321L
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = 0x23d0f029362a6f2cL
    .end annotation
.end field

.field private gn:[I
    .annotation runtime Labcd/ru;
        field = -0x35af34eb18c22ac8L
    .end annotation
.end field

.field private tp:[Z
    .annotation runtime Labcd/ru;
        field = 0x3891509e9604c781L
    .end annotation
.end field

.field private u7:[Z
    .annotation runtime Labcd/ru;
        field = -0xeeef363010f8e88L
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = 0xfc576bedb4fc057L
    .end annotation
.end field

.field private we:I
    .annotation runtime Labcd/ru;
        field = -0x1b89d4341c14c6b8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xeea1a2d9d9dfe85L
    .end annotation

    const-wide v8, -0x29f5c44dfee0ac93L    # -3.0082886609195546E106

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/Sb;

    const-wide v2, -0x156d5d695e65c197L    # -2.337055591122932E205

    const-wide v4, -0x156d5d695e65c197L    # -2.337055591122932E205

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/Sb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29f5c44dfee0ac93L    # -3.0082886609195546E106

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/Sb;->j6:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    nop

    :array_0
    .array-data 4
        0x5
        0xb
        0x11
        0x25
        0x43
        0x83
        0x101
        0x209
        0x407
        0x805
        0x1003
        0x2011
        0x401b
        0x8003
        0x10001
        0x2001d
        0x40003
        0x80015
        0x100007
        0x200011
        0x40000f
        0x800009
        0x100002b
        0x2000023
        0x400000f
        0x800001d
        0x10000003
        0x2000000b
        0x40000003    # 2.0000007f
        0x7ffe7961
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x2d48d20c37ce3417L    # -2.951092349346254E90

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Sb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2d48d20c37ce3417L    # -2.951092349346254E90

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Sb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Sb$a;-><init>(Labcd/Sb;Labcd/Rb;)V

    iput-object v0, p0, Labcd/Sb;->Hw:Labcd/Sb$a;

    const/4 v0, 0x0

    iput v0, p0, Labcd/Sb;->J0:I

    sget-object v0, Labcd/Sb;->j6:[I

    iget v1, p0, Labcd/Sb;->J0:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Sb;->v5:[I

    sget-object v0, Labcd/Sb;->j6:[I

    iget v1, p0, Labcd/Sb;->J0:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Sb;->VH:[I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Sb;->EQ:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Sb;->we:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sb;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 10

    const-wide v6, 0x251c568d5a2988d5L    # 6.387817854628206E-130

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Sb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x251c568d5a2988d5L    # 6.387817854628206E-130

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Labcd/Sb$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Labcd/Sb$a;-><init>(Labcd/Sb;Labcd/Rb;)V

    iput-object v1, p0, Labcd/Sb;->Hw:Labcd/Sb$a;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Sb;->we:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Sb;->EQ:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Sb;->J0:I

    sget-object v1, Labcd/Sb;->j6:[I

    iget v2, p0, Labcd/Sb;->J0:I

    aget v1, v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Sb;->v5:[I

    move v1, v0

    :goto_0
    iget-object v2, p0, Labcd/Sb;->v5:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Labcd/Sb;->v5:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Labcd/Sb;->j6:[I

    iget v2, p0, Labcd/Sb;->J0:I

    aget v1, v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Sb;->VH:[I

    move v1, v0

    :goto_1
    iget-object v2, p0, Labcd/Sb;->VH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Labcd/Sb;->VH:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Labcd/Sb;->j6:[I

    iget v2, p0, Labcd/Sb;->J0:I

    aget v1, v1, v2

    new-array v1, v1, [Z

    iput-object v1, p0, Labcd/Sb;->u7:[Z

    :goto_2
    iget-object v1, p0, Labcd/Sb;->u7:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Labcd/Sb;->u7:[Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sb;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, v4, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method private DW()V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x1e2e94944bf82de9L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x40897b0c21cc800L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v3, p0, Labcd/Sb;->we:I

    iget-object v0, p0, Labcd/Sb;->v5:[I

    array-length v4, v0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    mul-int/lit8 v3, v3, 0x2

    if-le v3, v4, :cond_1

    iget v0, p0, Labcd/Sb;->J0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Sb;->J0:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Sb;->Zo:[I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Sb;->gn:[I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Sb;->tp:[Z

    sget-object v0, Labcd/Sb;->j6:[I

    iget v3, p0, Labcd/Sb;->J0:I

    aget v0, v0, v3

    new-array v3, v0, [I

    sget-object v0, Labcd/Sb;->j6:[I

    iget v4, p0, Labcd/Sb;->J0:I

    aget v0, v0, v4

    new-array v0, v0, [I

    iget-object v4, p0, Labcd/Sb;->u7:[Z

    if-eqz v4, :cond_12

    sget-object v4, Labcd/Sb;->j6:[I

    iget v5, p0, Labcd/Sb;->J0:I

    aget v4, v4, v5

    new-array v6, v4, [Z

    move-object v4, v0

    move-object v5, v3

    :goto_0
    iget-object v0, p0, Labcd/Sb;->u7:[Z

    if-nez v0, :cond_7

    const/4 v2, 0x0

    move v0, v1

    :goto_1
    iget-object v1, p0, Labcd/Sb;->v5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Labcd/Sb;->v5:[I

    aget v3, v1, v0

    if-eqz v3, :cond_11

    const/high16 v1, -0x80000000

    if-eq v3, v1, :cond_11

    const v1, 0x7fffffff

    and-int v7, v3, v1

    array-length v8, v5

    array-length v1, v5

    rem-int v1, v7, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    aget v9, v5, v1

    if-eqz v9, :cond_6

    add-int/lit8 v9, v8, -0x2

    :try_start_1
    rem-int v9, v7, v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v1, v9

    array-length v9, v5

    rem-int/2addr v1, v9

    goto :goto_2

    :cond_1
    iget-object v3, p0, Labcd/Sb;->Zo:[I

    if-eqz v3, :cond_5

    iget-object v3, p0, Labcd/Sb;->Zo:[I

    array-length v3, v3

    iget-object v4, p0, Labcd/Sb;->v5:[I

    array-length v4, v4

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Labcd/Sb;->Zo:[I

    const/4 v4, 0x0

    :goto_3
    array-length v5, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v4, v5, :cond_2

    const/4 v5, 0x0

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    :try_start_2
    iget-object v4, p0, Labcd/Sb;->tp:[Z

    if-eqz v4, :cond_3

    iget-object v6, p0, Labcd/Sb;->tp:[Z

    const/4 v0, 0x0

    :goto_4
    array-length v4, v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-ge v0, v4, :cond_4

    const/4 v4, 0x0

    aput-boolean v4, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    move-object v6, v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Labcd/Sb;->gn:[I

    iget-object v4, p0, Labcd/Sb;->v5:[I

    iput-object v4, p0, Labcd/Sb;->Zo:[I

    iget-object v4, p0, Labcd/Sb;->VH:[I

    iput-object v4, p0, Labcd/Sb;->gn:[I

    iget-object v4, p0, Labcd/Sb;->u7:[Z

    iput-object v4, p0, Labcd/Sb;->tp:[Z

    move-object v4, v0

    move-object v5, v3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Labcd/Sb;->v5:[I

    iput-object v0, p0, Labcd/Sb;->Zo:[I

    iget-object v0, p0, Labcd/Sb;->VH:[I

    iput-object v0, p0, Labcd/Sb;->gn:[I

    iget-object v0, p0, Labcd/Sb;->u7:[Z

    iput-object v0, p0, Labcd/Sb;->tp:[Z

    sget-object v0, Labcd/Sb;->j6:[I

    iget v3, p0, Labcd/Sb;->J0:I

    aget v0, v0, v3

    new-array v3, v0, [I

    sget-object v0, Labcd/Sb;->j6:[I

    iget v4, p0, Labcd/Sb;->J0:I

    aget v0, v0, v4

    new-array v0, v0, [I

    iget-object v4, p0, Labcd/Sb;->u7:[Z

    if-eqz v4, :cond_12

    sget-object v4, Labcd/Sb;->j6:[I

    iget v5, p0, Labcd/Sb;->J0:I

    aget v4, v4, v5

    new-array v6, v4, [Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-object v4, v0

    move-object v5, v3

    goto/16 :goto_0

    :cond_6
    aput v3, v5, v1

    :try_start_4
    iget-object v3, p0, Labcd/Sb;->VH:[I

    aget v3, v3, v0

    aput v3, v4, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    move v0, v2

    :goto_6
    iget-object v2, p0, Labcd/Sb;->v5:[I

    array-length v2, v2

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Labcd/Sb;->v5:[I

    aget v7, v2, v0

    if-eqz v7, :cond_d

    const/high16 v2, -0x80000000

    if-eq v7, v2, :cond_d

    const v2, 0x7fffffff

    and-int v8, v7, v2

    array-length v2, v5

    add-int/lit8 v2, v2, -0x2

    rem-int v2, v8, v2

    add-int/lit8 v9, v2, 0x1

    array-length v2, v5

    rem-int v2, v8, v2

    iget-object v3, p0, Labcd/Sb;->u7:[Z

    aget-boolean v3, v3, v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v3, :cond_d

    :goto_7
    aget v3, v5, v2

    if-eqz v3, :cond_8

    add-int/2addr v2, v9

    :try_start_5
    array-length v3, v5

    rem-int/2addr v2, v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_7

    :cond_8
    aput v7, v5, v2

    :try_start_6
    iget-object v3, p0, Labcd/Sb;->VH:[I

    aget v3, v3, v0

    aput v3, v4, v2

    add-int/lit8 v3, v1, 0x1

    iget-object v1, p0, Labcd/Sb;->v5:[I

    array-length v10, v1

    iget-object v1, p0, Labcd/Sb;->v5:[I

    array-length v1, v1

    rem-int v1, v8, v1

    :goto_8
    iget-object v11, p0, Labcd/Sb;->v5:[I

    aget v11, v11, v1

    if-eqz v11, :cond_c

    iget-object v11, p0, Labcd/Sb;->v5:[I

    aget v11, v11, v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    if-ne v11, v7, :cond_b

    if-eq v1, v0, :cond_b

    :goto_9
    aget v11, v5, v2

    if-eqz v11, :cond_9

    add-int/2addr v2, v9

    :try_start_7
    array-length v11, v5

    rem-int/2addr v2, v11
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_9

    :cond_9
    aput v7, v5, v2

    :try_start_8
    iget-object v11, p0, Labcd/Sb;->VH:[I

    aget v11, v11, v1

    aput v11, v4, v2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v6, :cond_a

    const/4 v11, 0x1

    aput-boolean v11, v6, v2

    :cond_a
    add-int/lit8 v3, v3, 0x1

    :cond_b
    add-int/lit8 v11, v10, -0x2

    :try_start_9
    rem-int v11, v8, v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v1, v11

    iget-object v11, p0, Labcd/Sb;->v5:[I

    array-length v11, v11

    rem-int/2addr v1, v11

    goto :goto_8

    :cond_c
    move v1, v3

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_e
    move v2, v1

    :cond_f
    iput-object v6, p0, Labcd/Sb;->u7:[Z

    iput-object v5, p0, Labcd/Sb;->v5:[I

    iput-object v4, p0, Labcd/Sb;->VH:[I

    iput v2, p0, Labcd/Sb;->EQ:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sb;->FH:Z

    if-eqz v1, :cond_10

    const-wide v2, 0x40897b0c21cc800L

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_10
    throw v0

    :cond_11
    move v1, v2

    goto/16 :goto_5

    :cond_12
    move-object v4, v0

    move-object v5, v3

    goto/16 :goto_0
.end method

.method static synthetic DW(Labcd/Sb;)[I
    .registers 2

    iget-object v0, p0, Labcd/Sb;->v5:[I

    return-object v0
.end method

.method static synthetic FH(Labcd/Sb;)[I
    .registers 2

    iget-object v0, p0, Labcd/Sb;->VH:[I

    return-object v0
.end method

.method static synthetic j6(Labcd/Sb;)[Z
    .registers 2

    iget-object v0, p0, Labcd/Sb;->u7:[Z

    return-object v0
.end method


# virtual methods
.method public DW(I)V
    .registers 10

    const-wide v6, 0x1aad5e33e0a620L

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Sb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x1aad5e33e0a620L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/Sb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/Sb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/Sb;->v5:[I

    aget v0, v0, v1

    :goto_0
    if-eqz v0, :cond_4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Labcd/Sb;->v5:[I

    const/high16 v4, -0x80000000

    aput v4, v0, v1

    iget v0, p0, Labcd/Sb;->we:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Sb;->we:I

    :cond_2
    add-int/lit8 v0, v3, -0x2

    rem-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/Sb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Sb;->v5:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sb;->FH:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public DW(II)V
    .registers 11

    const-wide v2, 0x1fce6b04586d9880L

    const v0, 0x7fffffff

    const/4 v1, 0x1

    :try_start_0
    sget-boolean v4, Labcd/Sb;->DW:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x1fce6b04586d9880L

    invoke-static {v6, v7, p0, v4, v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v6, v0, p1

    iget-object v0, p0, Labcd/Sb;->v5:[I

    array-length v0, v0

    rem-int v5, v6, v0

    iget-object v0, p0, Labcd/Sb;->v5:[I

    array-length v7, v0

    const/4 v0, 0x0

    iget-object v4, p0, Labcd/Sb;->v5:[I

    aget v4, v4, v5

    :goto_0
    if-eqz v4, :cond_5

    if-ne v4, p1, :cond_4

    iget-object v0, p0, Labcd/Sb;->VH:[I

    aget v0, v0, v5

    if-ne v0, p2, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    :cond_4
    add-int/lit8 v4, v7, -0x2

    rem-int v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v5

    iget-object v5, p0, Labcd/Sb;->v5:[I

    array-length v5, v5

    rem-int v5, v4, v5

    iget-object v4, p0, Labcd/Sb;->v5:[I

    aget v4, v4, v5

    goto :goto_0

    :cond_5
    iget-object v1, p0, Labcd/Sb;->v5:[I

    aput p1, v1, v5

    iget-object v1, p0, Labcd/Sb;->VH:[I

    aput p2, v1, v5

    if-eqz v0, :cond_7

    iget-object v0, p0, Labcd/Sb;->u7:[Z

    if-nez v0, :cond_6

    iget-object v0, p0, Labcd/Sb;->v5:[I

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Labcd/Sb;->u7:[Z

    :cond_6
    iget-object v0, p0, Labcd/Sb;->u7:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v5

    :cond_7
    iget v0, p0, Labcd/Sb;->we:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Sb;->we:I

    iget v0, p0, Labcd/Sb;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Sb;->EQ:I

    iget v0, p0, Labcd/Sb;->EQ:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Sb;->v5:[I

    array-length v1, v1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Labcd/Sb;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Sb;->FH:Z

    if-eqz v0, :cond_8

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1
.end method

.method public FH(II)V
    .registers 10

    const-wide v2, 0xf691ee0adb2c580L

    :try_start_0
    sget-boolean v0, Labcd/Sb;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0xf691ee0adb2c580L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Labcd/Sb;->DW(I)V

    invoke-virtual {p0, p1, p2}, Labcd/Sb;->DW(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Sb;->FH:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6()V
    .registers 7

    const-wide v4, -0x26e92051b92fdd30L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Sb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x26e92051b92fdd30L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Sb;->EQ:I

    if-lez v1, :cond_3

    move v1, v0

    :goto_0
    iget-object v2, p0, Labcd/Sb;->v5:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Labcd/Sb;->v5:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Labcd/Sb;->u7:[Z

    if-eqz v1, :cond_2

    :goto_1
    iget-object v1, p0, Labcd/Sb;->u7:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Labcd/Sb;->u7:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Labcd/Sb;->EQ:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Sb;->we:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sb;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v4, -0x5aeaead55c2b4599L    # -4.752342554752193E-130

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Sb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x5aeaead55c2b4599L    # -4.752342554752193E-130

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Sb;->we:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Labcd/Sb;->EQ:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Labcd/Sb;->J0:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v0

    :goto_0
    iget-object v2, p0, Labcd/Sb;->v5:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Labcd/Sb;->v5:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Labcd/Sb;->VH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Labcd/Sb;->VH:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Labcd/Sb;->u7:[Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v1, p0, Labcd/Sb;->u7:[Z

    if-eqz v1, :cond_5

    :goto_3
    iget-object v1, p0, Labcd/Sb;->u7:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Labcd/Sb;->u7:[Z

    aget-boolean v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sb;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    return-void
.end method

.method public j6(I)Z
    .registers 8

    const-wide v4, 0xca81708042b7f9fL

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Sb;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0xca81708042b7f9fL

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v2, v0, p1

    iget-object v0, p0, Labcd/Sb;->v5:[I

    array-length v3, v0

    iget-object v0, p0, Labcd/Sb;->v5:[I

    array-length v0, v0

    rem-int v1, v2, v0

    iget-object v0, p0, Labcd/Sb;->v5:[I

    aget v0, v0, v1

    :goto_0
    if-eq v0, p1, :cond_3

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v0, v3, -0x2

    rem-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/Sb;->v5:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Sb;->v5:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sb;->FH:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public j6(II)Z
    .registers 11

    const-wide v2, 0x14429e560016bbdcL    # 4.424434109124435E-211

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Sb;->DW:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x14429e560016bbdcL    # 4.424434109124435E-211

    invoke-static {v6, v7, p0, v1, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    and-int v4, v0, p1

    iget-object v0, p0, Labcd/Sb;->v5:[I

    array-length v0, v0

    rem-int v0, v4, v0

    iget-object v1, p0, Labcd/Sb;->v5:[I

    array-length v5, v1

    iget-object v1, p0, Labcd/Sb;->v5:[I

    aget v1, v1, v0

    :goto_0
    if-ne v1, p1, :cond_2

    iget-object v6, p0, Labcd/Sb;->VH:[I

    aget v6, v6, v0

    if-eq v6, p2, :cond_3

    :cond_2
    if-nez v1, :cond_4

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v5, -0x2

    rem-int v1, v4, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/Sb;->v5:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Labcd/Sb;->v5:[I

    aget v1, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Sb;->FH:Z

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const-wide v6, 0x1a296f80464704b3L

    :try_start_0
    sget-boolean v0, Labcd/Sb;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1a296f80464704b3L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "{"

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Labcd/Sb;->v5:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Labcd/Sb;->v5:[I

    aget v2, v2, v1

    if-eqz v2, :cond_1

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Labcd/Sb;->VH:[I

    aget v3, v3, v1

    const v4, 0x7fffffff

    if-ne v2, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0->"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sb;->FH:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method
