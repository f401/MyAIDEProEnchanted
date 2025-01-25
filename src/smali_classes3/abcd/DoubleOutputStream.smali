.class public Labcd/DoubleOutputStream;
.super Ljava/io/OutputStream;


# annotations
.annotation runtime Labcd/xu;
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
.field private final first:Ljava/io/OutputStream;
    .annotation runtime Labcd/ru;
        field = -0x718b98850a45465L
    .end annotation
.end field

.field private final second:Ljava/io/OutputStream;
    .annotation runtime Labcd/ru;
        field = -0x718cc1e735c504cL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/DoubleOutputStream;

    const-wide v1, 0x4ddb08210589820L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/DoubleOutputStream;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x5e70b55088475a8L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Labcd/DoubleOutputStream;->first:Ljava/io/OutputStream;

    iput-object p2, p0, Labcd/DoubleOutputStream;->second:Ljava/io/OutputStream;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/DoubleOutputStream;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x5e70b55088475a8L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 5

    const-wide v0, -0x16db795c5aeedae0L  # -3.0686693744632463E198

    :try_start_5
    sget-boolean v2, Labcd/DoubleOutputStream;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/DoubleOutputStream;->first:Ljava/io/OutputStream;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_13
    iget-object v2, p0, Labcd/DoubleOutputStream;->second:Ljava/io/OutputStream;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    :cond_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/DoubleOutputStream;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public flush()V
    .registers 5

    const-wide v0, -0x1584317fbca605f8L  # -8.718176470376489E204

    :try_start_5
    sget-boolean v2, Labcd/DoubleOutputStream;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/DoubleOutputStream;->first:Ljava/io/OutputStream;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    :cond_13
    iget-object v2, p0, Labcd/DoubleOutputStream;->second:Ljava/io/OutputStream;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    :cond_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/DoubleOutputStream;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public write(I)V
    .registers 6

    const-wide v0, -0x94f882710550010L

    :try_start_5
    sget-boolean v2, Labcd/DoubleOutputStream;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/DoubleOutputStream;->first:Ljava/io/OutputStream;

    if-eqz v2, :cond_13

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    :cond_13
    iget-object v2, p0, Labcd/DoubleOutputStream;->second:Ljava/io/OutputStream;

    if-eqz v2, :cond_1a

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    :cond_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/DoubleOutputStream;->DW:Z

    if-eqz v3, :cond_28

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public write([B)V
    .registers 6

    const-wide v0, 0xc25aa5882dce18cL

    :try_start_5
    sget-boolean v2, Labcd/DoubleOutputStream;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/DoubleOutputStream;->first:Ljava/io/OutputStream;

    if-eqz v2, :cond_13

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_13
    iget-object v2, p0, Labcd/DoubleOutputStream;->second:Ljava/io/OutputStream;

    if-eqz v2, :cond_1a

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    :cond_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/DoubleOutputStream;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public write([BII)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/DoubleOutputStream;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5c086eb498bbda8L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Labcd/DoubleOutputStream;->first:Ljava/io/OutputStream;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_1f
    iget-object v0, p0, Labcd/DoubleOutputStream;->second:Ljava/io/OutputStream;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    :cond_26
    return-void

    :catchall_27
    move-exception v0

    sget-boolean v1, Labcd/DoubleOutputStream;->DW:Z

    if-eqz v1, :cond_41

    const-wide v2, -0x5c086eb498bbda8L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v0
.end method
