.class Labcd/Ea$b;
.super Ljava/io/Reader;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Ea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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
.field private FH:Ljava/io/Reader;
    .annotation runtime Labcd/ru;
        field = -0x2bf0c763dccaf5d5L
    .end annotation
.end field

.field private Hw:Z
    .annotation runtime Labcd/ru;
        field = -0x2707c86f519f0253L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x539b77ee222cbf31L    # -7.689755518530027E-95

    const-class v0, Labcd/Ea$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x67e769b80b496ab1L
    .end annotation

    const-wide v4, 0x5889f91a8676040L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ea$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5889f91a8676040L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Labcd/Ea$b;->FH:Ljava/io/Reader;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Ea$b;->Hw:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ea$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x29020f4be9f881b7L
    .end annotation

    const-wide v2, -0x722f07c72de4c27L

    :try_start_0
    sget-boolean v0, Labcd/Ea$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x722f07c72de4c27L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ea$b;->FH:Ljava/io/Reader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Ea$b;->FH:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Ea$b;->FH:Ljava/io/Reader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ea$b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public read([CII)I
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2852d68b00325fbL
    .end annotation

    const-wide v8, 0x5dd8157336751691L    # 1.1747427218449644E144

    const/4 v6, -0x1

    const/16 v7, 0xa

    :try_start_0
    sget-boolean v0, Labcd/Ea$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x5dd8157336751691L    # 1.1747427218449644E144

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ea$b;->FH:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v5

    if-ne v5, v6, :cond_1

    move v0, v6

    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Labcd/Ea$b;->Hw:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v4, p2

    move v1, p2

    :goto_1
    add-int v0, v5, p2

    if-ge v4, v0, :cond_4

    aget-char v0, p1, v4

    if-eq v0, v7, :cond_3

    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    aput-char v0, p1, v1

    add-int/lit8 v0, v1, 0x1

    :goto_2
    const/4 v1, 0x0

    move v2, v1

    move v3, v0

    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v1, v3

    goto :goto_1

    :cond_2
    aput-char v7, p1, v1

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    move v3, v1

    goto :goto_3

    :cond_3
    if-nez v2, :cond_6

    add-int/lit8 v0, v1, 0x1

    aput-char v7, p1, v1

    goto :goto_2

    :cond_4
    :try_start_1
    iput-boolean v2, p0, Labcd/Ea$b;->Hw:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    sub-int v0, v1, p2

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ea$b;->DW:Z

    if-eqz v0, :cond_5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    move v0, v1

    goto :goto_2
.end method
