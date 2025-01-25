.class public Labcd/Ob;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Ob$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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
        field = 0xcfe8f9313d52828L
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = 0x8dc4b7b22e2c930L
    .end annotation
.end field

.field public final Hw:Labcd/Ob$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOb<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field private VH:[Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = 0x19451bc0d50120e8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = -0x5de9181afd43077L
    .end annotation
.end field

.field private gn:[Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = 0x1ae2ee296c1b5637L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x16f1df16d5c4275bL
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0x1ff5b380ac6f0095L
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = 0x34ed3eaf0a9f654L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1b4093868c56e828L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x2293ec7497f5af60L  # 4.08461424864347E-142

    :try_start_6
    const-class v3, Labcd/Ob;

    const-wide v4, 0x44ef31141fe3cf2cL  # 1.178389612453238E24

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/Ob;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    sput-object v3, Labcd/Ob;->j6:[I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/Ob;->FH:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v3

    :array_2a
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
        0x40000003  # 2.0000007f
        0x7ffe7961
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v0, -0x258c1eca191bab49L  # -5.382804821446296E127

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Ob;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Ob$a;

    invoke-direct {v3, p0, v2}, Labcd/Ob$a;-><init>(Labcd/Ob;Labcd/Nb;)V

    iput-object v3, p0, Labcd/Ob;->Hw:Labcd/Ob$a;

    const/4 v3, 0x0

    iput v3, p0, Labcd/Ob;->EQ:I

    sget-object v4, Labcd/Ob;->j6:[I

    aget v4, v4, v3

    new-array v5, v4, [I

    iput-object v5, p0, Labcd/Ob;->v5:[I

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Labcd/Ob;->VH:[Ljava/lang/Object;

    iput v3, p0, Labcd/Ob;->u7:I

    iput v3, p0, Labcd/Ob;->tp:I
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v3

    sget-boolean v4, Labcd/Ob;->FH:Z

    if-eqz v4, :cond_33

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v3
.end method

.method private DW()V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x3eaf74d71b379a0L
    .end annotation

    const-wide v0, 0x274eb7c24ce9ace7L

    :try_start_5
    sget-boolean v2, Labcd/Ob;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Ob;->tp:I

    iget-object v3, p0, Labcd/Ob;->v5:[I

    array-length v4, v3

    mul-int/lit8 v2, v2, 0x2

    const/4 v5, 0x0

    if-le v2, v4, :cond_2a

    iget v2, p0, Labcd/Ob;->EQ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Ob;->EQ:I

    const/4 v3, 0x0

    iput-object v3, p0, Labcd/Ob;->Zo:[I

    iput-object v3, p0, Labcd/Ob;->gn:[Ljava/lang/Object;

    sget-object v3, Labcd/Ob;->j6:[I

    aget v2, v3, v2

    new-array v3, v2, [I

    :goto_27
    new-array v2, v2, [Ljava/lang/Object;

    goto :goto_58

    :cond_2a
    iget-object v2, p0, Labcd/Ob;->Zo:[I

    if-eqz v2, :cond_49

    array-length v4, v2

    array-length v6, v3

    if-ne v4, v6, :cond_49

    const/4 v3, 0x0

    :goto_33
    array-length v4, v2
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_90

    if-ge v3, v4, :cond_3b

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_3b
    :try_start_3b
    iget-object v3, p0, Labcd/Ob;->gn:[Ljava/lang/Object;

    iget-object v4, p0, Labcd/Ob;->v5:[I

    iput-object v4, p0, Labcd/Ob;->Zo:[I

    iget-object v4, p0, Labcd/Ob;->VH:[Ljava/lang/Object;

    iput-object v4, p0, Labcd/Ob;->gn:[Ljava/lang/Object;

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_58

    :cond_49
    iput-object v3, p0, Labcd/Ob;->Zo:[I

    iget-object v2, p0, Labcd/Ob;->VH:[Ljava/lang/Object;

    iput-object v2, p0, Labcd/Ob;->gn:[Ljava/lang/Object;

    sget-object v2, Labcd/Ob;->j6:[I

    iget v3, p0, Labcd/Ob;->EQ:I

    aget v2, v2, v3

    new-array v3, v2, [I

    goto :goto_27

    :goto_58
    const/4 v4, 0x0

    :goto_59
    iget-object v6, p0, Labcd/Ob;->v5:[I

    array-length v7, v6

    if-ge v5, v7, :cond_89

    aget v6, v6, v5

    if-eqz v6, :cond_86

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_86

    const v7, 0x7fffffff

    and-int/2addr v7, v6

    array-length v8, v3

    array-length v9, v3

    rem-int v9, v7, v9
    :try_end_6e
    .catchall {:try_start_3b .. :try_end_6e} :catchall_90

    :goto_6e
    aget v10, v3, v9

    if-eqz v10, :cond_7c

    add-int/lit8 v10, v8, -0x2

    :try_start_74
    rem-int v10, v7, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    array-length v10, v3

    rem-int/2addr v9, v10
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_90

    goto :goto_6e

    :cond_7c
    aput v6, v3, v9

    :try_start_7e
    iget-object v6, p0, Labcd/Ob;->VH:[Ljava/lang/Object;

    aget-object v6, v6, v5

    aput-object v6, v2, v9

    add-int/lit8 v4, v4, 0x1

    :cond_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    :cond_89
    iput-object v3, p0, Labcd/Ob;->v5:[I

    iput-object v2, p0, Labcd/Ob;->VH:[Ljava/lang/Object;

    iput v4, p0, Labcd/Ob;->u7:I
    :try_end_8f
    .catchall {:try_start_7e .. :try_end_8f} :catchall_90

    return-void

    :catchall_90
    move-exception v2

    sget-boolean v3, Labcd/Ob;->FH:Z

    if-eqz v3, :cond_98

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_98
    goto :goto_9a

    :goto_99
    throw v2

    :goto_9a
    goto :goto_99
.end method

.method static synthetic DW(Labcd/Ob;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Labcd/Ob;->VH:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic j6(Labcd/Ob;)[I
    .registers 1

    iget-object p0, p0, Labcd/Ob;->v5:[I

    return-object p0
.end method


# virtual methods
.method public DW(I)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const-wide v0, 0x252c1edbe29fa83fL

    :try_start_5
    sget-boolean v2, Labcd/Ob;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Ob;->v5:[I

    array-length v4, v3

    array-length v5, v3

    rem-int v5, v2, v5

    aget v3, v3, v5

    :goto_1d
    if-eq v3, p1, :cond_31

    if-nez v3, :cond_23

    const/4 p1, 0x0

    return-object p1

    :cond_23
    add-int/lit8 v3, v4, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v5, v3

    iget-object v3, p0, Labcd/Ob;->v5:[I

    array-length v6, v3

    rem-int/2addr v5, v6

    aget v3, v3, v5

    goto :goto_1d

    :cond_31
    iget-object v2, p0, Labcd/Ob;->VH:[Ljava/lang/Object;

    aget-object p1, v2, v5
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    return-object p1

    :catchall_36
    move-exception v2

    sget-boolean v3, Labcd/Ob;->FH:Z

    if-eqz v3, :cond_43

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    goto :goto_45

    :goto_44
    throw v2

    :goto_45
    goto :goto_44
.end method

.method public DW(ILjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ob;->DW:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x21ae66c14bb27653L  # -2.197537790033838E146

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p0, p1}, Labcd/Ob;->FH(I)V

    invoke-virtual {p0, p1, p2}, Labcd/Ob;->j6(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Labcd/Ob;->FH:Z

    if-eqz v1, :cond_2d

    const-wide v2, -0x21ae66c14bb27653L  # -2.197537790033838E146

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method public FH(I)V
    .registers 9

    const-wide v0, 0x4b56dcbf32004abdL  # 8.759090292695412E54

    :try_start_5
    sget-boolean v2, Labcd/Ob;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Ob;->v5:[I

    array-length v4, v3

    rem-int v4, v2, v4

    array-length v5, v3

    aget v3, v3, v4

    :goto_1d
    if-eqz v3, :cond_3b

    if-ne v3, p1, :cond_2d

    iget-object v3, p0, Labcd/Ob;->v5:[I

    const/high16 v6, -0x80000000

    aput v6, v3, v4

    iget v3, p0, Labcd/Ob;->tp:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Labcd/Ob;->tp:I

    :cond_2d
    add-int/lit8 v3, v5, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    iget-object v3, p0, Labcd/Ob;->v5:[I

    array-length v6, v3

    rem-int/2addr v4, v6

    aget v3, v3, v4
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3c

    goto :goto_1d

    :cond_3b
    return-void

    :catchall_3c
    move-exception v2

    sget-boolean v3, Labcd/Ob;->FH:Z

    if-eqz v3, :cond_49

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    goto :goto_4b

    :goto_4a
    throw v2

    :goto_4b
    goto :goto_4a
.end method

.method public j6()I
    .registers 5

    const-wide v0, -0x215ba4ffe444ccd9L  # -8.133716508324905E147

    :try_start_5
    sget-boolean v2, Labcd/Ob;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Ob;->tp:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Ob;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(ILjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ob;->DW:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xc16590d1a639a5L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const v0, 0x7fffffff

    if-nez p1, :cond_19

    const p1, 0x7fffffff

    :cond_19
    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Ob;->v5:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_24
    if-eqz v1, :cond_42

    if-ne v1, p1, :cond_2f

    iget-object v1, p0, Labcd/Ob;->VH:[Ljava/lang/Object;

    aget-object v1, v1, v2

    if-ne v1, p2, :cond_34

    return-void

    :cond_2f
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_34

    move v5, v2

    :cond_34
    add-int/lit8 v1, v3, -0x2

    rem-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    iget-object v1, p0, Labcd/Ob;->v5:[I

    array-length v6, v1

    rem-int/2addr v2, v6

    aget v1, v1, v2

    goto :goto_24

    :cond_42
    if-eq v5, v4, :cond_45

    move v2, v5

    :cond_45
    iget-object v0, p0, Labcd/Ob;->v5:[I

    aput p1, v0, v2

    iget-object v1, p0, Labcd/Ob;->VH:[Ljava/lang/Object;

    aput-object p2, v1, v2

    iget v1, p0, Labcd/Ob;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Ob;->tp:I

    if-ne v5, v4, :cond_5b

    iget v1, p0, Labcd/Ob;->u7:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Ob;->u7:I

    :cond_5b
    iget v1, p0, Labcd/Ob;->u7:I

    mul-int/lit8 v1, v1, 0x2

    array-length v0, v0

    if-le v1, v0, :cond_65

    invoke-direct {p0}, Labcd/Ob;->DW()V
    :try_end_65
    .catchall {:try_start_0 .. :try_end_65} :catchall_66

    :cond_65
    return-void

    :catchall_66
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/Ob;->FH:Z

    if-eqz v0, :cond_7c

    const-wide v1, 0xc16590d1a639a5L

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7c
    goto :goto_7e

    :goto_7d
    throw v6

    :goto_7e
    goto :goto_7d
.end method

.method public j6(I)Z
    .registers 9

    const-wide v0, 0x165599f0fbd3ec8L

    :try_start_5
    sget-boolean v2, Labcd/Ob;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Ob;->v5:[I

    array-length v4, v3

    array-length v5, v3

    rem-int v5, v2, v5

    aget v3, v3, v5

    :goto_1d
    const/4 v6, 0x1

    if-eq v3, p1, :cond_31

    if-nez v3, :cond_24

    const/4 p1, 0x0

    return p1

    :cond_24
    add-int/lit8 v3, v4, -0x2

    rem-int v3, v2, v3

    add-int/2addr v3, v6

    add-int/2addr v5, v3

    iget-object v3, p0, Labcd/Ob;->v5:[I

    array-length v6, v3

    rem-int/2addr v5, v6

    aget v3, v3, v5
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_32

    goto :goto_1d

    :cond_31
    return v6

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/Ob;->FH:Z

    if-eqz v3, :cond_3f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    goto :goto_41

    :goto_40
    throw v2

    :goto_41
    goto :goto_40
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v0, 0xfb8e4e703efd60L

    :try_start_5
    sget-boolean v2, Labcd/Ob;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[Size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Labcd/Ob;->tp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    return-object v0

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/Ob;->FH:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v2
.end method
