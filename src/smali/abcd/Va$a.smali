.class Labcd/Va$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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
.field private FH:[C
    .annotation runtime Labcd/ru;
        field = -0x780ec610d10d848L
    .end annotation
.end field

.field private Hw:[C
    .annotation runtime Labcd/ru;
        field = 0x20a7888ab4677fb9L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x1631243822c87640L    # 8.747647411874676E-202

    const-class v0, Labcd/Va$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x10d234073dc9406bL
    .end annotation

    const-wide v4, -0x3b53e0369de5a813L    # -6.640631088827467E22

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Va$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3b53e0369de5a813L    # -6.640631088827467E22

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/Va$a;->FH:[C

    const/16 v0, 0x2710

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/Va$a;->Hw:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/Ua;)V
    .registers 8

    const-wide v4, 0x2aaf9744df614b60L    # 4.407714145283013E-103

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Va$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2aaf9744df614b60L    # 4.407714145283013E-103

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/Va$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1d6f289c6640a43L
    .end annotation

    const-wide v6, 0x180cc761dedad9b8L    # 7.884715535959115E-193

    :try_start_0
    sget-boolean v0, Labcd/Va$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x180cc761dedad9b8L    # 7.884715535959115E-193

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/Va$a;->Hw:[C

    array-length v0, v0

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Labcd/Va$a;->Hw:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Labcd/Va$a;->Hw:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/Va$a;->Hw:[C

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Va$a;->Hw:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va$a;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public j6(Ljava/io/Reader;Ljava/lang/String;II)Ljava/io/Reader;
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x7557e3646b93f080L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Va$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x20140ca8a43e45c1L    # -1.1711113411950113E154

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x1

    :cond_1
    iget-object v0, p0, Labcd/Va$a;->FH:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    move-result v6

    const/4 v0, -0x1

    if-ne v6, v0, :cond_2

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    new-instance v0, Ljava/io/CharArrayReader;

    iget-object v2, p0, Labcd/Va$a;->Hw:[C

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/io/CharArrayReader;-><init>([CII)V

    return-object v0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_1

    if-ne v2, p3, :cond_3

    if-ne v5, p4, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Labcd/Va$a;->j6(I)V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Labcd/Va$a;->Hw:[C

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v4, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Labcd/Va$a;->FH:[C

    aget-char v7, v0, v3

    const/16 v0, 0xa

    if-eq v7, v0, :cond_5

    const v0, 0xfffe

    if-eq v7, v0, :cond_4

    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4}, Labcd/Va$a;->j6(I)V

    iget-object v0, p0, Labcd/Va$a;->Hw:[C

    aput-char v7, v0, v1

    add-int/lit8 v5, v5, 0x1

    move v0, v2

    move v1, v3

    :goto_2
    add-int/lit8 v3, v1, 0x1

    move v2, v0

    move v1, v4

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0xa

    invoke-direct {p0, v0}, Labcd/Va$a;->j6(I)V

    iget-object v0, p0, Labcd/Va$a;->Hw:[C
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v1, 0x1

    aput-char v7, v0, v1

    :try_start_2
    iget-object v0, p0, Labcd/Va$a;->Hw:[C

    add-int/lit8 v1, v2, 0x1

    iget-object v4, p0, Labcd/Va$a;->FH:[C
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v5, v3, 0x1

    aget-char v3, v4, v3

    aput-char v3, v0, v2

    :try_start_3
    iget-object v0, p0, Labcd/Va$a;->Hw:[C

    add-int/lit8 v2, v1, 0x1

    iget-object v4, p0, Labcd/Va$a;->FH:[C
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v7, v5, 0x1

    aget-char v4, v4, v5

    aput-char v4, v0, v1

    :try_start_4
    iget-object v0, p0, Labcd/Va$a;->Hw:[C

    add-int/lit8 v1, v2, 0x1

    iget-object v5, p0, Labcd/Va$a;->FH:[C
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v8, v7, 0x1

    aget-char v5, v5, v7

    aput-char v5, v0, v2

    :try_start_5
    iget-object v0, p0, Labcd/Va$a;->Hw:[C

    add-int/lit8 v2, v1, 0x1

    iget-object v7, p0, Labcd/Va$a;->FH:[C
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    add-int/lit8 v9, v8, 0x1

    aget-char v7, v7, v8

    aput-char v7, v0, v1

    shl-int/lit8 v0, v7, 0x0

    shl-int/lit8 v1, v3, 0x18

    or-int/lit8 v1, v1, 0x0

    shl-int/lit8 v3, v4, 0x10

    or-int/2addr v1, v3

    shl-int/lit8 v3, v5, 0x8

    or-int/2addr v1, v3

    or-int/2addr v0, v1

    :try_start_6
    iget-object v1, p0, Labcd/Va$a;->Hw:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Labcd/Va$a;->FH:[C
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    add-int/lit8 v5, v9, 0x1

    aget-char v4, v4, v9

    aput-char v4, v1, v2

    :try_start_7
    iget-object v1, p0, Labcd/Va$a;->Hw:[C

    add-int/lit8 v2, v3, 0x1

    iget-object v7, p0, Labcd/Va$a;->FH:[C
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    add-int/lit8 v8, v5, 0x1

    aget-char v5, v7, v5

    aput-char v5, v1, v3

    :try_start_8
    iget-object v1, p0, Labcd/Va$a;->Hw:[C

    add-int/lit8 v7, v2, 0x1

    iget-object v3, p0, Labcd/Va$a;->FH:[C
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    add-int/lit8 v9, v8, 0x1

    aget-char v3, v3, v8

    aput-char v3, v1, v2

    :try_start_9
    iget-object v1, p0, Labcd/Va$a;->Hw:[C

    iget-object v2, p0, Labcd/Va$a;->FH:[C

    aget-char v2, v2, v9
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    aput-char v2, v1, v7

    shl-int/lit8 v1, v4, 0x18

    or-int/lit8 v1, v1, 0x0

    shl-int/lit8 v4, v5, 0x10

    or-int/2addr v1, v4

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0x0

    or-int v3, v1, v2

    add-int/lit8 v2, v7, 0x1

    add-int/lit8 v1, v9, 0x1

    move v4, v2

    move v5, v3

    goto/16 :goto_2

    :cond_5
    if-ne v2, p3, :cond_7

    if-ge v5, p4, :cond_7

    sub-int v4, p4, v5

    :try_start_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-direct {p0, v0}, Labcd/Va$a;->j6(I)V

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_6

    iget-object v5, p0, Labcd/Va$a;->Hw:[C

    const/16 v8, 0x20

    aput-char v8, v5, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_7

    iget-object v4, p0, Labcd/Va$a;->Hw:[C

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4}, Labcd/Va$a;->j6(I)V

    iget-object v0, p0, Labcd/Va$a;->Hw:[C

    aput-char v7, v0, v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    add-int/lit8 v0, v2, 0x1

    const/4 v2, 0x1

    move v1, v3

    move v5, v2

    goto/16 :goto_2

    :catch_0
    move-exception v1

    :goto_5
    sget-boolean v0, Labcd/Va$a;->DW:Z

    if-eqz v0, :cond_8

    const-wide v2, -0x20140ca8a43e45c1L    # -1.1711113411950113E154

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1

    :catch_1
    move-exception v1

    goto :goto_5
.end method
