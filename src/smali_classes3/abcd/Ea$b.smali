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
    .registers 3

    const-class v0, Labcd/Ea$b;

    const-wide v1, -0x539b77ee222cbf31L  # -7.689755518530027E-95

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x67e769b80b496ab1L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x5889f91a8676040L

    :try_start_6
    sget-boolean v3, Labcd/Ea$b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Labcd/Ea$b;->FH:Ljava/io/Reader;

    const/4 v3, 0x0

    iput-boolean v3, p0, Labcd/Ea$b;->Hw:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/Ea$b;->DW:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x29020f4be9f881b7L
    .end annotation

    const-wide v0, -0x722f07c72de4c27L

    :try_start_5
    sget-boolean v2, Labcd/Ea$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ea$b;->FH:Ljava/io/Reader;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Labcd/Ea$b;->FH:Ljava/io/Reader;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Ea$b;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public read([CII)I
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2852d68b00325fbL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ea$b;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x5dd8157336751691L  # 1.1747427218449644E144

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Labcd/Ea$b;->FH:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    return v1

    :cond_22
    iget-boolean v1, p0, Labcd/Ea$b;->Hw:Z
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_4e

    move v2, p2

    move v3, v2

    :goto_26
    add-int v4, v0, p2

    if-ge v2, v4, :cond_4a

    aget-char v4, p1, v2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3f

    const/16 v1, 0xd

    if-eq v4, v1, :cond_39

    aput-char v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_39
    aput-char v5, p1, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x1

    goto :goto_47

    :cond_3f
    if-nez v1, :cond_46

    add-int/lit8 v1, v3, 0x1

    aput-char v5, p1, v3

    move v3, v1

    :cond_46
    :goto_46
    const/4 v1, 0x0

    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_4a
    :try_start_4a
    iput-boolean v1, p0, Labcd/Ea$b;->Hw:Z
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_4e

    sub-int/2addr v3, p2

    return v3

    :catchall_4e
    move-exception v0

    sget-boolean v1, Labcd/Ea$b;->DW:Z

    if-eqz v1, :cond_68

    const-wide v2, 0x5dd8157336751691L  # 1.1747427218449644E144

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_68
    goto :goto_6a

    :goto_69
    throw v0

    :goto_6a
    goto :goto_69
.end method
