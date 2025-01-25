.class public Labcd/ve;
.super Ljava/lang/Object;


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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/ve;

    const-wide v1, -0xce3a55b4d8df520L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1dbe830577348900L

    :try_start_6
    sget-boolean v3, Labcd/ve;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/ve;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Ljava/io/Reader;Ljava/io/Writer;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/ve;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x67f245ffbb7d3333L  # -8.144370818973714E-193

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/16 v0, 0x1000

    new-array v0, v0, [C
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_2f

    :goto_11
    :try_start_11
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/Writer;->write([CII)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_26

    goto :goto_11

    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_24

    :try_start_20
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2f

    return-void

    :catchall_24
    move-exception v0

    goto :goto_2b

    :catchall_26
    move-exception v0

    :try_start_27
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_24

    :goto_2b
    :try_start_2b
    invoke-virtual {p1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    sget-boolean v1, Labcd/ve;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, -0x67f245ffbb7d3333L  # -8.144370818973714E-193

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    goto :goto_42

    :goto_41
    throw v0

    :goto_42
    goto :goto_41
.end method
