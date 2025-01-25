.class public Labcd/Wb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Wb$a;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public final FH:Labcd/Wb$a;

.field private Hw:[I
    .annotation runtime Labcd/ru;
        field = 0x30576fab1d526470L
    .end annotation
.end field

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = 0x384d66fab892f0dcL
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = -0x1692df86c64a46ccL
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = -0xf8ea7834b78b653L
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = -0x32b1a69b837500e0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Wb;

    const-wide v1, 0x4b8bf94111855133L  # 8.573898506283362E55

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const-wide v0, -0xbfe1248337f8a3bL  # -6.418188075664849E250

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Wb;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Wb$a;

    invoke-direct {v3, p0, v2}, Labcd/Wb$a;-><init>(Labcd/Wb;Labcd/Vb;)V

    iput-object v3, p0, Labcd/Wb;->FH:Labcd/Wb$a;

    const/16 v3, 0xbb8

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/Wb;->Hw:[I

    new-array v3, v3, [I

    iput-object v3, p0, Labcd/Wb;->v5:[I

    const/16 v3, 0x3e8

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/Wb;->Zo:[I

    new-array v3, v3, [I

    iput-object v3, p0, Labcd/Wb;->VH:[I

    const/4 v3, 0x0

    iput v3, p0, Labcd/Wb;->gn:I
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception v3

    sget-boolean v4, Labcd/Wb;->DW:Z

    if-eqz v4, :cond_37

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v3
.end method

.method private Hw()V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x211ea463c3cad1bbL
    .end annotation

    const-wide v0, -0x24886f895b7dce08L

    :try_start_5
    sget-boolean v2, Labcd/Wb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Wb;->Hw:[I

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v4, v3, [I

    array-length v5, v2

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_25
    iget v7, p0, Labcd/Wb;->gn:I

    if-ge v6, v7, :cond_49

    iget-object v7, p0, Labcd/Wb;->Zo:[I

    aget v7, v7, v6

    if-eqz v7, :cond_46

    iget-object v8, p0, Labcd/Wb;->VH:[I

    aget v8, v8, v6

    const v9, 0x7fffffff

    and-int/2addr v9, v7

    rem-int/2addr v9, v3
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_4e

    :cond_38
    :goto_38
    aget v10, v4, v9

    if-eqz v10, :cond_42

    add-int/lit8 v9, v9, 0x1

    if-lt v9, v3, :cond_38

    const/4 v9, 0x0

    goto :goto_38

    :cond_42
    aput v7, v4, v9

    aput v8, v5, v9

    :cond_46
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_49
    :try_start_49
    iput-object v4, p0, Labcd/Wb;->Hw:[I

    iput-object v5, p0, Labcd/Wb;->v5:[I
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v2

    sget-boolean v3, Labcd/Wb;->DW:Z

    if-eqz v3, :cond_56

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_56
    goto :goto_58

    :goto_57
    throw v2

    :goto_58
    goto :goto_57
.end method

.method private v5()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x21016aa514fa9d88L
    .end annotation

    const-wide v0, -0x247816c1b3b1bf33L  # -8.486092965981855E132

    :try_start_5
    sget-boolean v2, Labcd/Wb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Wb;->Zo:[I

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/Wb;->Zo:[I

    iget-object v2, p0, Labcd/Wb;->VH:[I

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    array-length v4, v2

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/Wb;->VH:[I
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v2

    sget-boolean v3, Labcd/Wb;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method


# virtual methods
.method public DW(I)I
    .registers 9

    const-wide v0, -0x2ec33f939ce500b8L

    :try_start_5
    sget-boolean v2, Labcd/Wb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Wb;->Hw:[I

    array-length v3, v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_25

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    rem-int/2addr v4, v3

    const/4 v5, -0x1

    :cond_15
    aget v6, v2, v4

    if-ne v6, p1, :cond_1d

    :try_start_19
    iget-object v5, p0, Labcd/Wb;->v5:[I

    aget v5, v5, v4
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_25

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v3, :cond_22

    const/4 v4, 0x0

    :cond_22
    if-nez v6, :cond_15

    return v5

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/Wb;->DW:Z

    if-eqz v3, :cond_32

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    goto :goto_34

    :goto_33
    throw v2

    :goto_34
    goto :goto_33
.end method

.method public DW()V
    .registers 6

    const-wide v0, -0xc3b42a6fe11a580L  # -4.640316718780249E249

    :try_start_5
    sget-boolean v2, Labcd/Wb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Wb;->Zo:[I

    array-length v2, v2

    iget v3, p0, Labcd/Wb;->gn:I

    if-gt v2, v3, :cond_16

    invoke-direct {p0}, Labcd/Wb;->v5()V

    :cond_16
    iget-object v2, p0, Labcd/Wb;->Zo:[I

    iget v3, p0, Labcd/Wb;->gn:I

    const/4 v4, 0x0

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/Wb;->gn:I
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/Wb;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public FH()V
    .registers 11

    const-wide v0, -0x2f21f1c45fb8a793L  # -3.563725216951662E81

    :try_start_5
    sget-boolean v2, Labcd/Wb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Wb;->Hw:[I

    array-length v3, v2

    iget v4, p0, Labcd/Wb;->gn:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Labcd/Wb;->gn:I

    iget-object v5, p0, Labcd/Wb;->Zo:[I

    aget v4, v5, v4
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_3f

    :goto_19
    if-eqz v4, :cond_3e

    const v5, 0x7fffffff

    and-int/2addr v5, v4

    rem-int/2addr v5, v3

    const/4 v6, -0x1

    const/4 v7, -0x1

    :cond_22
    aget v8, v2, v5

    if-ne v8, v4, :cond_27

    move v7, v5

    :cond_27
    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x0

    if-lt v5, v3, :cond_2d

    const/4 v5, 0x0

    :cond_2d
    if-nez v8, :cond_22

    if-eq v7, v6, :cond_33

    aput v9, v2, v7

    :cond_33
    :try_start_33
    iget v4, p0, Labcd/Wb;->gn:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Labcd/Wb;->gn:I

    iget-object v5, p0, Labcd/Wb;->Zo:[I

    aget v4, v5, v4
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3f

    goto :goto_19

    :cond_3e
    return-void

    :catchall_3f
    move-exception v2

    sget-boolean v3, Labcd/Wb;->DW:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_47
    goto :goto_49

    :goto_48
    throw v2

    :goto_49
    goto :goto_48
.end method

.method public j6()V
    .registers 7

    const-wide v0, -0x612e8c49fc1fd80L

    :try_start_5
    sget-boolean v2, Labcd/Wb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Wb;->gn:I

    const/4 v3, 0x0

    if-lez v2, :cond_1c

    const/4 v2, 0x0

    :goto_12
    iget-object v4, p0, Labcd/Wb;->Hw:[I

    array-length v5, v4

    if-ge v2, v5, :cond_1c

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1c
    iput v3, p0, Labcd/Wb;->gn:I
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Labcd/Wb;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    goto :goto_29

    :goto_28
    throw v2

    :goto_29
    goto :goto_28
.end method

.method public j6(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Wb;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x9a83d7bfda7707L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Labcd/Wb;->Hw:[I

    array-length v0, v0

    iget v1, p0, Labcd/Wb;->gn:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_22

    invoke-direct {p0}, Labcd/Wb;->Hw()V

    :cond_22
    iget-object v0, p0, Labcd/Wb;->Zo:[I

    array-length v0, v0

    iget v1, p0, Labcd/Wb;->gn:I

    if-gt v0, v1, :cond_2c

    invoke-direct {p0}, Labcd/Wb;->v5()V

    :cond_2c
    iget-object v0, p0, Labcd/Wb;->Zo:[I

    iget v1, p0, Labcd/Wb;->gn:I

    aput p1, v0, v1

    iget-object v0, p0, Labcd/Wb;->VH:[I

    aput p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Wb;->gn:I

    iget-object v0, p0, Labcd/Wb;->Hw:[I

    array-length v1, v0
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_53

    const v2, 0x7fffffff

    and-int/2addr v2, p1

    rem-int/2addr v2, v1

    :cond_42
    :goto_42
    aget v3, v0, v2

    if-eqz v3, :cond_4c

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_42

    const/4 v2, 0x0

    goto :goto_42

    :cond_4c
    aput p1, v0, v2

    :try_start_4e
    iget-object v0, p0, Labcd/Wb;->v5:[I

    aput p2, v0, v2
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_53

    return-void

    :catchall_53
    move-exception v0

    sget-boolean v1, Labcd/Wb;->DW:Z

    if-eqz v1, :cond_6c

    const-wide v2, 0x9a83d7bfda7707L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6c
    goto :goto_6e

    :goto_6d
    throw v0

    :goto_6e
    goto :goto_6d
.end method

.method public j6(I)Z
    .registers 7

    const-wide v0, -0x3ce44d804f08ef3L

    :try_start_5
    sget-boolean v2, Labcd/Wb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Wb;->Hw:[I

    array-length v3, v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_23

    const v0, 0x7fffffff

    and-int/2addr v0, p1

    rem-int/2addr v0, v3

    :cond_14
    aget v1, v2, v0

    if-ne v1, p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    if-lt v0, v3, :cond_20

    const/4 v0, 0x0

    :cond_20
    if-nez v1, :cond_14

    return v4

    :catchall_23
    move-exception v2

    sget-boolean v3, Labcd/Wb;->DW:Z

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    goto :goto_32

    :goto_31
    throw v2

    :goto_32
    goto :goto_31
.end method
