.class final Labcd/Ul;
.super Ljava/io/Reader;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/FileSystemUtils;->BT(Ljava/lang/String;)Ljava/io/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
.field final FH:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x18179e4bf6765ca1L

    const-wide v2, -0x1a854b96b5603cf8L  # -6.925731226454249E180

    const-class v4, Labcd/Ul;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .registers 2

    iput-object p1, p0, Labcd/Ul;->FH:Ljava/io/Reader;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x27cb6b9765bba608L
    .end annotation

    const-wide v0, -0x10dd9f6192025ef7L  # -2.176763387493281E227

    :try_start_5
    sget-boolean v2, Labcd/Ul;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Labcd/FileSystemUtils;->j6()Labcd/Dc;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Dc;->j6()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Ul;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public read([CII)I
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x1568fbbb7032398L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ul;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x116d48221fbfe74bL  # 9.888503759350817E-225

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Labcd/Ul;->FH:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return p1

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/Ul;->DW:Z

    if-eqz v1, :cond_39

    const-wide v2, 0x116d48221fbfe74bL  # 9.888503759350817E-225

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method
