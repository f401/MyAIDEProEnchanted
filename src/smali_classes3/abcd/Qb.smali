.class public Labcd/Qb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Qb$a;
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
        field = -0x2b181af55141e0a7L
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = 0xba73f0c49dc4cc5L
    .end annotation
.end field

.field public final Hw:Labcd/Qb$a;

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = 0x24a90197078d67dfL
    .end annotation
.end field

.field private Zo:[J
    .annotation runtime Labcd/ru;
        field = -0x41b3f6cfcfe80e8L
    .end annotation
.end field

.field private gn:[I
    .annotation runtime Labcd/ru;
        field = -0x5fad2b577e920acL
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = -0x217bde39930a5a80L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0x17f24398a547a188L
    .end annotation
.end field

.field private v5:[J
    .annotation runtime Labcd/ru;
        field = 0xc9fd43130565cb5L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1e386494d72b9419L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x66f8578555c9e91L  # -3.651381331045529E277

    :try_start_6
    const-class v3, Labcd/Qb;

    const-wide v4, -0x3efea543359e9e5dL  # -142167.59881855277

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/Qb;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    sput-object v3, Labcd/Qb;->j6:[I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/Qb;->FH:Z

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

    const-wide v0, -0x1daf20364c9db777L  # -3.886870668651831E165

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Qb;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Qb$a;

    invoke-direct {v3, p0, v2}, Labcd/Qb$a;-><init>(Labcd/Qb;Labcd/Pb;)V

    iput-object v3, p0, Labcd/Qb;->Hw:Labcd/Qb$a;

    const/4 v3, 0x0

    iput v3, p0, Labcd/Qb;->EQ:I

    sget-object v4, Labcd/Qb;->j6:[I

    aget v4, v4, v3

    new-array v5, v4, [J

    iput-object v5, p0, Labcd/Qb;->v5:[J

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/Qb;->VH:[I

    iput v3, p0, Labcd/Qb;->u7:I

    iput v3, p0, Labcd/Qb;->tp:I
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v3

    sget-boolean v4, Labcd/Qb;->FH:Z

    if-eqz v4, :cond_33

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v3
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 10

    const-wide v0, 0x2f9dd743d86391f5L  # 2.5167076246183107E-79

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Qb;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Qb$a;

    invoke-direct {v3, p0, v2}, Labcd/Qb$a;-><init>(Labcd/Qb;Labcd/Pb;)V

    iput-object v3, p0, Labcd/Qb;->Hw:Labcd/Qb$a;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Qb;->tp:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Qb;->u7:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Qb;->EQ:I

    sget-object v4, Labcd/Qb;->j6:[I

    aget v3, v4, v3

    new-array v3, v3, [J

    iput-object v3, p0, Labcd/Qb;->v5:[J

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_33
    iget-object v5, p0, Labcd/Qb;->v5:[J

    array-length v6, v5

    if-ge v4, v6, :cond_41

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_41
    sget-object v4, Labcd/Qb;->j6:[I

    iget v5, p0, Labcd/Qb;->EQ:I

    aget v4, v4, v5

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/Qb;->VH:[I

    :goto_4b
    iget-object v4, p0, Labcd/Qb;->VH:[I

    array-length v5, v4

    if-ge v3, v5, :cond_59

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    aput v5, v4, v3
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_5a

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_59
    return-void

    :catchall_5a
    move-exception v3

    sget-boolean v4, Labcd/Qb;->FH:Z

    if-eqz v4, :cond_62

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    goto :goto_64

    :goto_63
    throw v3

    :goto_64
    goto :goto_63
.end method

.method private j6()V
    .registers 20
    .annotation runtime Labcd/su;
        method = 0xf8a8e382e89d96bL
    .end annotation

    move-object/from16 v1, p0

    const-wide v2, 0x162d055f488545e0L  # 7.405000108491891E-202

    :try_start_7
    sget-boolean v0, Labcd/Qb;->DW:Z

    if-eqz v0, :cond_e

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    iget v0, v1, Labcd/Qb;->tp:I

    iget-object v4, v1, Labcd/Qb;->v5:[J

    array-length v5, v4

    mul-int/lit8 v0, v0, 0x2

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-le v0, v5, :cond_2e

    iget v0, v1, Labcd/Qb;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Labcd/Qb;->EQ:I

    const/4 v4, 0x0

    iput-object v4, v1, Labcd/Qb;->Zo:[J

    iput-object v4, v1, Labcd/Qb;->gn:[I

    sget-object v4, Labcd/Qb;->j6:[I

    aget v0, v4, v0

    new-array v4, v0, [J

    :goto_2b
    new-array v0, v0, [I

    goto :goto_5e

    :cond_2e
    iget-object v0, v1, Labcd/Qb;->Zo:[J

    if-eqz v0, :cond_4f

    array-length v5, v0

    array-length v9, v4

    if-ne v5, v9, :cond_4f

    const/4 v4, 0x0

    :goto_37
    array-length v5, v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_a3

    if-ge v4, v5, :cond_3f

    aput-wide v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_3f
    :try_start_3f
    iget-object v4, v1, Labcd/Qb;->gn:[I

    iget-object v5, v1, Labcd/Qb;->v5:[J

    iput-object v5, v1, Labcd/Qb;->Zo:[J

    iget-object v5, v1, Labcd/Qb;->VH:[I

    iput-object v5, v1, Labcd/Qb;->gn:[I

    move-object/from16 v18, v4

    move-object v4, v0

    move-object/from16 v0, v18

    goto :goto_5e

    :cond_4f
    iput-object v4, v1, Labcd/Qb;->Zo:[J

    iget-object v0, v1, Labcd/Qb;->VH:[I

    iput-object v0, v1, Labcd/Qb;->gn:[I

    sget-object v0, Labcd/Qb;->j6:[I

    iget v4, v1, Labcd/Qb;->EQ:I

    aget v0, v0, v4

    new-array v4, v0, [J

    goto :goto_2b

    :goto_5e
    const/4 v5, 0x0

    :goto_5f
    iget-object v9, v1, Labcd/Qb;->v5:[J

    array-length v10, v9

    if-ge v8, v10, :cond_9c

    aget-wide v10, v9, v8

    cmp-long v9, v10, v6

    if-eqz v9, :cond_99

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v9, v10, v12

    if-eqz v9, :cond_99

    const-wide v12, 0x7fffffffffffffffL

    and-long/2addr v12, v10

    array-length v9, v4

    int-to-long v14, v9

    rem-long v14, v12, v14

    long-to-int v9, v14

    array-length v14, v4

    int-to-long v14, v14

    const-wide/16 v16, 0x2

    sub-long v14, v14, v16

    rem-long/2addr v12, v14
    :try_end_82
    .catchall {:try_start_3f .. :try_end_82} :catchall_a3

    long-to-int v13, v12

    :goto_83
    aget-wide v14, v4, v9

    cmp-long v12, v14, v6

    if-eqz v12, :cond_8f

    add-int/lit8 v12, v13, 0x1

    add-int/2addr v9, v12

    :try_start_8c
    array-length v12, v4

    rem-int/2addr v9, v12
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_a3

    goto :goto_83

    :cond_8f
    aput-wide v10, v4, v9

    :try_start_91
    iget-object v10, v1, Labcd/Qb;->VH:[I

    aget v10, v10, v8

    aput v10, v0, v9

    add-int/lit8 v5, v5, 0x1

    :cond_99
    add-int/lit8 v8, v8, 0x1

    goto :goto_5f

    :cond_9c
    iput-object v4, v1, Labcd/Qb;->v5:[J

    iput-object v0, v1, Labcd/Qb;->VH:[I

    iput v5, v1, Labcd/Qb;->u7:I
    :try_end_a2
    .catchall {:try_start_91 .. :try_end_a2} :catchall_a3

    return-void

    :catchall_a3
    move-exception v0

    sget-boolean v4, Labcd/Qb;->FH:Z

    if-eqz v4, :cond_ab

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_ab
    goto :goto_ad

    :goto_ac
    throw v0

    :goto_ad
    goto :goto_ac
.end method


# virtual methods
.method public DW(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Qb;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x2dec1a7902107151L  # -2.473759265303699E87

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Labcd/Qb;->DW(J)I

    move-result p1
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return p1

    :catchall_21
    move-exception v0

    sget-boolean v1, Labcd/Qb;->FH:Z

    if-eqz v1, :cond_3a

    const-wide v2, -0x2dec1a7902107151L  # -2.473759265303699E87

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method public DW(J)I
    .registers 16

    const-wide v0, -0x553754d5da3d92b0L

    :try_start_5
    sget-boolean v2, Labcd/Qb;->DW:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-nez v6, :cond_1d

    move-wide p1, v2

    :cond_1d
    and-long/2addr v2, p1

    iget-object v6, p0, Labcd/Qb;->v5:[J

    array-length v7, v6

    int-to-long v7, v7

    rem-long v7, v2, v7

    long-to-int v8, v7

    array-length v7, v6

    int-to-long v9, v7

    const-wide/16 v11, 0x2

    sub-long/2addr v9, v11

    rem-long/2addr v2, v9

    long-to-int v3, v2

    aget-wide v9, v6, v8

    :goto_2e
    cmp-long v2, v9, p1

    if-eqz v2, :cond_42

    cmp-long v2, v9, v4

    if-nez v2, :cond_38

    const/4 p1, -0x1

    return p1

    :cond_38
    add-int/lit8 v2, v3, 0x1

    add-int/2addr v8, v2

    iget-object v2, p0, Labcd/Qb;->v5:[J

    array-length v6, v2

    rem-int/2addr v8, v6

    aget-wide v9, v2, v8

    goto :goto_2e

    :cond_42
    iget-object v2, p0, Labcd/Qb;->VH:[I

    aget p1, v2, v8
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_47

    return p1

    :catchall_47
    move-exception v2

    sget-boolean v3, Labcd/Qb;->FH:Z

    if-eqz v3, :cond_54

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    goto :goto_56

    :goto_55
    throw v2

    :goto_56
    goto :goto_55
.end method

.method public DW(JI)V
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/Qb;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x301e970efa0d5ddcL  # 6.604525507486482E-77

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0, p1, p2}, Labcd/Qb;->FH(J)V

    invoke-virtual {p0, p1, p2, p3}, Labcd/Qb;->j6(JI)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Labcd/Qb;->FH:Z

    if-eqz v1, :cond_36

    const-wide v2, 0x301e970efa0d5ddcL  # 6.604525507486482E-77

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method public FH(J)V
    .registers 16

    const-wide v0, 0x418edd51dc7d2f4L

    :try_start_5
    sget-boolean v2, Labcd/Qb;->DW:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-nez v6, :cond_1d

    move-wide p1, v2

    :cond_1d
    and-long/2addr v2, p1

    iget-object v6, p0, Labcd/Qb;->v5:[J

    array-length v7, v6

    int-to-long v7, v7

    rem-long v7, v2, v7

    long-to-int v8, v7

    array-length v7, v6

    int-to-long v9, v7

    const-wide/16 v11, 0x2

    sub-long/2addr v9, v11

    rem-long/2addr v2, v9

    long-to-int v3, v2

    aget-wide v9, v6, v8

    :goto_2e
    cmp-long v2, v9, v4

    if-eqz v2, :cond_4c

    cmp-long v2, v9, p1

    if-nez v2, :cond_42

    iget-object v2, p0, Labcd/Qb;->v5:[J

    const-wide/high16 v6, -0x8000000000000000L

    aput-wide v6, v2, v8

    iget v2, p0, Labcd/Qb;->tp:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Labcd/Qb;->tp:I

    :cond_42
    add-int/lit8 v2, v3, 0x1

    add-int/2addr v8, v2

    iget-object v2, p0, Labcd/Qb;->v5:[J

    array-length v6, v2

    rem-int/2addr v8, v6

    aget-wide v9, v2, v8
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_4d

    goto :goto_2e

    :cond_4c
    return-void

    :catchall_4d
    move-exception v2

    sget-boolean v3, Labcd/Qb;->FH:Z

    if-eqz v3, :cond_5a

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    goto :goto_5c

    :goto_5b
    throw v2

    :goto_5c
    goto :goto_5b
.end method

.method public j6(I)V
    .registers 9

    const-wide v0, -0x3ac41aa234cfe551L  # -3.372414924260272E25

    :try_start_5
    sget-boolean v2, Labcd/Qb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget v2, p0, Labcd/Qb;->u7:I

    if-lez v2, :cond_41

    iget-object v2, p0, Labcd/Qb;->v5:[J

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v2, p1, :cond_30

    iput v3, p0, Labcd/Qb;->EQ:I

    :goto_18
    sget-object v2, Labcd/Qb;->j6:[I

    iget v4, p0, Labcd/Qb;->EQ:I

    aget v2, v2, v4

    mul-int/lit8 v5, p1, 0x2

    if-ge v2, v5, :cond_27

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Labcd/Qb;->EQ:I

    goto :goto_18

    :cond_27
    new-array v4, v2, [J

    iput-object v4, p0, Labcd/Qb;->v5:[J

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/Qb;->VH:[I

    goto :goto_3d

    :cond_30
    const/4 v2, 0x0

    :goto_31
    iget-object v4, p0, Labcd/Qb;->v5:[J

    array-length v5, v4

    if-ge v2, v5, :cond_3d

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_3d
    :goto_3d
    iput v3, p0, Labcd/Qb;->u7:I

    iput v3, p0, Labcd/Qb;->tp:I
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_42

    :cond_41
    return-void

    :catchall_42
    move-exception v2

    sget-boolean v3, Labcd/Qb;->FH:Z

    if-eqz v3, :cond_4f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    goto :goto_51

    :goto_50
    throw v2

    :goto_51
    goto :goto_50
.end method

.method public j6(III)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Qb;->DW:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x527f6bf493769b73L  # -1.627688416755618E-89

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    invoke-virtual {p0, v0, v1, p3}, Labcd/Qb;->DW(JI)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Labcd/Qb;->FH:Z

    if-eqz v1, :cond_44

    const-wide v2, -0x527f6bf493769b73L  # -1.627688416755618E-89

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method

.method public j6(JI)V
    .registers 15

    :try_start_0
    sget-boolean v0, Labcd/Qb;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x3209010765df3b0L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_22

    move-wide p1, v0

    :cond_22
    and-long/2addr v0, p1

    iget-object v4, p0, Labcd/Qb;->v5:[J

    array-length v5, v4

    int-to-long v5, v5

    rem-long v5, v0, v5

    long-to-int v6, v5

    array-length v5, v4

    int-to-long v7, v5

    const-wide/16 v9, 0x2

    sub-long/2addr v7, v9

    rem-long/2addr v0, v7

    long-to-int v1, v0

    aget-wide v7, v4, v6

    const/4 v0, -0x1

    const/4 v4, -0x1

    :goto_35
    cmp-long v5, v7, v2

    if-eqz v5, :cond_56

    cmp-long v5, v7, p1

    if-nez v5, :cond_44

    iget-object v5, p0, Labcd/Qb;->VH:[I

    aget v5, v5, v6

    if-ne v5, p3, :cond_4c

    return-void

    :cond_44
    const-wide/32 v9, -0x80000000

    cmp-long v5, v7, v9

    if-nez v5, :cond_4c

    move v4, v6

    :cond_4c
    add-int/lit8 v5, v1, 0x1

    add-int/2addr v6, v5

    iget-object v5, p0, Labcd/Qb;->v5:[J

    array-length v7, v5

    rem-int/2addr v6, v7

    aget-wide v7, v5, v6

    goto :goto_35

    :cond_56
    if-eq v4, v0, :cond_59

    move v6, v4

    :cond_59
    iget-object v1, p0, Labcd/Qb;->v5:[J

    aput-wide p1, v1, v6

    iget-object v2, p0, Labcd/Qb;->VH:[I

    aput p3, v2, v6

    iget v2, p0, Labcd/Qb;->tp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Qb;->tp:I

    if-ne v4, v0, :cond_6f

    iget v0, p0, Labcd/Qb;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Qb;->u7:I

    :cond_6f
    iget v0, p0, Labcd/Qb;->u7:I

    mul-int/lit8 v0, v0, 0x2

    array-length v1, v1

    if-le v0, v1, :cond_79

    invoke-direct {p0}, Labcd/Qb;->j6()V
    :try_end_79
    .catchall {:try_start_0 .. :try_end_79} :catchall_7a

    :cond_79
    return-void

    :catchall_7a
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/Qb;->FH:Z

    if-eqz v0, :cond_94

    const-wide v1, -0x3209010765df3b0L

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_94
    goto :goto_96

    :goto_95
    throw v6

    :goto_96
    goto :goto_95
.end method

.method public j6(Labcd/fc;)V
    .registers 9

    const-wide v0, -0xadbac8b0ca4350bL

    :try_start_5
    sget-boolean v2, Labcd/Qb;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Qb;->tp:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/Qb;->u7:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/Qb;->EQ:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    iget-object v4, p0, Labcd/Qb;->v5:[J

    array-length v5, v4

    if-ge v3, v5, :cond_2a

    aget-wide v5, v4, v3

    invoke-virtual {p1, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_2a
    :goto_2a
    iget-object v3, p0, Labcd/Qb;->VH:[I

    array-length v4, v3

    if-ge v2, v4, :cond_37

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_38

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_37
    return-void

    :catchall_38
    move-exception v2

    sget-boolean v3, Labcd/Qb;->FH:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    goto :goto_42

    :goto_41
    throw v2

    :goto_42
    goto :goto_41
.end method

.method public j6(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Qb;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x1169d74acbb4a258L  # 8.726544594222943E-225

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Labcd/Qb;->j6(J)Z

    move-result p1
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return p1

    :catchall_21
    move-exception v0

    sget-boolean v1, Labcd/Qb;->FH:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0x1169d74acbb4a258L  # 8.726544594222943E-225

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method public j6(J)Z
    .registers 16

    const-wide v0, -0x11faacc4848c3c13L  # -9.635592729524017E221

    :try_start_5
    sget-boolean v2, Labcd/Qb;->DW:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-nez v6, :cond_1d

    move-wide p1, v2

    :cond_1d
    and-long/2addr v2, p1

    iget-object v6, p0, Labcd/Qb;->v5:[J

    array-length v7, v6

    int-to-long v7, v7

    rem-long v7, v2, v7

    long-to-int v8, v7

    array-length v7, v6

    int-to-long v9, v7

    const-wide/16 v11, 0x2

    sub-long/2addr v9, v11

    rem-long/2addr v2, v9

    long-to-int v3, v2

    aget-wide v9, v6, v8

    :goto_2e
    const/4 v2, 0x1

    cmp-long v6, v9, p1

    if-eqz v6, :cond_42

    cmp-long v6, v9, v4

    if-nez v6, :cond_39

    const/4 p1, 0x0

    return p1

    :cond_39
    add-int/2addr v2, v3

    add-int/2addr v8, v2

    iget-object v2, p0, Labcd/Qb;->v5:[J

    array-length v6, v2

    rem-int/2addr v8, v6

    aget-wide v9, v2, v8
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_43

    goto :goto_2e

    :cond_42
    return v2

    :catchall_43
    move-exception v2

    sget-boolean v3, Labcd/Qb;->FH:Z

    if-eqz v3, :cond_50

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    goto :goto_52

    :goto_51
    throw v2

    :goto_52
    goto :goto_51
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x29338c5825bf4f07L  # -1.3364043366174E110

    :try_start_5
    sget-boolean v2, Labcd/Qb;->DW:Z

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

    iget v3, p0, Labcd/Qb;->tp:I

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

    sget-boolean v3, Labcd/Qb;->FH:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v2
.end method
